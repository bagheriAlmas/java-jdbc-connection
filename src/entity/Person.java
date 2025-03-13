package entity;

import java.io.Serializable;

public class Person implements Serializable {
    private int id;
    private String firstName;
    private String lastName;
    private String nationalId;

    public Person() {
    }

    public Person(int id, String firstName, String lastName, String nationalId) {
        this.id = id;
        this.firstName = firstName;
        this.lastName = lastName;
        this.nationalId = nationalId;
    }

    public int getId() {
        return id;
    }

    public Person setId(int id) {
        this.id = id;
        return this;
    }

    public String getFirstName() {
        return firstName;
    }

    public Person setFirstName(String firstName) {
        this.firstName = firstName;
        return this;
    }

    public String getLastName() {
        return lastName;
    }

    public Person setLastName(String lastName) {
        this.lastName = lastName;
        return this;
    }

    public String getNationalId() {
        return nationalId;
    }

    public Person setNationalId(String nationalId) {
        this.nationalId = nationalId;
        return this;
    }
}
