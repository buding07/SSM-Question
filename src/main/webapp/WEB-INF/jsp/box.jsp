<%--
  Created by IntelliJ IDEA.
  User: 双双星恋
  Date: 2022/8/20
  Time: 18:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body style="margin: 30px">
<h1>弹性盒子模型</h1>
<br>
<h3>div默认垂直排列</h3>
<div style="height: 220px;background: #d0d0d0" >
    <div style="background: #00a2d4 ;height: 50px;width: 50px;line-height: 50px; color: #FFFFFF;text-align: center">1</div>
    <div style="background: #d400bf ;height: 50px;width: 50px;line-height: 50px; color: #FFFFFF;text-align: center">2</div>
    <div style="background: #d4003c ;height: 50px;width: 50px;line-height: 50px; color: #FFFFFF;text-align: center">3</div>
    <div style="background: #78d920 ;height: 50px;width: 50px;line-height: 50px; color: #FFFFFF;text-align: center">4</div>
</div>

<h3>div变成弹性盒子模型，子元素将横向排列</h3>
<div style="height: 220px;background: #d0d0d0;display: flex"  >
    <div style="background: #00a2d4 ;height: 50px;width: 50px;line-height: 50px; color: #FFFFFF;text-align: center">1</div>
    <div style="background: #d400bf ;height: 50px;width: 50px;line-height: 50px; color: #FFFFFF;text-align: center">2</div>
    <div style="background: #d4003c ;height: 50px;width: 50px;line-height: 50px; color: #FFFFFF;text-align: center">3</div>
    <div style="background: #78d920 ;height: 50px;width: 50px;line-height: 50px; color: #FFFFFF;text-align: center">4</div>
</div>

<h3>div变成弹性盒子模型，子元素将横向排列</h3>
<div style="height: 220px;background: #d0d0d0;display: flex;flex-direction: row"  >
    <div style="background: #00a2d4 ;height: 50px;width: 50px;line-height: 50px; color: #FFFFFF;text-align: center">1</div>
    <div style="background: #d400bf ;height: 50px;width: 50px;line-height: 50px; color: #FFFFFF;text-align: center">2</div>
    <div style="background: #d4003c ;height: 50px;width: 50px;line-height: 50px; color: #FFFFFF;text-align: center">3</div>
    <div style="background: #78d920 ;height: 50px;width: 50px;line-height: 50px; color: #FFFFFF;text-align: center">4</div>
</div>

<h3>div变成弹性盒子模型，子元素纵向排列</h3>
<div style="height: 220px;background: #d0d0d0;display: flex;flex-direction:column"  >
    <div style="background: #00a2d4 ;height: 50px;width: 50px;line-height: 50px; color: #FFFFFF;text-align: center">1</div>
    <div style="background: #d400bf ;height: 50px;width: 50px;line-height: 50px; color: #FFFFFF;text-align: center">2</div>
    <div style="background: #d4003c ;height: 50px;width: 50px;line-height: 50px; color: #FFFFFF;text-align: center">3</div>
    <div style="background: #78d920 ;height: 50px;width: 50px;line-height: 50px; color: #FFFFFF;text-align: center">4</div>
</div>

<h3>div变成弹性盒子模型，子元素主轴对齐方式</h3>
<div style="height: 220px;background: #d0d0d0;display: flex;justify-content: flex-start"  >
    <div style="background: #00a2d4 ;height: 50px;width: 50px;line-height: 50px; color: #FFFFFF;text-align: center">1</div>
    <div style="background: #d400bf ;height: 50px;width: 50px;line-height: 50px; color: #FFFFFF;text-align: center">2</div>
    <div style="background: #d4003c ;height: 50px;width: 50px;line-height: 50px; color: #FFFFFF;text-align: center">3</div>
    <div style="background: #78d920 ;height: 50px;width: 50px;line-height: 50px; color: #FFFFFF;text-align: center">4</div>
</div>

<h3>div变成弹性盒子模型，子元素主轴对齐方式</h3>
<div style="height: 220px;background: #d0d0d0;display: flex;justify-content: center"  >
    <div style="background: #00a2d4 ;height: 50px;width: 50px;line-height: 50px; color: #FFFFFF;text-align: center">1</div>
    <div style="background: #d400bf ;height: 50px;width: 50px;line-height: 50px; color: #FFFFFF;text-align: center">2</div>
    <div style="background: #d4003c ;height: 50px;width: 50px;line-height: 50px; color: #FFFFFF;text-align: center">3</div>
    <div style="background: #78d920 ;height: 50px;width: 50px;line-height: 50px; color: #FFFFFF;text-align: center">4</div>
</div>

