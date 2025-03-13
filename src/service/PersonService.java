package service;

import entity.Person;

import java.util.List;

public interface PersonService {
    Person getPersonById(int id) throws Exception;
    List<Person> getPersons() throws Exception;
    void addPerson(Person person) throws Exception;
    void updatePerson(Person person) throws Exception;
    void deletePerson(Person person) throws Exception;
}
