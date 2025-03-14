package controller;

import entity.Person;
import service.PersonService;
import service.PersonServiceImpl;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/person/find.do")
public class FindPersonServlet extends HttpServlet {

    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) {
        final PersonService personService = PersonServiceImpl.getInstance();
        try {
            int id = Integer.parseInt(req.getParameter("id"));
            Person person = personService.getPersonById(id);
            req.setAttribute("person", person);
            req.getRequestDispatcher("../person-details.jsp").forward(req, resp);
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }
}
