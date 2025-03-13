package service;

import entity.Person;
import repository.PersonRepository;

import java.util.List;

public class PersonServiceImpl implements PersonService {
    private static final PersonServiceImpl PERSON_SERVICE = new PersonServiceImpl();

    private PersonServiceImpl() {
    }

    public static PersonServiceImpl getPersonService() {
        return PERSON_SERVICE;
    }

    @Override
    public Person getPersonById(int id) throws Exception {
        try (PersonRepository repository = new PersonRepository()) {
            return repository.getById(id);
        }
    }

    @Override
    public List<Person> getPersons() throws Exception {
        try (PersonRepository repository = new PersonRepository()) {
            return repository.getAll();
        }
    }

    @Override
    public void addPerson(Person person) throws Exception {
        try (PersonRepository repository = new PersonRepository()) {
            repository.insert(person);
        }
    }

    @Override
    public void updatePerson(Person person) throws Exception {
        try (PersonRepository repository = new PersonRepository()) {
             repository.update(person);
        }
    }

    @Override
    public void deletePerson(Person person) throws Exception {
        try (PersonRepository repository = new PersonRepository()) {
            repository.delete(person);
        }
    }
}
