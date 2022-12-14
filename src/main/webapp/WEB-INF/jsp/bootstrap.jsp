<%--
  Created by IntelliJ IDEA.
  User: lcy
  Date: 2021-08-19
  Time: 12:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="../../lib/bootstrap/bootstrap.min.css" media="all">
</head>
<body class="m-4">
<h3>bootstrap弹性盒子模型测试</h3>
<br>
<h5>div默认是垂直排列</h5>
<div style="background-color:#d0d0d0;height: 220px ">
    <div class="bg-primary" style="color: #FFF;height: 50px;width: 50px;line-height: 50px;text-align: center;">1</div>
    <div class="bg-danger" style="color: #FFF;height: 50px;width: 50px;line-height: 50px;text-align: center;">2</div>
    <div class="bg-dark" style="color: #FFF;height: 50px;width: 50px;line-height: 50px;text-align: center;">3</div>
    <div class="bg-info" style="color: #FFF;height: 50px;width: 50px;line-height: 50px;text-align: center;">4</div>
</div>
<br>
<h5>div变成一个弹性盒子模型 (class="d-flex")</h5>
<div class="d-flex" style="background-color:#d0d0d0;height: 220px ">
    <div class="bg-primary" style="color: #FFF;height: 50px;width: 50px;line-height: 50px;text-align: center;">1</div>
    <div class="bg-danger" style="color: #FFF;height: 50px;width: 50px;line-height: 50px;text-align: center;">2</div>
    <div class="bg-dark" style="color: #FFF;height: 50px;width: 50px;line-height: 50px;text-align: center;">3</div>
    <div class="bg-info" style="color: #FFF;height: 50px;width: 50px;line-height: 50px;text-align: center;">4</div>
</div>
<br>
<h5>div变成一个弹性盒子模型 (class="d-flex flex-row")，水平排列</h5>
<div class="d-flex flex-row" style="background-color:#d0d0d0;height: 220px ">
    <div class="bg-primary" style="color: #FFF;height: 50px;width: 50px;line-height: 50px;text-align: center;">1</div>
    <div class="bg-danger" style="color: #FFF;height: 50px;width: 50px;line-height: 50px;text-align: center;">2</div>
    <div class="bg-dark" style="color: #FFF;height: 50px;width: 50px;line-height: 50px;text-align: center;">3</div>
    <div class="bg-info" style="color: #FFF;height: 50px;width: 50px;line-height: 50px;text-align: center;">4</div>
</div>
<br>
<h5>div变成一个弹性盒子模型 (class="d-flex flex-row")，垂直排列</h5>
<div class="d-flex flex-column" style="background-color:#d0d0d0;height: 220px ">
    <div class="bg-primary" style="color: #FFF;height: 50px;width: 50px;line-height: 50px;text-align: center;">1</div>
    <div class="bg-danger" style="color: #FFF;height: 50px;width: 50px;line-height: 50px;text-align: center;">2</div>
    <div class="bg-dark" style="color: #FFF;height: 50px;width: 50px;line-height: 50px;text-align: center;">3</div>
    <div class="bg-info" style="color: #FFF;height: 50px;width: 50px;line-height: 50px;text-align: center;">4</div>
</div>
<br>
<h3>主轴的对齐方式：左对齐、居中对齐、右对齐</h3>
<br>
<h5>div变成一个弹性盒子模型 (class="d-flex justify-content-start")，左对齐</h5>
<div class="d-flex justify-content-start" style="background-color:#d0d0d0;height: 220px ">
    <div class="bg-primary" style="color: #FFF;height: 50px;width: 50px;line-height: 50px;text-align: center;">1</div>
    <div class="bg-danger" style="color: #FFF;height: 50px;width: 50px;line-height: 50px;text-align: center;">2</div>
    <div class="bg-dark" style="color: #FFF;height: 50px;width: 50px;line-height: 50px;text-align: center;">3</div>
    <div class="bg-info" style="color: #FFF;height: 50px;width: 50px;line-height: 50px;text-align: center;">4</div>
</div>
<br>
<h5>div变成一个弹性盒子模型 (class="d-flex justify-content-center")，居中对齐</h5>
<div class="d-flex justify-content-center" style="background-color:#d0d0d0;height: 220px ">
    <div class="bg-primary" style="color: #FFF;height: 50px;width: 50px;line-height: 50px;text-align: center;">1</div>
    <div class="bg-danger" style="color: #FFF;height: 50px;width: 50px;line-height: 50px;text-align: center;">2</div>
    <div class="bg-dark" style="color: #FFF;height: 50px;width: 50px;line-height: 50px;text-align: center;">3</div>
    <div class="bg-info" style="color: #FFF;height: 50px;width: 50px;line-height: 50px;text-align: center;">4</div>
