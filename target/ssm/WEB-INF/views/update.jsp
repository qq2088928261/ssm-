<%@ page contentType="text/html;charset=utf-8" language="java"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%--bootstrap的引用--%>
<!-- 最新的jquery本地文件，必须在引入bootstrap之前引入 -->
<script src="webjars/jquery/3.4.1/dist/jquery-3.4.1.min.js"></script>
<!-- 最新版本的 Bootstrap 核心 CSS 文件 -->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" integrity="sha384-HSMxcRTRxnN+Bdg0JdbxYKrThecOKuH5zCYotlSAcp1+c8xmyTe9GYg1l9a69psu" crossorigin="anonymous">
<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
<script src="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js" integrity="sha384-aJ21OjlMXNL5UyIl/XNwTMqvzeRMZH2w8c5cRVpzpU8Y5bApTppSuUkhZXN0VxHd" crossorigin="anonymous"></script>

<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Insert title here</title>
</head>
<body>

<form action="${pageContext.request.contextPath }/stu/update"  >
    id:<input type="text" class="form-control" name="id" value="${stu.id}" readonly="readonly">
    名字:<input id="name" type="text" class="form-control" placeholder="名字"  name="name" value="${stu.name}">
    年龄:<input id="age" type="text" class="form-control" placeholder="年龄"  name="age" value="${stu.age}">
    地址:<input id="addr1" type="text" class="form-control" placeholder="地址"  name="addr1" value="${stu.addr1}">
    出发地:<input id="addr" type="text" class="form-control" placeholder="出发地"  name="addr" value="${stu.addr}">
    <button type="submit" class="btn btn-success">提交</button>
</form>
