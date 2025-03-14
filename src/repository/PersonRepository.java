package repository;

import entity.Person;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class PersonRepository implements AutoCloseable {
    private Connection connection;
    private PreparedStatement preparedStatement;

    public PersonRepository() throws Exception {
        Class.forName("oracle.jdbc.driver.OracleDriver");
        connection = DriverManager.getConnection("jdbc:oracle:thin:@//localhost:1521/ORCLPDB1", "mahdi", "myjava123");
        connection.setAutoCommit(false);
    }

    public void insert(Person person) throws Exception {
        preparedStatement = connection.prepareStatement(
                "INSERT INTO PERSON(ID, FIRST_NAME, LAST_NAME, NATIONAL_ID) VALUES(?, ?, ?, ?)");
        preparedStatement.setInt(1, getIdFromSequence());
        preparedStatement.setString(2, person.getFirstName());
        preparedStatement.setString(3, person.getLastName());
        preparedStatement.setString(4, person.getNationalId());
        preparedStatement.executeUpdate();
    }

    public void update(Person person) throws Exception {
        preparedStatement = connection.prepareStatement(
                "UPDATE PERSON SET FIRST_NAME = ?, LAST_NAME = ?, NATIONAL_ID = ? WHERE ID = ?");
        preparedStatement.setString(1, person.getFirstName());
        preparedStatement.setString(2, person.getLastName());
        preparedStatement.setString(3, person.getNationalId());
        preparedStatement.setInt(4, person.getId());
        preparedStatement.executeUpdate();
    }

    public void delete(Person person) throws Exception {
        preparedStatement = connection.prepareStatement("DELETE FROM PERSON WHERE ID = ?");
        preparedStatement.setInt(1, person.getId());
        preparedStatement.executeUpdate();
    }

    public List<Person> getAll() throws Exception {
        preparedStatement = connection.prepareStatement("SELECT * FROM PERSON");
        ResultSet resultSet = preparedStatement.executeQuery();
        List<Person> personList = new ArrayList<>();
        while (resultSet.next()) {
            personList.add(new Person()
                    .setId(resultSet.getInt(1))
                    .setFirstName(resultSet.getString(2))
                    .setLastName(resultSet.getString(3))
                    .setNationalId(resultSet.getString(4)));
        }
        resultSet.close();
        return personList;
    }

    public Person getById(int id) throws Exception {
        preparedStatement = connection.prepareStatement("SELECT * FROM PERSON WHERE ID = ?");
        preparedStatement.setInt(1, id);
        ResultSet resultSet = preparedStatement.executeQuery();
        if (resultSet.next()) {
            return new Person()
                    .setId(resultSet.getInt(1))
                    .setFirstName(resultSet.getString(2))
                    .setLastName(resultSet.getString(3))
                    .setNationalId(resultSet.getString(4));
        }
        resultSet.close();
        return null;
    }

    private int getIdFromSequence() throws Exception {
        PreparedStatement preparedStatement = connection.prepareStatement("SELECT PERSON_SEQ.NEXTVAL FROM DUAL");
        ResultSet resultSet = preparedStatement.executeQuery();
        resultSet.next();
        int id = resultSet.getInt(1);
        preparedStatement.close();
        return id;
    }

    public void commit() throws Exception {
        connection.commit();
    }

    @Override
    public void close() throws Exception {
        preparedStatement.close();
        connection.close();
    }
}