</div>
<br>
<h5>div变成一个弹性盒子模型 (class="d-flex justify-content-end")，右对齐</h5>
<div class="d-flex justify-content-end" style="background-color:#d0d0d0;height: 220px ">
    <div class="bg-primary" style="color: #FFF;height: 50px;width: 50px;line-height: 50px;text-align: center;">1</div>
    <div class="bg-danger" style="color: #FFF;height: 50px;width: 50px;line-height: 50px;text-align: center;">2</div>
    <div class="bg-dark" style="color: #FFF;height: 50px;width: 50px;line-height: 50px;text-align: center;">3</div>
    <div class="bg-info" style="color: #FFF;height: 50px;width: 50px;line-height: 50px;text-align: center;">4</div>
</div>
<h5>div变成一个弹性盒子模型 (class="d-flex justify-content-around")，环绕对齐</h5>
<div class="d-flex justify-content-around" style="background-color:#d0d0d0;height: 220px ">
    <div class="bg-primary" style="color: #FFF;height: 50px;width: 50px;line-height: 50px;text-align: center;">1</div>
    <div class="bg-danger" style="color: #FFF;height: 50px;width: 50px;line-height: 50px;text-align: center;">2</div>
    <div class="bg-dark" style="color: #FFF;height: 50px;width: 50px;line-height: 50px;text-align: center;">3</div>
    <div class="bg-info" style="color: #FFF;height: 50px;width: 50px;line-height: 50px;text-align: center;">4</div>
</div>
<h5>div变成一个弹性盒子模型 (class="d-flex justify-content-between")，两端对齐</h5>
<div class="d-flex justify-content-between" style="background-color:#d0d0d0;height: 220px ">
    <div class="bg-primary" style="color: #FFF;height: 50px;width: 50px;line-height: 50px;text-align: center;">1</div>
    <div class="bg-danger" style="color: #FFF;height: 50px;width: 50px;line-height: 50px;text-align: center;">2</div>
    <div class="bg-dark" style="color: #FFF;height: 50px;width: 50px;line-height: 50px;text-align: center;">3</div>
    <div class="bg-info" style="color: #FFF;height: 50px;width: 50px;line-height: 50px;text-align: center;">4</div>
</div>
<br>
<h3>交叉轴的对齐方式：上对齐、居中对齐、下对齐</h3>
<br>
<h5>div变成一个弹性盒子模型 (class="d-flex align-items-start")，上对齐</h5>
<div class="d-flex align-items-start" style="background-color:#d0d0d0;height: 220px ">
    <div class="bg-primary" style="color: #FFF;height: 50px;width: 50px;line-height: 50px;text-align: center;">1</div>
    <div class="bg-danger" style="color: #FFF;height: 50px;width: 50px;line-height: 50px;text-align: center;">2</div>
    <div class="bg-dark" style="color: #FFF;height: 50px;width: 50px;line-height: 50px;text-align: center;">3</div>
    <div class="bg-info" style="color: #FFF;height: 50px;width: 50px;line-height: 50px;text-align: center;">4</div>
</div>
<br>
<h5>div变成一个弹性盒子模型 (class="d-flex align-items-center")，居中对齐</h5>
<div class="d-flex align-items-center" style="background-color:#d0d0d0;height: 220px ">
    <div class="bg-primary" style="color: #FFF;height: 50px;width: 50px;line-height: 50px;text-align: center;">1</div>
    <div class="bg-danger" style="color: #FFF;height: 50px;width: 50px;line-height: 50px;text-align: center;">2</div>
    <div class="bg-dark" style="color: #FFF;height: 50px;width: 50px;line-height: 50px;text-align: center;">3</div>
    <div class="bg-info" style="color: #FFF;height: 50px;width: 50px;line-height: 50px;text-align: center;">4</div>
</div>
<br>
<h5>div变成一个弹性盒子模型 (class="d-flex align-items-end")，下对齐</h5>
<div class="d-flex align-items-end" style="background-color:#d0d0d0;height: 220px ">
    <div class="bg-primary" style="color: #FFF;height: 50px;width: 50px;line-height: 50px;text-align: center;">1</div>
    <div class="bg-danger" style="color: #FFF;height: 50px;width: 50px;line-height: 50px;text-align: center;">2</div>
    <div class="bg-dark" style="color: #FFF;height: 50px;width: 50px;line-height: 50px;text-align: center;">3</div>
    <div class="bg-info" style="color: #FFF;height: 50px;width: 50px;line-height: 50px;text-align: center;">4</div>
</div>
<br>
<h3>水平、垂直居中对齐</h3>
<br>
<div class="d-flex align-items-center justify-content-center" style="background-color:#d0d0d0;height: 220px ">
    <div class="bg-primary" style="color: #FFF;height: 50px;width: 50px;line-height: 50px;text-align: center;">1</div>
    <div class="bg-danger" style="color: #FFF;height: 50px;width: 50px;line-height: 50px;text-align: center;">2</div>
    <div class="bg-dark" style="color: #FFF;height: 50px;width: 50px;line-height: 50px;text-align: center;">3</div>
    <div class="bg-info" style="color: #FFF;height: 50px;width: 50px;line-height: 50px;text-align: center;">4</div>
</div>
<br>
</body>
</html>
