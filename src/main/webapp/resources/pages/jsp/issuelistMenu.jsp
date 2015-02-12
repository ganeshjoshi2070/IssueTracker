<%--
  Created by IntelliJ IDEA.
  User: acer
  Date: 1/27/2015
  Time: 2:33 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
  <link href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" rel="stylesheet" >
  <link href="${pageContext.request.contextPath}/resources/css/login.css" rel="stylesheet" >
  <link href="${pageContext.request.contextPath}/resources/css/bootstrap.css" rel="stylesheet" >
  <title>IssueTracker</title>
  <style>
    body {
      font-size: 20px;
      color: teal;
      font-family: Calibri;
    }

    td {
      font-size: 15px;
      color: black;
      width: 100px;
      height: 22px;
      text-align: center;
    }
    .heading {
      font-size: 18px;
      color: white;
      font: bold;
      background-color: orange;
      border: thick;
    }
  </style>
</head>
<body>
<center>

  <div class="navbar navbar-inverse">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-inverse-collapse">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="/home">Show Users</a>
    </div>
    <div class="navbar-collapse collapse navbar-inverse-collapse">
      <ul class="nav navbar-nav">
        <li class="active"><a href="getIssueListMenu">Show Issues List</a></li>
      </ul>
      <form class="navbar-form navbar-left">
        <input type="text" class="form-control col-lg-8" placeholder="Search">
      </form>
      <ul class="nav navbar-nav navbar-right">
        <li><a href="/eventHome">Home</a></li>
        <li><a href="/logout">Logout</a></li>

        </li>
      </ul>
    </div>
  </div>

  <b>All Issues Registered </b>


  <table border="1">
    <tr>
      <td class="heading">Issue Registered Id</td>
      <td class="heading">Issue Name</td>
      <td class="heading">Service Name</td>
      <td class="heading">Issue Date</td>
      <td class="heading">Customer Name</td>
      <td class="heading">Created By</td>
      <td class="heading">Status</td>
      <td class="heading">Issue History</td>



    </tr>
    <c:forEach var="user" items="${issueList}">
      <tr>
        <td>${user.issue_tracker_id}</td>
        <td>${user.issuename}</td>
        <td>${user.servicename}</td>
        <td>${user.issuedate}</td>
        <td>${user.customername}</td>
        <td>${user.createdby}</td>
        <c:choose>
          <c:when test="${user.status=='NEWISSUE'}">
            <td><a href="/showUserToAssignIssue?issue_tracker_id=${user.issue_tracker_id}&ad=${user.issuedate}">NewIssue</a></td>
          </c:when>
          <c:otherwise>
            <td>${user.status}</td>
          </c:otherwise>
        </c:choose>
        <c:choose>
          <c:when test="${user.status=='NEWISSUE'&& remark.remarks=='Transfer'}">
            <td>null</td>
          </c:when>
          <c:otherwise>
            <td><a href="viewHistory?id=${user.issue_tracker_id}">View Issue History</a></td>
          </c:otherwise>
        </c:choose>



      </tr>
    </c:forEach>
  </table>

</center>
</body>
</html>
