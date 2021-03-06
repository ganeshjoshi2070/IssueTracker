package com.issuetracker.mvc.controller.usercontroller;

import com.issuetracker.mvc.model.AssignEvent;
import com.issuetracker.mvc.model.User;
import com.issuetracker.mvc.service.eventservice.EventService;
import com.issuetracker.mvc.service.userservice.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.sql.SQLException;
import java.util.List;

/**
 * Created by acer on 1/26/2015.
 */
@Controller
public class HomeUserController {
    @Autowired
    UserService userService;
    @Autowired
    EventService eventService;

    @RequestMapping(value = "/home", method = RequestMethod.GET)
    public ModelAndView all(@ModelAttribute("username") User user, ModelMap model, HttpServletRequest request, HttpSession session) throws SQLException, ClassNotFoundException {
        HttpSession session1 = request.getSession();

        if (session1.getAttribute("result") != null) {
            User us=(User)session1.getAttribute("result");
                List<User> userList = userService.getUserList();
                List<AssignEvent> assignedEvent=eventService.getUserAssignedList(us.getUser_id());
//                return new ModelAndView("welcome", "username", userList);
                return new ModelAndView("eventAssignList", "assigndetail", assignedEvent);

            }
            else{
                return new ModelAndView("login");
            }
        }
    }