<h3>div变成弹性盒子模型，子元素主轴对齐方式====justify-content: flex-end </h3>
<div style="height: 220px;background: #d0d0d0;display: flex;justify-content: flex-end"  >
    <div style="background: #00a2d4 ;height: 50px;width: 50px;line-height: 50px; color: #FFFFFF;text-align: center">1</div>
    <div style="background: #d400bf ;height: 50px;width: 50px;line-height: 50px; color: #FFFFFF;text-align: center">2</div>
    <div style="background: #d4003c ;height: 50px;width: 50px;line-height: 50px; color: #FFFFFF;text-align: center">3</div>
    <div style="background: #78d920 ;height: 50px;width: 50px;line-height: 50px; color: #FFFFFF;text-align: center">4</div>
</div>

<h3>div变成弹性盒子模型，子元素交叉轴====align-items: flex-start</h3>
<div style="height: 220px;background: #d0d0d0;display: flex;align-items: flex-start"  >
    <div style="background: #00a2d4 ;height: 50px;width: 50px;line-height: 50px; color: #FFFFFF;text-align: center">1</div>
    <div style="background: #d400bf ;height: 50px;width: 50px;line-height: 50px; color: #FFFFFF;text-align: center">2</div>
    <div style="background: #d4003c ;height: 50px;width: 50px;line-height: 50px; color: #FFFFFF;text-align: center">3</div>
    <div style="background: #78d920 ;height: 50px;width: 50px;line-height: 50px; color: #FFFFFF;text-align: center">4</div>
</div>

<h3>div变成弹性盒子模型，子元素交叉轴=====align-items: center</h3>
<div style="height: 220px;background: #d0d0d0;display: flex;align-items: center"  >
    <div style="background: #00a2d4 ;height: 50px;width: 50px;line-height: 50px; color: #FFFFFF;text-align: center">1</div>
    <div style="background: #d400bf ;height: 50px;width: 50px;line-height: 50px; color: #FFFFFF;text-align: center">2</div>
    <div style="background: #d4003c ;height: 50px;width: 50px;line-height: 50px; color: #FFFFFF;text-align: center">3</div>
    <div style="background: #78d920 ;height: 50px;width: 50px;line-height: 50px; color: #FFFFFF;text-align: center">4</div>
</div>

<h3>div变成弹性盒子模型，子元素交叉轴=====align-items: flex-end</h3>
<div style="height: 220px;background: #d0d0d0;display: flex;align-items: flex-end"  >
    <div style="background: #00a2d4 ;height: 50px;width: 50px;line-height: 50px; color: #FFFFFF;text-align: center">1</div>
    <div style="background: #d400bf ;height: 50px;width: 50px;line-height: 50px; color: #FFFFFF;text-align: center">2</div>
    <div style="background: #d4003c ;height: 50px;width: 50px;line-height: 50px; color: #FFFFFF;text-align: center">3</div>
    <div style="background: #78d920 ;height: 50px;width: 50px;line-height: 50px; color: #FFFFFF;text-align: center">4</div>
</div>

<h3>div变成弹性盒子模型，子元素交叉轴====align-items: center;justify-content: center</h3>
<div style="height: 220px;background: #d0d0d0;display: flex;align-items: center;justify-content: center" >
    <div style="background: #00a2d4 ;height: 50px;width: 50px;line-height: 50px; color: #FFFFFF;text-align: center">1</div>
    <div style="background: #d400bf ;height: 50px;width: 50px;line-height: 50px; color: #FFFFFF;text-align: center">2</div>
    <div style="background: #d4003c ;height: 50px;width: 50px;line-height: 50px; color: #FFFFFF;text-align: center">3</div>
    <div style="background: #78d920 ;height: 50px;width: 50px;line-height: 50px; color: #FFFFFF;text-align: center">4</div>
</div>

<h3>div变成弹性盒子模型，子元素交叉轴=====justify-content: space-around</h3>
<div style="height: 220px;background: #d0d0d0;display: flex;justify-content: space-around"  >
    <div style="background: #00a2d4 ;height: 50px;width: 50px;line-height: 50px; color: #FFFFFF;text-align: center">1</div>
    <div style="background: #d400bf ;height: 50px;width: 50px;line-height: 50px; color: #FFFFFF;text-align: center">2</div>
    <div style="background: #d4003c ;height: 50px;width: 50px;line-height: 50px; color: #FFFFFF;text-align: center">3</div>
    <div style="background: #78d920 ;height: 50px;width: 50px;line-height: 50px; color: #FFFFFF;text-align: center">4</div>
</div>

<h3>div变成弹性盒子模型，子元素交叉轴=====justify-content: space-between</h3>
<div style="height: 220px;background: #d0d0d0;display: flex;justify-content: space-between"  >
    <div style="background: #00a2d4 ;height: 50px;width: 50px;line-height: 50px; color: #FFFFFF;text-align: center">1</div>
    <div style="background: #d400bf ;height: 50px;width: 50px;line-height: 50px; color: #FFFFFF;text-align: center">2</div>
    <div style="background: #d4003c ;height: 50px;width: 50px;line-height: 50px; color: #FFFFFF;text-align: center">3</div>
    <div style="background: #78d920 ;height: 50px;width: 50px;line-height: 50px; color: #FFFFFF;text-align: center">4</div>
</div>

</body>
</html>
