package com.issuetracker.mvc.model;

/**
 * Created by acer on 1/27/2015.
 */
public class IssueModel {




    public int issue_tracker_id;
    private  String issuename;
    private String servicename;
    private String issuedate;
    private String customername;
    private String createdby;

    public int getIssue_tracker_id() {
        return issue_tracker_id;
    }

    public void setIssue_tracker_id(int issue_tracker_id) {
        this.issue_tracker_id = issue_tracker_id;
    }
    public String getIssuename() {
        return issuename;
    }

    public void setIssuename(String issuename) {
        this.issuename = issuename;
    }

    public String getServicename() {
        return servicename;
    }

    public void setServicename(String servicename) {
        this.servicename = servicename;
    }

    public String getIssuedate() {
        return issuedate;
    }

    public void setIssuedate(String issuedate) {
        this.issuedate = issuedate;
    }

    public String getCustomername() {
        return customername;
    }

    public void setCustomername(String customername) {
        this.customername = customername;
    }

    public String getCreatedby() {
        return createdby;
    }

    public void setCreatedby(String createdby) {
        this.createdby = createdby;
    }


}
