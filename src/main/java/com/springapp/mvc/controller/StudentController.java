package com.springapp.mvc.controller;

import com.springapp.mvc.model.Student;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

/**
 * Created by acer on 1/21/2015.
 */
@Controller
public class StudentController {
    @RequestMapping(value = "/student" ,method = RequestMethod.GET)
    public ModelAndView student(){
        return new ModelAndView("student","command",new Student());
    }


@RequestMapping(value = "/addStudent",method = RequestMethod.POST)
public String addStudent(@ModelAttribute("SpringWeb")Student student,ModelMap model){
    model.addAttribute("age",student.getAge());
    model.addAttribute("name",student.getName());
    model.addAttribute("id",student.getId());
    return "result";
}
}

