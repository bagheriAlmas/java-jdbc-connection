package controller;

import entity.Person;
import service.PersonService;
import service.PersonServiceImpl;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/person/delete.do")
public class DeletePersonServlet extends HttpServlet {

    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) {
        final PersonService personService = PersonServiceImpl.getInstance();
        try {
            Person person = new Person().setId(Integer.parseInt(req.getParameter("id")));

            personService.deletePerson(person);
            resp.sendRedirect("/person/findAll.do");
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }
}
