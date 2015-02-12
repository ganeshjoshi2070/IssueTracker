<%--
  Created by IntelliJ IDEA.
  User: acer
  Date: 1/21/2015
  Time: 11:01 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="C" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
  <title>IssueTracker</title>
  <link href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" rel="stylesheet">
  <link href="${pageContext.request.contextPath}/resources/css/bootstrap.css" rel="stylesheet" >
  <style>
    #next {
      position: absolute;
      right: 17%;
    }
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
      background-color: orange;
      color: white;
      text-align: center;
    }
  </style>
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
        <li><a href="/eventHome">Home[ Welcome ${name1}]</a></li>
        <li><a href="/logout">Logout</a></li>

        </li>
      </ul>
    </div>
  </div>
  <c:choose>
  <c:when test="${role=='ADMIN'}">
  <h1>Add New Users To The System</h1>
  <div>
    <form method="post" action="/add">

      <tr>
        <td><label>Name</label></td>
        <td><input type="text"   name="name" required=""/></td>
        <td><label>Username</label></td>
        <td><input type="text"  name="username" required=""/></td>
        <td><label>Password</label></td>
        <td><input type="text"  name="password" required=""/></td>
      </tr>



      <td><input type="submit" value="Submit"></td>



      </table>
    </form>
  </div>

<h2>esewa new Members</h2>
<table border="1">
  <thead>

    <th class="heading">ID</th>
    <th class="heading">name</th>
    <th class="heading">Username</th>
    <th class="heading">password</th>
    <th  class="heading">created_date</th>
    <th  class="heading">status</th>
    <th  class="heading" colspan=2>Action</th>
    <th class="heading">Use This User</th>

  </thead>

  <tbody>

  <c:forEach items="${username}" var="user">
    <tr>
      <td><c:out value="${user.user_id}" /></td>
      <td><c:out value="${user.name}" /></td>
      <td><c:out value="${user.username}" /></td>
      <td><c:out value="${user.password}" /></td>
      <td><c:out value="${user.created_date}" /></td>
      <td><c:out value="${user.status}" /></td>
      <td><a href="/update?id=${user.user_id}">Update</a></td>
      <c:choose>
        <c:when test="${user.status=='ACTIVE'}">
      <td><a href="/delete?id=${user.user_id }" onclick="return confirm('Are You sure you want to DEACTIVATE ')">DEACTIVATE</a></td>
        </c:when>
        <c:otherwise>
          <td><a href="/activate?id=${user.user_id }" onclick="return confirm('Are You sure you want to ACTIVATE ')">ACTIVATE</a></td>
        </c:otherwise>
      </c:choose>
      <td><a href="adminUserControl?id=${user.user_id}">Check Issues Of this User</a> </td>
    </tr>
  </c:forEach>

  </tbody>
</table>
<br/>
  </center>
</c:when>
<c:otherwise>
  <h2>esewa new Members</h2>
  <table border="1">
    <thead>
    <tr>
      <th class="heading">ID</th>
      <th class="heading">name</th>
      <th class="heading">Username</th>
      <th class="heading">password</th>
      <th  class="heading">created_date</th>
      <th  class="heading">status</th>
      <%--<td  class="heading" colspan=2>Action</th>--%>
    </tr>
    </thead>

    <tbody>

    <c:forEach items="${username}" var="user">
      <tr>
        <td><c:out value="${user.user_id}" /></td>
        <td><c:out value="${user.name}" /></td>
        <td><c:out value="${user.username}" /></td>
        <td><c:out value="${user.password}" /></td>
        <td><c:out value="${user.created_date}" /></td>
        <td><c:out value="${user.status}" /></td>
      </tr>
    </c:forEach>

    </tbody>
  </table>
  <br/>
</c:otherwise>
</c:choose>
</body>
</html>