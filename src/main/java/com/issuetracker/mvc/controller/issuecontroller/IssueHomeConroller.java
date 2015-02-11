package com.issuetracker.mvc.controller.issuecontroller;

import com.issuetracker.mvc.model.IssueModel;
import com.issuetracker.mvc.model.User;
import com.issuetracker.mvc.service.issueservice.IssueService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;
import java.util.List;

/**
 * Created by acer on 1/27/2015.
 */
@Controller
public class IssueHomeConroller {

    @Autowired
    IssueService issueService;

    @RequestMapping(value = "/registerIssue" ,method = RequestMethod.GET)
    public String registerUser(){
        return "registerIssue";
    }

    @RequestMapping("/getIssueList")
    public ModelAndView getUserList(Model model){

        List<IssueModel> issueList=issueService.getUserList();
        IssueModel issueModel=issueList.get(0);
        model.addAttribute("last",issueModel);
        return new ModelAndView("assignIssueList","issueList",issueList);
    }

    @RequestMapping(value = "/insertIssue",method = RequestMethod.POST)
    public String insert(@ModelAttribute IssueModel user){
        issueService.insertData(user);
        return "redirect:/getIssueListMenu";
    }


    @RequestMapping("/getIssueListMenu")
    public ModelAndView getUserListMenu(HttpSession session1,ModelMap model){
        if (session1.getAttribute("result") != null) {
            User us=(User)session1.getAttribute("result");
            String username=us.getUsername();
            model.addAttribute("name",username);
        List<IssueModel> issueList= issueService.getUserList();
        return new ModelAndView("issuelistMenu","issueList",issueList);
    }
        else{
        return new ModelAndView("login");
        }
    }

}
