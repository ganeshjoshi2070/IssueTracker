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
        <li class="active"><a href="getIssueList">Show Issues List</a></li>
        <li><a href="issueTrackList">View Event Record</a></li>
        <%--<li class="dropdown">--%>
        <%--<a href="#" class="dropdown-toggle" data-toggle="dropdown">Dropdown <b class="caret"></b></a>--%>
        <%--<ul class="dropdown-menu">--%>
        <%--<li><a href="#">Action</a></li>--%>
        <%--<li><a href="#">Another action</a></li>--%>
        <%--<li><a href="#">Something else here</a></li>--%>
        <%--<li class="divider"></li>--%>
        <%--<li class="dropdown-header">Dropdown header</li>--%>
        <%--<li><a href="#">Separated link</a></li>--%>
        <%--<li><a href="#">One more separated link</a></li>--%>
        <%--</ul>--%>
        <%--</li>--%>
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


    </tr>
    <c:forEach var="user" items="${issueList}">
      <tr>
        <td>${user.issue_tracker_id}</td>
        <td>${user.issuename}</td>
        <td>${user.servicename}</td>
        <td>${user.issuedate}</td>
        <td>${user.customername}</td>
        <td>${user.createdby}</td>


      </tr>
    </c:forEach>
  </table>

</center>
</body>
</html>