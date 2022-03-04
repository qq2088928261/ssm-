<%@ page contentType="text/html;charset=utf-8" language="java"%>
<%--bootstrap的引用--%>
<!-- 最新的jquery本地文件，必须在引入bootstrap之前引入 -->
<script src="webjars/jquery/3.4.1/dist/jquery-3.4.1.min.js"></script>
<!-- 最新版本的 Bootstrap 核心 CSS 文件 -->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" integrity="sha384-HSMxcRTRxnN+Bdg0JdbxYKrThecOKuH5zCYotlSAcp1+c8xmyTe9GYg1l9a69psu" crossorigin="anonymous">
<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
<script src="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js" integrity="sha384-aJ21OjlMXNL5UyIl/XNwTMqvzeRMZH2w8c5cRVpzpU8Y5bApTppSuUkhZXN0VxHd" crossorigin="anonymous"></script>
<html>
<head>
    <title>Title</title>
    <meta charset="utf-8">
    <style type="text/css">
        .container-fluid {
            padding-right: 15px;
            padding-left: 15px;
            margin-right: auto;
            margin-left: auto;
        }
    </style>
</head>

<body>
<div class="jumbotron">
    <div class="container-fluid">
    <h1>疫情防控人人有责</h1><p><a class="btn btn-primary btn-lg" href="${pageContext.request.contextPath }/stu/list" role="button">返赣人员请点击下方填写个人信息</a></p>
    </div>
    </div>
</body>
</html>
