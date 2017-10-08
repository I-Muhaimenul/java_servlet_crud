<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>List of Users</title>
<style type="text/css"> 
table{
    margin-left: auto;
    margin-right: auto;
}
.button {
    display: block;
    width: 100px;
    height: 15px;
    background: #4E9CAF;
    padding: 10px;
    text-align: center;
    border-radius: 5px;
    color: white;
    font-weight: bold;
    margin-left: auto;
    margin-right: auto;
}
</style>
</head>
<body>
    <table border=1>
        <thead>
            <tr>
                <th>User Name</th>
                <th>Email</th>
                <th>Registration Date</th>
                <th colspan=2>Action</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach items="${users}" var="user">
                <tr>
                    <td><c:out value="${user.uname}" /></td>
                    <td><c:out value="${user.email}" /></td>
                    <td><fmt:formatDate pattern="dd MMM,yyyy" value="${user.registeredon}" /></td>
                    <td><a href="UserController?action=edit&userId=<c:out value="${user.uname}"/>">Update</a></td>
                    <td><a href="UserController?action=delete&userId=<c:out value="${user.uname}"/>">Delete</a></td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
    <p><a class="button" href="UserController?action=insert">Add User</a></p>
</body>
</html>