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
    <style type="text/css">
        .page-header{
            background: lightgray;
            /*margin-top: -20px;*/
        }
    </style>
</head>
<body>
<style type="text/css">

    .close{position: absolute;top:170px;left: 200px;}
</style>
<div class="page-header">
    <h1>阳光街道<small>返赣人员信息登记</small></h1>
</div>
 <p><a href = "JavaScript:void(0)" onclick = "openDialog()" class="btn btn-primary">添加用户</a></p>
 <div id="light" class="white_content" style="display:none">
     <table>
    <form action="${pageContext.request.contextPath }/stu/add"  ><br>
            名字:<input class="form-control" placeholder="名字"  id="name" type="text" name="name">
            年龄:<input class="form-control" placeholder="年龄"  id="age" type="text" name="age">
            地址:<input class="form-control" placeholder="地址"  id="addr1" type="text" name="addr1">
            出发地:<input class="form-control" placeholder="出发地"  id="addr" type="text" name="addr">
        <button type="submit" class="btn btn-success">提交</button>
    </form>
         <button  onclick="closeDialog()" class="btn btn-danger">关闭</button>

     </table>

     </div>



<%--<a href="${pageContext.request.contextPath }/stu/goToAdd"><button type="button" class="btn btn-success">添加学生</button></a>--%>


<table class="table table-striped   table table-hover" >
        <td>id</td>
        <td>姓名</td>
        <td>年龄</td>
        <td>地址</td>
        <td>出发地</td>
        <td colspan="2">操作</td>
    </tr>

    <c:forEach items="${stuList }" var="stu" >
            <td>${stu.id }</td>
            <td>${stu.name }</td>
            <td>${stu.age }</td>
            <td>${stu.addr1}</td>
            <td>${stu.addr}</td>
            <td><a href="${pageContext.request.contextPath }/stu/goToUpdate?id=${stu.id }">修改</a></td>
            <td><a href="${pageContext.request.contextPath }/stu/del?id=${stu.id }">删除</a></td>
        </tr>
    </c:forEach>
</table>
</body>
<script type="text/javascript">

    (function(){

    })

    function openDialog(){

        document.getElementById('light').style.display='block';

        document.getElementById('fade').style.display='block'

    }

    function closeDialog(){

        document.getElementById('light').style.display='none';

        document.getElementById('fade').style.display='none'

    }

</script>
</html>
