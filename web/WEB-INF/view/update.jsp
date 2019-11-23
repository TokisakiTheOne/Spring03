<%--
  Created by IntelliJ IDEA.
  User: YanYuHang
  Date: 2019/11/23
  Time: 15:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
          integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
</head>
<body>
<form:form action="/update" commandName="stu" method="put">
    <div class="form-group">
        <label>学生编号</label>
        <form:input path="id" cssClass="form-control"/>
    </div>
    <div class="form-group">
        <label>学生姓名</label>
        <form:input path="name" cssClass="form-control"/>
    </div>
    <div class="form-group">
        <label>学生年龄</label>
        <form:input path="age" cssClass="form-control"/>
    </div>
    <form:select path="country">
        <form:options items="${ct}"/>
    </form:select>

    <form:radiobutton path="sex" value="男" label="男"/>
    <form:radiobutton path="sex" value="女" label="女"/>


    <form:checkboxes path="play" items="${list}"></form:checkboxes>


    <button type="submit" class="btn btn-primary">Submit</button>


</form:form>
</body>
</html>
