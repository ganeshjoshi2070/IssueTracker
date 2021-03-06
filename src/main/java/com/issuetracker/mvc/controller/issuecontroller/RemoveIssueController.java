package com.issuetracker.mvc.controller.issuecontroller;

import com.issuetracker.mvc.service.issueservice.IssueService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

/**
 * Created by acer on 1/27/2015.
 */
@Controller
public class RemoveIssueController {
    @Autowired
    IssueService issueService;
    @RequestMapping(value = "/deleteIssue")
    public String deleteIssue(@RequestParam Integer id){
        issueService.deleteData(id);
        return "redirect:/getIssueList";
    }
}

