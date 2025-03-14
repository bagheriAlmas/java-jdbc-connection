package controller;

import entity.Person;
import service.PersonService;
import service.PersonServiceImpl;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;

@WebServlet("/person/findAll.do")
public class FindAllPersonServlet extends HttpServlet {

    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) {
        final PersonService personService = PersonServiceImpl.getInstance();
        try {
           List<Person> personList = personService.getPersons();
           req.setAttribute("personList", personList);
           req.getRequestDispatcher("../personList.jsp").forward(req, resp);
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }
}
