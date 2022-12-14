# SSM-Question
#### 基于Spring + Spring MVC + MyBatis + LayUI开发调查问卷【投票系统】实战视频教程


#### 第0讲 课程介绍与项目展示

##### 1、技术要点

1.1.1、前端知识：

​	html、css3 、javascript、jquery、Layui框架、Bootstrap4.x

1.1.2、后端知识：

​	java基础、Spring 、 Spring MVC 、MyBatis

1.1.3、数据库:

 	MySql5.7

1.2、学习收货：

​	1.2.1、掌握Layui框架开发后台页面的能力，从而深入理解Layui在后台管理系统中的开发流程；

​	1.2.2、掌握运用SSM整合开发后台接口的能力；

​	1.2.3、熟练掌握javascript、jquery在模板克隆方法的使用，对后期学习vue打下良好的基础；

​	1.2.4、最终学会用Layui、Spring 、Spring MVC 、MyBatis 从零开始搭建中小型项目的能力，从而更深入的理解系统中整个数据的流向，从哪里来，到哪里去；

​	1.2.3、掌握前端、后端的调试能力；



###### 2、教学方法：

​		全程手把手从零开发前端、后端



###### 3、课程目标：

​	掌握SSM开发中、小型项目开发的能力，打通前端、后端的数据流向、数据对接的能力；



##### 4、适合对象：

​    已学SSM框架的小伙伴、在校大学生做毕业设计



###### 5、项目演示：



#### 第01讲 项目创建

##### 1、开发环境

```ja
1、JDK1.8及以上
2、Maven 
3、IDEA 2020
4、MySql5.7
```

##### 2、课程目标

```js
掌握IDEA创建Web项目的能力；
```

##### 3、项目创建

###### 	3.1、打开IDEA开发工具，点击【File】,选择【New】，然后选择【Project】;如下图所示

![](images\1-1.png)

###### 	3.2、配置【New Project】选项

在【New Project】弹出框中，左侧选中【Maven】，Project SDK：选择JDK版本；勾选【Create from archetype】，然后选择【maven-archetype-webapp】;然后点击【Next】;如下图所示；

![](images\1-2.png)



###### 	3.3、创建项目

​	在【Name】: 输入项目的名称，【Location】 ：输入项目在自己电脑上存放的路径；【GroupId】：输入包名；其他选项不变；点击【Next】

![](images\1-3.png)



###### 	3.4、Maven配置

【Maven home directory】:选择Maven的安装路径 ；【User settings file】：选项Maven配置文件地址；【Local repository】:自己本地Maven仓库地址；

然后点击 【Finish】

![](images\1-4.png)

```js
 <mirror>
      <id>nexus-aliyun</id>
      <mirrorOf>central</mirrorOf>
      <name>Nexus aliyun</name>
      <url>http://maven.aliyun.com/nexus/content/groups/public</url>
  </mirror>
```



#### 第02讲 项目依赖引入与lombok插件安装

##### 1、引入依赖

```js
<dependencies>
    <!--Junit测试-->
    <dependency>
      <groupId>junit</groupId>
      <artifactId>junit</artifactId>
      <version>4.12</version>
      <scope>test</scope>
    </dependency>
    <!--mybatis核心jar包-->
    <dependency>
      <groupId>org.mybatis</groupId>
      <artifactId>mybatis</artifactId>
      <version>3.5.2</version>
    </dependency>
    <!--spring的核心容器jar包-->
    <dependency>
      <groupId>org.springframework</groupId>
      <artifactId>spring-context</artifactId>
      <version>5.1.9.RELEASE</version>
    </dependency>
    <!--Druid数据源-->
    <dependency>
      <groupId>com.alibaba</groupId>
      <artifactId>druid</artifactId>
      <version>1.1.20</version>
    </dependency>
    <!--mysql数据库驱动-->
    <dependency>
      <groupId>mysql</groupId>
      <artifactId>mysql-connector-java</artifactId>
      <version>5.1.47</version>
    </dependency>
    <!--spring的jdbc操作数据库的jar包，包含spring自带数据源，jdbcTemplate-->
    <dependency>
      <groupId>org.springframework</groupId>
      <artifactId>spring-jdbc</artifactId>
      <version>5.1.9.RELEASE</version>
    </dependency>
    <!--spring整合junit的jar包-->
    <dependency>
      <groupId>org.springframework</groupId>
      <artifactId>spring-test</artifactId>
      <version>5.1.9.RELEASE</version>
    </dependency>
    <!--mybatis整合spring的jar包-->
    <dependency>
      <groupId>org.mybatis</groupId>
      <artifactId>mybatis-spring</artifactId>
      <version>2.0.1</version>
    </dependency>

    <!--事务管理器jar包-->
    <dependency>
      <groupId>org.springframework</groupId>
      <artifactId>spring-tx</artifactId>
      <version>5.1.9.RELEASE</version>
    </dependency>
    <!--aop切面-->
    <dependency>
      <groupId>org.aspectj</groupId>
      <artifactId>aspectjweaver</artifactId>
      <version>1.9.2</version>
    </dependency>

    <!--日志开始-->
    <!--引入日志的门脸-->
    <dependency>
      <groupId>org.slf4j</groupId>
      <artifactId>slf4j-log4j12</artifactId>
      <version>1.6.1</version>
    </dependency>
    <!-- 日志工具包 -->
    <dependency>
      <groupId>org.apache.logging.log4j</groupId>
      <artifactId>log4j-api</artifactId>
      <version>2.10.0</version>
    </dependency>
    <!--日志核心包-->
    <dependency>
      <groupId>org.apache.logging.log4j</groupId>
      <artifactId>log4j-core</artifactId>
      <version>2.10.0</version>
    </dependency>
    <!--web相关的功能包-->
    <dependency>
      <groupId>org.apache.logging.log4j</groupId>
      <artifactId>log4j-web</artifactId>
      <version>2.9.1</version>
    </dependency>
    <!--为java做简单的日志记录-->
    <dependency>
      <groupId>org.slf4j</groupId>
      <artifactId>slf4j-api</artifactId>
      <version>1.7.25</version>
    </dependency>
    <!--slf4j的log4j实现类-->
    <dependency>
      <groupId>org.apache.logging.log4j</groupId>
      <artifactId>log4j-slf4j-impl</artifactId>
      <version>2.9.1</version>
    </dependency>
    <!--程序运行的时候检测用了哪种日志实现类-->
    <dependency>
      <groupId>org.apache.logging.log4j</groupId>
      <artifactId>log4j-jcl</artifactId>
      <version>2.9.1</version>
    </dependency>

    <!--日志结束-->

    <!--springmvc的核心包-->
    <dependency>
      <groupId>org.springframework</groupId>
      <artifactId>spring-webmvc</artifactId>
      <version>5.1.9.RELEASE</version>
    </dependency>

    <!-- JSTL标签库 -->
    <dependency>
      <groupId>jstl</groupId>
      <artifactId>jstl</artifactId>
      <version>1.2</version>
    </dependency>
    <dependency>
      <groupId>taglibs</groupId>
      <artifactId>standard</artifactId>
      <version>1.1.2</version>
    </dependency>
    <!--servlet-api ：引入servlet的功能-->
    <dependency>
      <groupId>javax.servlet</groupId>
      <artifactId>servlet-api</artifactId>
      <version>2.5</version>
      <scope>provided</scope>
    </dependency>
    <!--jsp-api: jsp页面的功能包 -->
    <dependency>
      <groupId>javax.servlet.jsp</groupId>
      <artifactId>jsp-api</artifactId>
      <version>2.2</version>
      <scope>provided</scope>
    </dependency>
    <!-- 文件上传 -->
    <dependency>
      <groupId>commons-fileupload</groupId>
      <artifactId>commons-fileupload</artifactId>
      <version>1.3.1</version>
    </dependency>
    <dependency>
      <groupId>com.fasterxml.jackson.core</groupId>
      <artifactId>jackson-core</artifactId>
      <version>2.9.0</version>
    </dependency>
    <dependency>
      <groupId>com.fasterxml.jackson.core</groupId>
      <artifactId>jackson-databind</artifactId>
      <version>2.9.0</version>
    </dependency>
    <dependency>
      <groupId>com.fasterxml.jackson.core</groupId>
      <artifactId>jackson-annotations</artifactId>
      <version>2.9.0</version>
    </dependency>
    <dependency>
      <groupId>org.projectlombok</groupId>
      <artifactId>lombok</artifactId>
      <version>1.18.12</version>
    </dependency>
  </dependencies>
```

```js
<mirror>
      <id>nexus-aliyun</id>
      <mirrorOf>central</mirrorOf>
      <name>Nexus aliyun</name>
      <url>http://maven.aliyun.com/nexus/content/groups/public</url>
</mirror>
```



##### 2、IDEA安装lombok插件

###### 	2.1点击【File】,选择【Setting】

![](images\2-1.png)





###### 	2.2、安装Lombok插件

在【Settings】界面，左侧点击【Plugins】，右侧搜索框里面输入【Lombok】，右侧，点击【install】进行安装

![](images\2-2.png)





#### 第03讲 数据库用户表设计

##### 1、软件安装

```js
已安装PowerDesigner设计软件，安装软件在课程资料【软件相关】文件中，包括安装文档
```



##### 2、课程目标

```js
掌握PowerDesigner设计数据库的能力
```



##### 3、用户表字段(sys_user)

| 字段名称 | 数据类型 | 字段大小 | 是否主键 | 是否为空 | 备注                         |
| :------- | -------- | -------- | -------- | -------- | ---------------------------- |
| user_id  | int      | 11       | 是       | 否       | 用户id                       |
| username | varchar  | 64       | 否       | 是       | 登录账户                     |
| password | varchar  | 128      | 否       | 是       | 登录密码                     |
| phone    | varchar  | 13       | 否       | 是       | 用户电话                     |
| email    | varchar  | 36       | 否       | 是       | 邮箱                         |
| status   | tinyint  | 1        | 否       | 是       | 用户状态 1:启用 0：停用      |
| is_admin | tinyint  | 1        | 否       | 是       | 是否为超级管理员 1：是 0：否 |



#### 第04讲 SSM框架整合讲解



##### 1、新建java和resources目录

###### 	1.1、在项目名上右键，选择【New】-> 【Directory】 如下图所示

![](images\4-1.png)



###### 	1.2、弹出New Directory对话框，

选择 src\main\java  和  src\main\resources  两项，如下图所示：

![](images\4-2.png)



###### 1.3、最终目录如下所示

![](images\4-3.png)

##### 2、新建common模块和web模块

###### 	2.1、在java目录下新建com.itmk.web 和 com.itmk.common 包

点击【java】目录右键，选择 【New】->【Package】，输入包名   

![](images\5-1.png)

![](images\5-2.png)

###### 2.2、最终项目目录

![](images\5-3.png)

##### 3、在rescurces目录下新建jdbc.properties

```js
jdbc.driverClassName=com.mysql.jdbc.Driver
jdbc.url=jdbc:mysql://localhost:3306/student-manager
jdbc.username=root
jdbc.password=123456
```



##### 4、在rescurces目录下新建mybatis-config.xml

```js
<?xml version="1.0" encoding="UTF-8" ?>
<!DOCTYPE configuration
        PUBLIC "-//mybatis.org.//DTD Config 3.0//EN"
        "http://mybatis.org/dtd/mybatis-3-config.dtd">

<!-- mybatis 的 主配置文件-->
<configuration>

</configuration>

```

##### 5、在rescurces目录下新建applicationContext.xml

```js
<?xml version="1.0" encoding="UTF-8"?>
<beans xmlns="http://www.springframework.org/schema/beans"
       xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
       xmlns:context="http://www.springframework.org/schema/context"
       xmlns:tx="http://www.springframework.org/schema/tx" xmlns:aop="http://www.springframework.org/schema/aop"
       xsi:schemaLocation="http://www.springframework.org/schema/beans
       http://www.springframework.org/schema/beans/spring-beans.xsd
       http://www.springframework.org/schema/context
       https://www.springframework.org/schema/context/spring-context.xsd
       http://www.springframework.org/schema/tx
       http://www.springframework.org/schema/tx/spring-tx.xsd http://www.springframework.org/schema/aop https://www.springframework.org/schema/aop/spring-aop.xsd">

    <!--dao-->
    <!--导入properties的数据库连接的配置文件-->
    <context:property-placeholder location="classpath:jdbc.properties"></context:property-placeholder>
    <!--配置数据源-->
    <bean id="druidDataSource" class="com.alibaba.druid.pool.DruidDataSource">
        <property name="driverClassName" value="${jdbc.driverClassName}"></property>
        <property name="url" value="${jdbc.url}"></property>
        <property name="username" value="${jdbc.username}"></property>
        <property name="password" value="${jdbc.password}"></property>
    </bean>
    <!--配置SQLSessionFactoryBean-->
    <bean id="sqlSessionFactory" class="org.mybatis.spring.SqlSessionFactoryBean">
        <!--配置数据源-->
        <property name="dataSource" ref="druidDataSource"></property>
        <!--加载Mybatis的核心配置文件 mybatis-config.xml-->
        <property name="configLocation" value="classpath:mybatis-config.xml"></property>
        <!--mapper.xml所在位置-->
        <property name="mapperLocations" value="classpath:mapper/*Mapper.xml" />
    </bean>
    <!--配置mapper接口代码扫描器-->
    <bean id="scannerConfigurer" class="org.mybatis.spring.mapper.MapperScannerConfigurer">
        <!--扫描dao层-->
        <property name="basePackage" value="com.itmk.web.*.mapper"></property>
    </bean>

    <!--service-->
    <!--开启SpringIOC容器的注解扫描, service层-->
    <context:component-scan base-package="com.itmk.web.*.service.impl"></context:component-scan>
    <!--配置事务管理器-->
    <bean id="transactionManager" class="org.springframework.jdbc.datasource.DataSourceTransactionManager">
        <!--配置数据源-->
        <property name="dataSource" ref="druidDataSource"></property>
    </bean>
</beans>
```

##### 6、在rescurces目录下新建springmvc.xml

```js
<?xml version="1.0" encoding="UTF-8"?>
<beans xmlns="http://www.springframework.org/schema/beans"
       xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
       xmlns:context="http://www.springframework.org/schema/context"
       xmlns:mvc="http://www.springframework.org/schema/mvc"
       xsi:schemaLocation="http://www.springframework.org/schema/beans http://www.springframework.org/schema/beans/spring-beans.xsd http://www.springframework.org/schema/context https://www.springframework.org/schema/context/spring-context.xsd http://www.springframework.org/schema/mvc https://www.springframework.org/schema/mvc/spring-mvc.xsd">

    <!--开启SpringIOC容器的注解扫描 controller层-->
    <context:component-scan base-package="com.itmk.web.*.controller"></context:component-scan>

    <!--配置 SpringMVC的注解扫描 处理器映射器,处理器适配器-->
    <mvc:annotation-driven></mvc:annotation-driven>
    
    <!--配置视图解析器  对转向页面的路径解析。prefix：前缀， suffix：后缀 -->
    <bean class="org.springframework.web.servlet.view.InternalResourceViewResolver">
        <property name="prefix" value="/WEB-INF/jsp/"/>
        <property name="suffix" value=".jsp"/>
    </bean>

</beans>
```

##### 7、配置web.xml

```js
<?xml version="1.0" encoding="UTF-8"?>
<web-app xmlns="http://xmlns.jcp.org/xml/ns/javaee"
         xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
         xsi:schemaLocation="http://xmlns.jcp.org/xml/ns/javaee http://xmlns.jcp.org/xml/ns/javaee/web-app_3_1.xsd"
         version="3.1">
  <welcome-file-list>
    <welcome-file>login.jsp</welcome-file>
  </welcome-file-list>
  <!--监听ServletContext对象的创建-->
  <listener>
    <listener-class>org.springframework.web.context.ContextLoaderListener</listener-class>
  </listener>

  <!--配置Spring配置文件的加载, 当Tomcat启动器,会为每个WEB项目创建一个ServletContext对象, ServletContext对象初始化时会执行 context-param标签 -->
  <context-param>
    <param-name>contextConfigLocation</param-name>
    <param-value>classpath:applicationContext.xml</param-value>
  </context-param>

  <!--配置SpringMVC的前端控制器-->
  <servlet>
    <servlet-name>dispatcherServlet</servlet-name>
    <servlet-class>org.springframework.web.servlet.DispatcherServlet</servlet-class>
    <!--加载SpringMVC的配置文件-->
    <init-param>
      <param-name>contextConfigLocation</param-name>
      <param-value>classpath:springmvc.xml</param-value>
    </init-param>
    <!--随着Tomcat服务器启动, 完成dispatcherServlet的创建 -->
    <load-on-startup>1</load-on-startup>
  </servlet>
  <servlet-mapping>
    <servlet-name>dispatcherServlet</servlet-name>
    <url-pattern>/</url-pattern>
  </servlet-mapping>

  <!--配置编码过滤器 处理POST的中文乱码处理-->
  <filter>
    <filter-name>characterEncodingFilter</filter-name>
    <filter-class>org.springframework.web.filter.CharacterEncodingFilter</filter-class>
    <!--设置编码为utf-8-->
    <init-param>
      <param-name>encoding</param-name>
      <param-value>utf-8</param-value>
    </init-param>
  </filter>
  <filter-mapping>
    <filter-name>characterEncodingFilter</filter-name>
    <url-pattern>/*</url-pattern>
  </filter-mapping>

</web-app>
```

##### 8、在rescurces目录下新建log4j.properties

```java
#log4j日志级别如下：
#A：off     最高等级，用于关闭所有日志记录。
#B：fatal   指出每个严重的错误事件将会导致应用程序的退出。
#C：error   指出虽然发生错误事件，但仍然不影响系统的继续运行。
#D：warn    表明会出现潜在的错误情形。
#E：info    一般和在粗粒度级别上，强调应用程序的运行全程。
#F：debug   一般用于细粒度级别上，对调试应用程序非常有帮助。
#G：all     最低等级，用于打开所有日志记录。
#但log4j只建议使用4个级别，优先级从高到低分别是:
#error>warn>info>debug
log4j.rootLogger=debug,systemOut,logFile
#输出到控制台
log4j.appender.systemOut=org.apache.log4j.ConsoleAppender
log4j.appender.systemOut.layout=org.apache.log4j.PatternLayout
log4j.appender.systemOut.layout.ConversionPattern=[%-5p][%-22d{yyyy/MM/dd HH:mm:ssS}][%l]%n%m%n
log4j.appender.systemOut.Target=System.out
#输出到文件
log4j.appender.logFile=org.apache.log4j.FileAppender
log4j.appender.logFile.layout=org.apache.log4j.PatternLayout
log4j.appender.logFile.layout.ConversionPattern=[%-5p][%-22d{yyyy/MM/dd HH:mm:ssS}][%l]%n%m%n
log4j.appender.logFile.File=D:/log/log4j.log
log4j.appender.logFile.Encoding=UTF-8

```

##### 9、新建sys_user和sys_menu模块

##### 10、在webapp下新建login.jsp页面

##### 11、在webapp/WEB-INF目录下新建jsp文件夹





#### 第05讲 SSM整合测试

IDEA控制台乱码处理

```js
选择自己项目的Tomcat，找到【VM options】 输入  -Dfile.encoding=UTF-8
```



##### 1、新建用户实体对象

新建com.itmk.web.sys_user包，然后新建SysUser实体对象

```js
package com.itmk.web.sys_user.entity;

import lombok.Data;

import java.io.Serializable;
@Data
public class SysUser implements Serializable {
    private Integer userId;
    private String username;
    private String password;
    private String phone;
    private String email;
    private boolean status;
}

```

##### 2、新建mapper层接口

新建com.itmk.web.sys_user.mapper包，然后新建SysUserMapper接口

```java
package com.itmk.web.sys_user.mapper;

import com.itmk.web.sys_user.entity.SysUser;

import java.util.List;

public interface SysUserMapper {
    List<SysUser>  getUserList();
}

```

##### 3、新建mapper映射文件

在resources资源文件夹新建mapper文件夹，然后新建SysUserMapper.xml映射文件

```java
<?xml version="1.0" encoding="utf-8" ?>
<!DOCTYPE mapper
        PUBLIC "-//mybatis.org//DTD Mapper 3.0//EN"
        "http://mybatis.org/dtd/mybatis-3-mapper.dtd">
<mapper namespace="com.itmk.web.sys_user.mapper.SysUserMapper">
    <!--    解决实体和数据库字段不对应的问题-->
    <resultMap id="sysUserMap" type="com.itmk.web.sys_user.entity.SysUser">
        <id property="userId" column="user_id"/>
        <result property="username" column="username"/>
        <result property="password" column="password"/>
        <result property="phone" column="phone"/>
        <result property="email" column="email"/>
        <result property="status" column="status"/>
    </resultMap>
    <!--    查询所有的用户-->
    <select id="getUserList" resultMap="sysUserMap">
        select * from sys_user
    </select>
</mapper>
```

##### 4、新建service层

新建com.itmk.web.sys_user.service，然后新建SysUserService接口

```js
package com.itmk.web.sys_user.service;

import com.itmk.web.sys_user.entity.SysUser;

import java.util.List;

public interface SysUserService {
    List<SysUser> getUserList();
}

```

**实现类**

新建com.itmk.web.sys_user.service.impl包，然后新建SysUserServiceImpl类，实现SysUserService接口

```js
package com.itmk.web.sys_user.service.impl;

import com.itmk.web.sys_user.entity.SysUser;
import com.itmk.web.sys_user.mapper.SysUserMapper;
import com.itmk.web.sys_user.service.SysUserService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;
@Service
public class SysUserServiceImpl implements SysUserService {
    @Resource
    private SysUserMapper sysUserMapper;
    @Override
    public List<SysUser> getUserList() {
        return sysUserMapper.getUserList();
    }
}

```

##### 5、新建控制器层

在com.itmk.common包新建ResultVo

```js
package com.itmk.common;

import lombok.Data;

/**
 * 返回值类型
 */
@Data
public class ResultVo<T> {
    private String msg;
    private Integer code;
    private T data;
}

```



新建com.itmk.web.sys_user.controller包，然后新建SysUserController控制器

```java
package com.itmk.web.sys_user.controller;

import com.itmk.common.ResultUtils;
import com.itmk.common.ResultVo;
import com.itmk.web.sys_user.entity.SysUser;
import com.itmk.web.sys_user.service.SysUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
@RequestMapping("/api/sysUser")
public class SysUserController {
    @Autowired
    private SysUserService sysUserService;
    /**
     * 查询所有的用户
     */
    @RequestMapping("/getUserList")
    @ResponseBody
    public ResultVo getUserList(){
        List<SysUser> userList = sysUserService.getUserList();
        return ResultUtils.success("查询成功",userList);

    }
}

```

##### 6、tomcat配置



#### 第06讲 整合Layui

##### 1、下载layui静态源码

```js
http://layuimini.99php.cn/
```

##### 2、整合layui登录页面到项目

2.1、解压下载下来的Layuimini框架，把layuimini-v2下面的api、css、images、js、lib复制到项目的webapp目录下；如下图所示

![](images\6-1.png)

2.2、找到layuimini-v2目录下的page下的login-3.html页面，然后复制到项目login.jsp



##### 3、出现乱码解决方法

![](images\6-2.png)



在login.jsp页面头部添加如下代码

```js
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
```



##### 4、图片不能显示解决

![](images\6-3.png)

在springmvc.xml配置文件添加静态资源文件放行配置

```js
	<!--    静态资源放行配置-->
    <mvc:resources location="/images/" mapping="/images/**"/>
    <mvc:resources location="/js/" mapping="/js/**"/>
    <mvc:resources location="/css/" mapping="/css/**"/>
    <mvc:resources location="/lib/" mapping="/lib/**"/>
    <mvc:resources location="/api/" mapping="/api/**"/>
```



##### 5、登录页面完整源码

```js
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>调查问卷系统-登陆</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta http-equiv="Access-Control-Allow-Origin" content="*">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="format-detection" content="telephone=no">
    <link rel="stylesheet" href="/lib/layui-v2.6.3/css/layui.css" media="all">
    <!--[if lt IE 9]>
    <script src="https://cdn.staticfile.org/html5shiv/r29/html5.min.js"></script>
    <script src="https://cdn.staticfile.org/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
    <style>
        .main-body {top:50%;left:50%;position:absolute;-webkit-transform:translate(-50%,-50%);-moz-transform:translate(-50%,-50%);-ms-transform:translate(-50%,-50%);-o-transform:translate(-50%,-50%);transform:translate(-50%,-50%);overflow:hidden;}
        .login-main .login-bottom .center .item input {display:inline-block;width:227px;height:22px;padding:0;position:absolute;border:0;outline:0;font-size:14px;letter-spacing:0;}
        .login-main .login-bottom .center .item .icon-1 {background:url(/images/icon-login.png) no-repeat 1px 0;}
        .login-main .login-bottom .center .item .icon-2 {background:url(/images/icon-login.png) no-repeat -54px 0;}
        .login-main .login-bottom .center .item .icon-3 {background:url(/images/icon-login.png) no-repeat -106px 0;}
        .login-main .login-bottom .center .item .icon-4 {background:url(/images/icon-login.png) no-repeat 0 -43px;position:absolute;right:-10px;cursor:pointer;}
        .login-main .login-bottom .center .item .icon-5 {background:url(/images/icon-login.png) no-repeat -55px -43px;}
        .login-main .login-bottom .center .item .icon-6 {background:url(/images/icon-login.png) no-repeat 0 -93px;position:absolute;right:-10px;margin-top:8px;cursor:pointer;}
        .login-main .login-bottom .tip .icon-nocheck {display:inline-block;width:10px;height:10px;border-radius:2px;border:solid 1px #9abcda;position:relative;top:2px;margin:1px 8px 1px 1px;cursor:pointer;}
        .login-main .login-bottom .tip .icon-check {margin:0 7px 0 0;width:14px;height:14px;border:none;background:url(../images/icon-login.png) no-repeat -111px -48px;}
        .login-main .login-bottom .center .item .icon {display:inline-block;width:33px;height:22px;}
        .login-main .login-bottom .center .item {width:288px;height:35px;border-bottom:1px solid #dae1e6;margin-bottom:35px;}
        .login-main {width:428px;position:relative;float:left;}
        .login-main .login-top {height:117px;background-color:#148be4;border-radius:12px 12px 0 0;font-family:SourceHanSansCN-Regular;font-size:30px;font-weight:400;font-stretch:normal;letter-spacing:0;color:#fff;line-height:117px;text-align:center;overflow:hidden;-webkit-transform:rotate(0);-moz-transform:rotate(0);-ms-transform:rotate(0);-o-transform:rotate(0);transform:rotate(0);}
        .login-main .login-top .bg1 {display:inline-block;width:74px;height:74px;background:#fff;opacity:.1;border-radius:0 74px 0 0;position:absolute;left:0;top:43px;}
        .login-main .login-top .bg2 {display:inline-block;width:94px;height:94px;background:#fff;opacity:.1;border-radius:50%;position:absolute;right:-16px;top:-16px;}
        .login-main .login-bottom {width:428px;background:#fff;border-radius:0 0 12px 12px;padding-bottom:53px;}
        .login-main .login-bottom .center {width:288px;margin:0 auto;padding-top:40px;padding-bottom:15px;position:relative;}
        .login-main .login-bottom .tip {clear:both;height:16px;line-height:16px;width:288px;margin:0 auto;}
        body {background:url(/images/loginbg.png) 0% 0% / cover no-repeat;position:static;font-size:12px;}
        input::-webkit-input-placeholder {color:#a6aebf;}
        input::-moz-placeholder {/* Mozilla Firefox 19+ */            color:#a6aebf;}
        input:-moz-placeholder {/* Mozilla Firefox 4 to 18 */            color:#a6aebf;}
        input:-ms-input-placeholder {/* Internet Explorer 10-11 */            color:#a6aebf;}
        input:-webkit-autofill {/* 取消Chrome记住密码的背景颜色 */            -webkit-box-shadow:0 0 0 1000px white inset !important;}
        html {height:100%;}
        .login-main .login-bottom .tip {clear:both;height:16px;line-height:16px;width:288px;margin:0 auto;}
        .login-main .login-bottom .tip .login-tip {font-family:MicrosoftYaHei;font-size:12px;font-weight:400;font-stretch:normal;letter-spacing:0;color:#9abcda;cursor:pointer;}
        .login-main .login-bottom .tip .forget-password {font-stretch:normal;letter-spacing:0;color:#1391ff;text-decoration:none;position:absolute;right:62px;}
        .login-main .login-bottom .login-btn {width:288px;height:40px;background-color:#1E9FFF;border-radius:16px;margin:24px auto 0;text-align:center;line-height:40px;color:#fff;font-size:14px;letter-spacing:0;cursor:pointer;border:none;}
        .login-main .login-bottom .center .item .validateImg {position:absolute;right:1px;cursor:pointer;height:36px;border:1px solid #e6e6e6;}
        .footer {left:0;bottom:0;color:#fff;width:100%;position:absolute;text-align:center;line-height:30px;padding-bottom:10px;text-shadow:#000 0.1em 0.1em 0.1em;font-size:14px;}
        .padding-5 {padding:5px !important;}
        .footer a,.footer span {color:#fff;}
        @media screen and (max-width:428px) {.login-main {width:360px !important;}
            .login-main .login-top {width:360px !important;}
            .login-main .login-bottom {width:360px !important;}
        }
    </style>
</head>
<body>
<div class="main-body">
    <div class="login-main">
        <div class="login-top">
            <span>调查问卷管理系统</span>
            <span class="bg1"></span>
            <span class="bg2"></span>
        </div>
        <form class="layui-form login-bottom">
            <div class="center">
                <div class="item">
                    <span class="icon icon-2"></span>
                    <input type="text" name="username" lay-verify="required"  placeholder="请输入登录账号" maxlength="24"/>
                </div>

                <div class="item">
                    <span class="icon icon-3"></span>
                    <input type="password" name="password" lay-verify="required"  placeholder="请输入密码" maxlength="20">
                    <span class="bind-password icon icon-4"></span>
                </div>

                <div id="validatePanel" class="item" style="width: 137px;">
                    <input type="text" name="captcha" placeholder="请输入验证码" maxlength="4">
                    <img id="refreshCaptcha" class="validateImg"  src="../images/captcha.jpg" >
                </div>
                <div class="layui-form-item" style="text-align: center">
                    <input type="radio" name="userType" value="1" title="读者" />
                    <input type="radio" name="userType" value="2" title="管理员" />
                </div>
            </div>
<%--            <div class="tip">--%>
<%--                <span class="icon-nocheck"></span>--%>
<%--                <span class="login-tip">保持登录</span>--%>
<%--                <a href="javascript:" class="forget-password">忘记密码？</a>--%>
<%--            </div>--%>
            <div class="layui-form-item" style="text-align:center; width:100%;height:100%;margin:0px;">
                <button class="login-btn" lay-submit="" lay-filter="login">立即登录</button>
            </div>
        </form>
    </div>
</div>
<%--<div class="footer">--%>
<%--    ©版权所有 2014-2018 叁贰柒工作室<span class="padding-5">|</span><a target="_blank" href="http://www.miitbeian.gov.cn">粤ICP备16006642号-2</a>--%>
<%--</div>--%>
<script src="/lib/layui-v2.6.3/layui.js" charset="utf-8"></script>
<script>
    layui.use(['form','jquery'], function () {
        var $ = layui.jquery,
            form = layui.form,
            layer = layui.layer;

        // 登录过期的时候，跳出ifram框架
        if (top.location != self.location) top.location = self.location;

        $('.bind-password').on('click', function () {
            if ($(this).hasClass('icon-5')) {
                $(this).removeClass('icon-5');
                $("input[name='password']").attr('type', 'password');
            } else {
                $(this).addClass('icon-5');
                $("input[name='password']").attr('type', 'text');
            }
        });

        $('.icon-nocheck').on('click', function () {
            if ($(this).hasClass('icon-check')) {
                $(this).removeClass('icon-check');
            } else {
                $(this).addClass('icon-check');
            }
        });

        // 进行登录操作
        form.on('submit(login)', function (data) {
            data = data.field;
            console.log(data)
            if (data.username == '') {
                layer.msg('用户名不能为空');
                return false;
            }
            if (data.password == '') {
                layer.msg('密码不能为空');
                return false;
            }
            if (data.captcha == '') {
                layer.msg('验证码不能为空');
                return false;
            }
            if(!data.userType){
                layer.msg('请选择用户类型');
                return false;
            }
            layer.msg('登录成功', function () {
                window.location = '../index.html';
            });
            return false;
        });
    });
</script>
</body>
</html>
```



#### 第07讲 整合Layui首页



#### 第08讲 系统菜单配置讲解



#### 第09讲 CSS3弹性盒子模型讲解

![](images\盒子模型1.png)





- 主轴的开始位置（与边框的交叉点）叫做`main start`

- 主轴结束位置（与边框的交叉点）叫做`main end`

- 交叉轴的开始位置叫做`cross start`

- 交叉轴的结束位置叫做`cross end`

  



###### 盒子模型特点：

```javascript
1.div默认是从上到下排列的

2.当把一个div变成一个盒子模型的时候，div子元素将横向排列

3.盒子模型默认存在两个轴，主轴(x轴，水平方向 main axis)和交叉轴(y轴，垂直方向 cross axis)
```

​	



###### div默认是垂直排列

![](images\flex1.png)

```javascript
<h3>div默认垂直排列</h3>
    <div class="box1">
      <div class="child1">1</div>
      <div class="child2">2</div>
      <div class="child3">3</div>
      <div class="child4">4</div>
      <div class="child5">5</div>
 </div>
```



###### div变成盒子模型

**把一个div变成盒子模型的时候，子元素将水平排列**

可以使用 **display:flex**  样式，把一个div变成一个**盒子模型**

```javascript
<h3>div变成盒子，将水平排列</h3>
    <div style="display: flex;">
      <div class="child1">1</div>
      <div class="child2">2</div>
      <div class="child3">3</div>
      <div class="child4">4</div>
      <div class="child5">5</div>
</div>
```

![](images\flex2.png)

###### div的排列方向

```java
flex-direction 决定div是横向排列还是纵向排列；
```



​		row（默认值）：**主轴为水平方向，起点在左端****，从左往右排列**。

```html
    <h3>主轴的row属性：水平从左往右排列</h3>
    <div class="box2" style="display: flex;flex-direction: row;">
      <div class="child1">1</div>
      <div class="child2">2</div>
      <div class="child3">3</div>
      <div class="child4">4</div>
      <div class="child5">5</div>
    </div>
```

![](images\flex3.png)

​		row-reverse：**主轴为水平方向，起点在右端，从右往左排列**。

![](images\flex4.png)

​		column：主轴为垂直方向，起点在上沿，垂直方向排列。

```html
<h3>主轴的colum属性：垂直方向排列</h3>
    <div class="box2" style="display: flex;flex-direction: column;">
      <div class="child1">1</div>
      <div class="child2">2</div>
      <div class="child3">3</div>
      <div class="child4">4</div>
      <div class="child5">5</div>
    </div>
```

![](images\flex5.png)

​		column-reverse：主轴为垂直方向，起点在下沿，垂直方向反向排列。 

```html
<h3>主轴的column-reverse属性：垂直方向排列</h3>
    <div class="box2" style="display: flex;flex-direction: column-reverse;">
      <div class="child1">1</div>
      <div class="child2">2</div>
      <div class="child3">3</div>
      <div class="child4">4</div>
      <div class="child5">5</div>
    </div>
```

![](images\flex6.png)

###### div在主轴的对齐方式

justify-content**主轴上**的对齐方式，分**左、中、右对齐方式**。

​		flex-start（默认值）：左对齐

```html
<h3>主轴的对齐方式:左对齐</h3>
    <div class="box2" style="display: flex;justify-content: flex-start;">
      <div class="child1">1</div>
      <div class="child2">2</div>
      <div class="child3">3</div>
      <div class="child4">4</div>
      <div class="child5">5</div>
    </div>
```

![](images\flex7.png)

​	center： 居中

```html
 <h3>主轴的对齐方式:居中对齐</h3>
    <div class="box2" style="display: flex;justify-content: center;">
      <div class="child1">1</div>
      <div class="child2">2</div>
      <div class="child3">3</div>
      <div class="child4">4</div>
      <div class="child5">5</div>
    </div>
```

![](images\flex8.png)

​	flex-end：右对齐

```html
<h3>主轴的对齐方式:右对齐</h3>
    <div class="box2" style="display: flex;justify-content: flex-end;">
      <div class="child1">1</div>
      <div class="child2">2</div>
      <div class="child3">3</div>
      <div class="child4">4</div>
      <div class="child5">5</div>
    </div>
```

![](images\flex9.png)

​		space-between：两端对齐，左右两个元素紧贴边框，项目之间的间隔都相等。

```java
<h3>主轴的对齐方式:两端对齐</h3>
    <div class="box2" style="display: flex;justify-content: space-between;">
      <div class="child1">1</div>
      <div class="child2">2</div>
      <div class="child3">3</div>
      <div class="child4">4</div>
      <div class="child5">5</div>
    </div>
```

![](images\flex10.png)

​		space-around：每个项目左右侧的margin相等。所以，项目之间的间隔比项目与边框的间隔大一倍。

```html
<h3>主轴的对齐方式:space-around</h3>
    <div class="box2" style="display: flex;justify-content: space-around;">
      <div class="child1">1</div>
      <div class="child2">2</div>
      <div class="child3">3</div>
      <div class="child4">4</div>
      <div class="child5">5</div>
    </div>
```

![](images\flex11.png)

###### div在交叉轴的对齐方式

align-items属性决定在**交叉轴**上的对齐方式，**分上、中、下**对齐方式；

​		flex-start：交叉轴的起点对齐。

```html
<h3>交叉轴的对齐方式:上对齐</h3>
    <div class="box2" style="display: flex;align-items: flex-start;">
      <div class="child1">1</div>
      <div class="child2">2</div>
      <div class="child3">3</div>
      <div class="child4">4</div>
      <div class="child5">5</div>
    </div>
```



center：交叉轴![](images\flex12.png)的中点对齐。

```html
<h3>交叉轴的对齐方式:居中对齐</h3>
    <div class="box2" style="display: flex;align-items: center;">
      <div class="child1">1</div>
      <div class="child2">2</div>
      <div class="child3">3</div>
      <div class="child4">4</div>
      <div class="child5">5</div>
    </div>
```

![](images\flex13.png)

flex-end：交叉轴的终点对齐。

```html
<h3>交叉轴的对齐方式:底部对齐</h3>
    <div class="box2" style="display: flex;align-items: flex-end;">
      <div class="child1">1</div>
      <div class="child2">2</div>
      <div class="child3">3</div>
      <div class="child4">4</div>
      <div class="child5">5</div>
    </div>
```

![](images\flex14.png)

###### flex-grow属性定义div所占的份数

​	父元素必须是盒子模型的时候，该属性才会起作用

```html
<h3>子元素占比例分配</h3>
    <div class="box2" style="display: flex;">
      <div class="child1" style="flex-grow: 1;">1</div>
      <div class="child2" style="flex-grow: 1;">2</div>
      <div class="child3" style="flex-grow: 1;">3</div>
      <div class="child4" style="flex-grow: 1;">4</div>
      <div class="child5" style="flex-grow: 1;">5</div>
    </div>
```

![](images\flex15.png)

```js
 <div class="home">
    <h3>div默认垂直排列</h3>
    <div class="box1">
      <div class="child1">1</div>
      <div class="child2">2</div>
      <div class="child3">3</div>
      <div class="child4">4</div>
      <div class="child5">5</div>
    </div>
    <h3>div变成盒子，将水平排列</h3>
    <div class="box2" style="display: flex;">
      <div class="child1">1</div>
      <div class="child2">2</div>
      <div class="child3">3</div>
      <div class="child4">4</div>
      <div class="child5">5</div>
    </div>
    <h3>主轴的row属性：水平从左往右排列</h3>
    <div class="box2" style="display: flex;flex-direction: row;">
      <div class="child1">1</div>
      <div class="child2">2</div>
      <div class="child3">3</div>
      <div class="child4">4</div>
      <div class="child5">5</div>
    </div>
    <h3>主轴的row-reverse属性：水平从右往左排列</h3>
    <div class="box2" style="display: flex;flex-direction: row-reverse;">
      <div class="child1">1</div>
      <div class="child2">2</div>
      <div class="child3">3</div>
      <div class="child4">4</div>
      <div class="child5">5</div>
    </div>
    <h3>主轴的colum属性：垂直方向排列</h3>
    <div class="box2" style="display: flex;flex-direction: column;">
      <div class="child1">1</div>
      <div class="child2">2</div>
      <div class="child3">3</div>
      <div class="child4">4</div>
      <div class="child5">5</div>
    </div>
    <h3>主轴的column-reverse属性：垂直方向排列</h3>
    <div class="box2" style="display: flex;flex-direction: column-reverse;">
      <div class="child1">1</div>
      <div class="child2">2</div>
      <div class="child3">3</div>
      <div class="child4">4</div>
      <div class="child5">5</div>
    </div>
    <h3>主轴的对齐方式:左对齐</h3>
    <div class="box2" style="display: flex;justify-content: flex-start;">
      <div class="child1">1</div>
      <div class="child2">2</div>
      <div class="child3">3</div>
      <div class="child4">4</div>
      <div class="child5">5</div>
    </div>
    <h3>主轴的对齐方式:居中对齐</h3>
    <div class="box2" style="display: flex;justify-content: center;">
      <div class="child1">1</div>
      <div class="child2">2</div>
      <div class="child3">3</div>
      <div class="child4">4</div>
      <div class="child5">5</div>
    </div>
    <h3>主轴的对齐方式:右对齐</h3>
    <div class="box2" style="display: flex;justify-content: flex-end;">
      <div class="child1">1</div>
      <div class="child2">2</div>
      <div class="child3">3</div>
      <div class="child4">4</div>
      <div class="child5">5</div>
    </div>
    <h3>主轴的对齐方式:两端对齐</h3>
    <div class="box2" style="display: flex;justify-content: space-between;">
      <div class="child1">1</div>
      <div class="child2">2</div>
      <div class="child3">3</div>
      <div class="child4">4</div>
      <div class="child5">5</div>
    </div>
    <h3>主轴的对齐方式:space-around</h3>
    <div class="box2" style="display: flex;justify-content: space-around;">
      <div class="child1">1</div>
      <div class="child2">2</div>
      <div class="child3">3</div>
      <div class="child4">4</div>
      <div class="child5">5</div>
    </div>
    <h3>交叉轴的对齐方式:上对齐</h3>
    <div class="box2" style="display: flex;align-items: flex-start;">
      <div class="child1">1</div>
      <div class="child2">2</div>
      <div class="child3">3</div>
      <div class="child4">4</div>
      <div class="child5">5</div>
    </div>
    <h3>交叉轴的对齐方式:居中对齐</h3>
    <div class="box2" style="display: flex;align-items: center;">
      <div class="child1">1</div>
      <div class="child2">2</div>
      <div class="child3">3</div>
      <div class="child4">4</div>
      <div class="child5">5</div>
    </div>
    <h3>交叉轴的对齐方式:底部对齐</h3>
    <div class="box2" style="display: flex;align-items: flex-end;">
      <div class="child1">1</div>
      <div class="child2">2</div>
      <div class="child3">3</div>
      <div class="child4">4</div>
      <div class="child5">5</div>
    </div>
    <h3>子元素占比例分配</h3>
    <div class="box2" style="display: flex;">
      <div class="child1" style="flex-grow: 1;">1</div>
      <div class="child2" style="flex-grow: 1;">2</div>
      <div class="child3" style="flex-grow: 1;">3</div>
      <div class="child4" style="flex-grow: 1;">4</div>
      <div class="child5" style="flex-grow: 1;">5</div>
    </div>
  </div>
```

```js
<style lang="scss" scoped>
.box1 {
  height: 300px;
  background-color: #d0d0d0;
}
.child1 {
  text-align: center;
  line-height: 50px;
  height: 50px;
  width: 50px;
  background-color: #ff00cc;
  color: #fff;
  border-radius: 50%;
}
.child2 {
  text-align: center;
  line-height: 50px;
  height: 50px;
  width: 50px;
  background-color: #cc6633;
  color: #fff;
  border-radius: 50%;
}
.child3 {
  text-align: center;
  line-height: 50px;
  height: 50px;
  width: 50px;
  background-color: #9966ff;
  color: #fff;
  border-radius: 50%;
}
.child4 {
  text-align: center;
  line-height: 50px;
  height: 50px;
  width: 50px;
  background-color: #3300ff;
  color: #fff;
  border-radius: 50%;
}
.child5 {
  text-align: center;
  line-height: 50px;
  height: 50px;
  width: 50px;
  background-color: #00dd00;
  color: #fff;
  border-radius: 50%;
}
.box2 {
  height: 300px;
  background-color: #d0d0d0;
}
</style>>
```



#### 第10讲  Bootstrap4弹性盒子模型讲解

```js
https://www.runoob.com/w3cnote/flex-grammar.html
```



**bootstrap在线例子**

```js
https://www.runoob.com/bootstrap4/bootstrap4-flex.html
```





#### 

![](images\盒子模型1.png)





- 主轴的开始位置（与边框的交叉点）叫做`main start`

- 主轴结束位置（与边框的交叉点）叫做`main end`

- 交叉轴的开始位置叫做`cross start`

- 交叉轴的结束位置叫做`cross end`

  



##### 1、盒子模型特点：

```javascript
1.div默认是从上到下排列的

2.当把一个div变成一个盒子模型的时候，div子元素将横向排列

3.盒子模型默认存在两个轴，主轴(x轴，水平方向 main axis)和交叉轴(y轴，垂直方向 cross axis)
```

​	



##### 2、div默认是垂直排列

```js
	<h5>div默认垂直排列</h5>
    <div style="height: 220px;background-color: #d0d0d0">
      <div style="height: 50px;width: 50px;text-align: center;line-height: 50px;" class="bg-danger">1</div>
      <div style="height: 50px;width: 50px;text-align: center;line-height: 50px;" class="bg-primary">2</div>
      <div style="height: 50px;width: 50px;text-align: center;line-height: 50px;" class="bg-success">3</div>
      <div style="height: 50px;width: 50px;text-align: center;line-height: 50px;" class="bg-warning">4</div>
    </div>
```

![](images\d-1.png)



##### 2、div变成弹性盒子模型，子元素将水平排列

```js
给div加上class="d-flex"样式，div将水平排列
```

```js
	<h5>div变成弹性盒子模型(d-flex)，子元素默认水平排列</h5>
    <div class="d-flex" style="height: 220px;background-color: #d0d0d0">
      <div style="height: 50px;width: 50px;text-align: center;line-height: 50px;" class="bg-danger">1</div>
      <div style="height: 50px;width: 50px;text-align: center;line-height: 50px;" class="bg-primary">2</div>
      <div style="height: 50px;width: 50px;text-align: center;line-height: 50px;" class="bg-success">3</div>
      <div style="height: 50px;width: 50px;text-align: center;line-height: 50px;" class="bg-warning">4</div>
    </div>
```

![](images\d-2.png)



##### 3、div的排列方式：水平排列和垂直排列

###### 3.1、水平排列

```js
给div加上class='flex-row'样式，div将水平排列；
div变成弹性盒子模型，默认是水平排列；
```

```js
	<h5>div变成弹性盒子模型(d-flex)，子元素水平排列</h5>
    <div class="d-flex flex-row" style="height: 220px;background-color: #d0d0d0">
      <div style="height: 50px;width: 50px;text-align: center;line-height: 50px;" class="bg-danger">1</div>
      <div style="height: 50px;width: 50px;text-align: center;line-height: 50px;" class="bg-primary">2</div>
      <div style="height: 50px;width: 50px;text-align: center;line-height: 50px;" class="bg-success">3</div>
      <div style="height: 50px;width: 50px;text-align: center;line-height: 50px;" class="bg-warning">4</div>
    </div>
```

![](images\d-3.png)



###### 3.2、垂直排列

```js
给div加上class='flex-column'样式，div子元素将垂直排列
```

```js
	<h5>div变成弹性盒子模型(d-flex)，子元素垂直排列</h5>
    <div class="d-flex flex-column" style="height: 220px;background-color: #d0d0d0">
      <div style="height: 50px;width: 50px;text-align: center;line-height: 50px;" class="bg-danger">1</div>
      <div style="height: 50px;width: 50px;text-align: center;line-height: 50px;" class="bg-primary">2</div>
      <div style="height: 50px;width: 50px;text-align: center;line-height: 50px;" class="bg-success">3</div>
      <div style="height: 50px;width: 50px;text-align: center;line-height: 50px;" class="bg-warning">4</div>
    </div>
```

![](images\d-4.png)





##### 4、主轴的对齐方式：左对齐、居中对齐、右对齐

###### 4.1、左对齐:  justify-content-start

```js
	<br>
    <h5>div变成弹性盒子模型(d-flex)，主轴左对齐</h5>
    <div class="d-flex justify-content-start" style="height: 220px;background-color: #d0d0d0">
      <div style="height: 50px;width: 50px;text-align: center;line-height: 50px;" class="bg-danger">1</div>
      <div style="height: 50px;width: 50px;text-align: center;line-height: 50px;" class="bg-primary">2</div>
      <div style="height: 50px;width: 50px;text-align: center;line-height: 50px;" class="bg-success">3</div>
      <div style="height: 50px;width: 50px;text-align: center;line-height: 50px;" class="bg-warning">4</div>
    </div>
```

![](images\d-5.png)

###### 4.2、居中对齐：justify-content-center

```js
	<br>
    <h5>div变成弹性盒子模型(d-flex)，主轴居中对齐</h5>
    <div class="d-flex justify-content-center" style="height: 220px;background-color: #d0d0d0">
      <div style="height: 50px;width: 50px;text-align: center;line-height: 50px;" class="bg-danger">1</div>
      <div style="height: 50px;width: 50px;text-align: center;line-height: 50px;" class="bg-primary">2</div>
      <div style="height: 50px;width: 50px;text-align: center;line-height: 50px;" class="bg-success">3</div>
      <div style="height: 50px;width: 50px;text-align: center;line-height: 50px;" class="bg-warning">4</div>
    </div>
```

![](images\d-6.png)

###### 4.3、右对齐：justify-content-end

```js
	<br>
    <h5>div变成弹性盒子模型(d-flex)，主轴右对齐</h5>
    <div class="d-flex justify-content-end" style="height: 220px;background-color: #d0d0d0">
      <div style="height: 50px;width: 50px;text-align: center;line-height: 50px;" class="bg-danger">1</div>
      <div style="height: 50px;width: 50px;text-align: center;line-height: 50px;" class="bg-primary">2</div>
      <div style="height: 50px;width: 50px;text-align: center;line-height: 50px;" class="bg-success">3</div>
      <div style="height: 50px;width: 50px;text-align: center;line-height: 50px;" class="bg-warning">4</div>
    </div>
```

![](images\d-7.png)

###### 4.4、环绕对齐：justify-content-around

```js
	<br>
    <h5>div变成弹性盒子模型(d-flex)，主轴环绕对齐</h5>
    <div class="d-flex justify-content-around" style="height: 220px;background-color: #d0d0d0">
      <div style="height: 50px;width: 50px;text-align: center;line-height: 50px;" class="bg-danger">1</div>
      <div style="height: 50px;width: 50px;text-align: center;line-height: 50px;" class="bg-primary">2</div>
      <div style="height: 50px;width: 50px;text-align: center;line-height: 50px;" class="bg-success">3</div>
      <div style="height: 50px;width: 50px;text-align: center;line-height: 50px;" class="bg-warning">4</div>
    </div>
```

![](images\d-8.png)

###### 4.5、两端对齐：justify-content-between

```js
	<br>
    <h5>div变成弹性盒子模型(d-flex)，主轴两端对齐</h5>
    <div class="d-flex justify-content-between" style="height: 220px;background-color: #d0d0d0">
      <div style="height: 50px;width: 50px;text-align: center;line-height: 50px;" class="bg-danger">1</div>
      <div style="height: 50px;width: 50px;text-align: center;line-height: 50px;" class="bg-primary">2</div>
      <div style="height: 50px;width: 50px;text-align: center;line-height: 50px;" class="bg-success">3</div>
      <div style="height: 50px;width: 50px;text-align: center;line-height: 50px;" class="bg-warning">4</div>
    </div>
```

![](images\d-9.png)



##### 5、交叉轴对齐方式：上对齐、居中对齐、下对齐

###### 5.1、上对齐：align-items-start

```js
 <h5>div变成弹性盒子模型(d-flex)，交叉轴 上对齐</h5>
    <div class="d-flex align-items-start" style="height: 220px;background-color: #d0d0d0">
      <div style="height: 50px;width: 50px;text-align: center;line-height: 50px;" class="bg-danger">1</div>
      <div style="height: 50px;width: 50px;text-align: center;line-height: 50px;" class="bg-primary">2</div>
      <div style="height: 50px;width: 50px;text-align: center;line-height: 50px;" class="bg-success">3</div>
      <div style="height: 50px;width: 50px;text-align: center;line-height: 50px;" class="bg-warning">4</div>
    </div>
```

![](images\d-10.png)

###### 5.2、居中对齐：align-items-center

```css
	 <br>
    <h5>div变成弹性盒子模型(d-flex)，交叉轴 居中对齐</h5>
    <div class="d-flex align-items-center" style="height: 220px;background-color: #d0d0d0">
      <div style="height: 50px;width: 50px;text-align: center;line-height: 50px;" class="bg-danger">1</div>
      <div style="height: 50px;width: 50px;text-align: center;line-height: 50px;" class="bg-primary">2</div>
      <div style="height: 50px;width: 50px;text-align: center;line-height: 50px;" class="bg-success">3</div>
      <div style="height: 50px;width: 50px;text-align: center;line-height: 50px;" class="bg-warning">4</div>
    </div>
```

![](images\d-11.png)

###### 5.3、下对齐：align-items-end

```html
	<br>
    <h5>div变成弹性盒子模型(d-flex)，交叉轴 底部对齐</h5>
    <div class="d-flex align-items-end" style="height: 220px;background-color: #d0d0d0">
      <div style="height: 50px;width: 50px;text-align: center;line-height: 50px;" class="bg-danger">1</div>
      <div style="height: 50px;width: 50px;text-align: center;line-height: 50px;" class="bg-primary">2</div>
      <div style="height: 50px;width: 50px;text-align: center;line-height: 50px;" class="bg-success">3</div>
      <div style="height: 50px;width: 50px;text-align: center;line-height: 50px;" class="bg-warning">4</div>
    </div>
```

![](images\d-12.png)





##### 6、水平、垂直居中对齐

```html
	<br>
     <h3 style="text-align: center">水平、垂直居中对齐</h3>
    <br>
     <div class="d-flex align-items-center justify-content-center" style="height: 220px;background-color: #d0d0d0">
      <div style="height: 50px;width: 50px;text-align: center;line-height: 50px;" class="bg-danger">1</div>
      <div style="height: 50px;width: 50px;text-align: center;line-height: 50px;" class="bg-primary">2</div>
      <div style="height: 50px;width: 50px;text-align: center;line-height: 50px;" class="bg-success">3</div>
      <div style="height: 50px;width: 50px;text-align: center;line-height: 50px;" class="bg-warning">4</div>
    </div>
```

![](images\d-13.png)





#### 第11讲 用户列表搜索栏制作

##### 1、效果

![](images\11-2.png)



##### 2、布局实现思路

```js
使用弹性盒子模型，把输入框、搜索、重置、新增按钮放在同一行排列
```



##### 3、最终实现源码

```js
<%--
  Created by IntelliJ IDEA.
  User: lcy
  Date: 2021-08-19
  Time: 20:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>Title</title>
    <link rel="stylesheet" href="../../lib/layui-v2.6.3/css/layui.css" media="all">
    <link rel="stylesheet" href="../../lib/bootstrap/bootstrap.min.css" media="all">
  </head>
  <body class="m-3" style="font-size: 0.9rem;">
    <div class="d-flex">
      <div class="d-flex justify-content-center align-items-center">
        <label style="width: 60px;margin-bottom: 0px;">电话:</label>
        <input type="text" class="form-control form-control-sm" id="formGroupExampleInput" placeholder="请输入电话号码">
      </div>
      <button type="button" style="margin-left: 1rem;" class="layui-btn layui-btn-primary layui-btn-sm">
        <i class="layui-icon layui-icon-search"></i>搜索
      </button>
      <button type="button" style="margin-left: 1rem;border-color: #FF7670;color: #FF7670;"
              class="layui-btn layui-btn-primary layui-btn-sm"><i
        class="layui-icon layui-icon-close"></i>重置
      </button>
      <button type="button" class="layui-btn layui-btn-sm layui-btn-normal"><i
        class="layui-icon layui-icon-addition"></i>新增
      </button>
    </div>
    <script src="../../lib/layui-v2.6.3/layui.js" charset="utf-8"></script>
  </body>
</html>

```



#### 第12讲 用户管理列表制作

##### 1、本讲效果

![](images\11-1.png)



##### 2、实现

```js
<%--
  Created by IntelliJ IDEA.
  User: lcy
  Date: 2021-08-20
  Time: 12:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>Title</title>
    <link rel="stylesheet" href="../../lib/layui-v2.6.3/css/layui.css" media="all">
    <link rel="stylesheet" href="../../lib/bootstrap/bootstrap.min.css" media="all">
  </head>
  <body class="m-3" style="font-size: 0.9rem;">
    <div class="form-row">
      <%--       搜索框--%>
      <div class="d-flex col-auto align-items-center;">
        <label style="width: 60px;margin: 0px;" class="d-flex justify-content-center align-items-center">电话:</label>
        <input class="form-control form-control-sm" type="text" placeholder="请输入电话号码">
      </div>
      <button type="button" style="margin-left: 0.8rem;" class="layui-btn layui-btn-primary layui-btn-sm"><i
        class="layui-icon layui-icon-search"></i>
        搜索
      </button>
      <button type="button" style="margin-left: 0.8rem;border-color: #FF7670;color: #FF7670;"
              class="layui-btn layui-btn-primary layui-btn-sm"><i
        class="layui-icon layui-icon-close"></i>
        重置
      </button>
      <button type="button" class="layui-btn layui-btn-sm layui-btn-normal"><i
        class="layui-icon layui-icon-addition"></i>新增
      </button>
    </div>
    <%--    表格挂载的元素--%>
    <table id="usertable" lay-filter="usertable"></table>
    <%--    头部工具栏--%>
    <script type="text/html" id="headertool">
      <div class="layui-btn-container">
        <button class="layui-btn layui-btn-sm layui-btn-danger" lay-event="deleteAll">删除</button>
      </div>
    </script>
    <%--    操作栏按钮--%>
    <script type="text/html" id="linetool">
      <a lay-event="edit" class="layui-btn layui-btn-sm">编辑</a>
      <a lay-event="delete" class="layui-btn layui-btn-sm layui-btn-danger">删除</a>
    </script>
    <script src="../../lib/layui-v2.6.3/layui.js" charset="utf-8"></script>
    <script>
        //加载table模块
        layui.use(['table'], function () {
            //接受加载的table
            var table = layui.table;
            //渲染表格配置
            table.render({
                elem: '#usertable',//指定挂载的元素
                url: '../../api/table.json',//请求的地址
                height: 'full-80', //表格高度
                toolbar: '#headertool',
                cols: [[ //配置表头
                    {field: 'username', title: '用户名'},
                    {field: 'sex', title: '性别'},
                    {field: 'city', title: '城市'},
                    {field: 'sign', title: '签名'},
                    {field: 'sign',width:150,align:'center', title: '操作', toolbar: '#linetool'}
                ]],
                page: true, //开启分页
                limit: 10, //每页10条
                limits: [10, 20, 30, 40]
            });
            //头部按钮点击事件
            table.on('toolbar(usertable)',function (obj) {
              console.log(obj)
            })
            //行操作按钮点击事件
            table.on('tool(usertable)',function (obj) {
                console.log(obj)
                console.log(obj.event)
                if(obj.event=='edit'){
                    alert('编辑')
                }
                 if(obj.event=='delete'){
                    alert('删除')
                }
            })
        })
    </script>
  </body>
</html>
```



#### 第13讲 新增弹框展示制作

##### 1、课程内容

```js
点击【新增】按钮，弹出新增弹框
```

##### 2、实现技术

```js
layui的弹出层layer
```

##### 3、实现步骤

###### 1、给新增按钮添加id

```js
 <button id='addBtn' type="button" class="layui-btn layui-btn-sm layui-btn-normal"><i
        class="layui-icon layui-icon-addition"></i>新增
      </button>
```

###### 2、给按钮添加点击事件

```js
			//新增按钮点击事件
            $("#addBtn").click(function () {
                var index = layer.open({
                    skin: 'layui-layer-molv',
                     offset: '0px',
                    title:'新增用户',
                    type: 2,
                    area:['650px','350px'],
                    content:'/api/sysUser/addUI',
                    btn:['确定','取消'],
                    btn1:function (index) {
                        console.log(index)
                        console.log(window["layui-layer-iframe" + index])
                         //获取弹框值
                         var res = window["layui-layer-iframe" + index].adddata();
                         console.log(res)
                    },
                    btn2: function (index) {
                      console.log('取消了')
                    }
                })
            });
```

###### 3、SysUserController控制器添加返回页面方法

```js
/**
     * 新增用户页面
     */
    @GetMapping("/addUI")
    public String addUI(){
        return "system/add";
    }
```

##### 4、新增add.jsp页面

```js

```



#### 第14讲 新增用户页面制作

##### 1、新增业务

```js
1、点击用户列表上面的【新增】按钮，弹出新增页面；
2、实现思路：
		<1>给新增按钮添加点击事件
		<2点击事件里面，通过layui的layer模块进行弹框内容的展示>
3、使用技术：layer弹出层、css3弹性盒子模型
```



##### 2、完整布局源码

```js
<%--
  Created by IntelliJ IDEA.
  User: lcy
  Date: 2021-08-21
  Time: 12:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>Title</title>
    <link rel="stylesheet" href="../../lib/layui-v2.6.3/css/layui.css" media="all">
    <link rel="stylesheet" href="../../lib/bootstrap/bootstrap.min.css" media="all">
  </head>
  <body class="" style="font-size: 0.85rem;">
    <form class="layui-form m-3">
      <div class="row mb-3">
        <div class="col d-flex">
          <label style="width: 80px;margin: 0px;" class="control-label d-flex align-items-center">电话:</label>
          <input name="phone" class="form-control form-control-sm" type="text" value="" placeholder="请输入电话"/>
        </div>
        <div class="col d-flex">
          <label style="width: 80px;margin: 0px;" class="control-label d-flex align-items-center">邮箱:</label>
          <input name="phone" type="text" class="form-control form-control-sm" value="" placeholder="请输入邮箱地址"/>
        </div>
      </div>
      <div class="row mb-3">
        <div class="col d-flex">
          <label style="width: 80px;margin: 0px;" class="control-label d-flex align-items-center">账户:</label>
          <input name="phone" class="form-control form-control-sm" type="text" value="" placeholder="请输入账户"/>
        </div>
        <div class="col d-flex">
          <label style="width: 80px;margin: 0px;" class="control-label d-flex align-items-center">密码:</label>
          <input name="phone" type="text" class="form-control form-control-sm" value="" placeholder="请输入密码"/>
        </div>
      </div>
      <div class="row mb-3">
        <div class="col-auto d-flex">
          <label style="width: 80px;margin: 0px;" class="control-label d-flex align-items-center">状态:</label>
          <div class="input-group">
            <input type="radio" value="1" title="启用"/>
            <input type="radio" value="2" title="停用"/>
          </div>
        </div>
      </div>
    </form>
    <script src="../../lib/jquery-3.4.1/jquery-3.4.1.min.js" charset="utf-8"></script>
    <script src="../../lib/layui-v2.6.3/layui.js" charset="utf-8"></script>
  </body>
</html>

```



#### 第15讲 表单验证和数据获取

##### 1、实现功能

```js
1、点击弹框的确定按钮，如果没有填数据的，需要做信息提示；
2、点击弹框的确定按钮，获取到add.jsp页面的数据
```

##### 2、add.jsp页面js源码

```js
<script>
        var layer = null;
        layui.use('layer', function () {
            layer = layui.layer;
        })
        var adddata = function () {
            if (!$("#phone").val()) {
                layer.msg('请填写电话!');
                return;
            }
            if (!$("#email").val()) {
                layer.msg('请填写邮箱!');
                return;
            }
            if (!$("#username").val()) {
                layer.msg('请填写登录账户!');
                return;
            }
            if (!$("#password").val()) {
                layer.msg('请填写登录密码!');
                return;
            }
            if (!$('input[name="status"]:checked').val()) {
                layer.msg("请选择用户状态!");
                return;
            }
            return {
                phone: $("#phone").val(),
                email: $("#email").val(),
                username: $("#username").val(),
                password: $("#password").val(),
                status: $('input[name="status"]:checked').val(),
            }
        }
    </script>
```

##### 3、user.jsp弹框确定按钮获取值

```js
 btn1:function (index) {
    console.log(index)
    console.log(window["layui-layer-iframe" + index])
    var res = window["layui-layer-iframe" + index].adddata();
    console.log(res)
},
```



#### 第16讲 通用工具封装讲解

##### 1、http.js工具

```js
/*http请求工具*/
var http = (function () {
    var core = {};
    // post请求
    core.post = function (url, parms, callback, async) {
        $.ajax({
            url: url,
            cache: false,
            async: async == undefined ? true : async,
            data: parms,
            type: "POST",
            contentType: 'application/x-www-form-urlencoded; charset=UTF-8',
            success: function (data) {
                if (typeof callback == "function") {
                    callback(data);
                }
            },
            error:function (XMLHttpRequest, textStatus, errorThrown) {
                if(XMLHttpRequest.status==403){
                    layer.msg("您没有权限访问，请联系管理员！")
                }else if(XMLHttpRequest.status==500){
                    layer.msg("服务器内部错误！")
                }else{
                    layer.msg("服务器未知错误！")
                }
            }
        });
    };
    //get请求
    core.get = function (url, parms, callback, async) {
        $.ajax({
            url: url,
            cache: false,
            async: async == undefined ? true : async,
            data: parms,
            type: "GET",
            contentType: 'application/x-www-form-urlencoded; charset=UTF-8',
            success: function (data) {
                if (typeof callback == "function") {
                    callback(data);
                }
            },
            error:function (XMLHttpRequest, textStatus, errorThrown) {
                if(XMLHttpRequest.status==403){
                    layer.msg("您没有权限访问，请联系管理员！")
                }else if(XMLHttpRequest.status==500){
                    layer.msg("服务器内部错误！")
                }else{
                    layer.msg("服务器未知错误！")
                }
            }
        });
    };
    return core;
})(http, window);

```

##### 2、ResultVo返回进一步封装

###### 2.1、返回值封装ResultVo

```js
package com.itmk.common;

import lombok.AllArgsConstructor;
import lombok.Data;

@Data
@AllArgsConstructor
public class ResultVo<T> {
    //返回提示信息
    private String msg;
    //返回的状态码
    private int code;
    //返回的数据
    private T data;
}

```

###### 2.2、返回状态码工具类  StatusCode

```js
package com.itmk.common;

/**
 * 返回状态码
 */
public class StatusCode {
    //返回成功
    public static final int SUCCESS_CODE = 200;
    //错误状态码
    public static final int ERROR_CODE = 500;
    //无权限
    public static final int NO_LOGIN = 600;
    public static final int NO_AUTH = 700;
}
```

###### 2.3、返回工具封装 ResultUtils

```js
package com.itmk.common;


import java.util.List;

/**
 * 数据返回工具类
 */
public class ResultUtils {
    /**
     * 无参数返回
     * @return
     */
    public static ResultVo succcess() {
        return Vo(null, StatusCode.SUCCESS_CODE, null);
    }
    public static ResultVo success(String msg){
        return Vo(msg,StatusCode.SUCCESS_CODE,null);
    }
    /**
     * 返回带参数
     * @param msg
     * @param data
     * @return
     */
    public static ResultVo success(String msg,Object data){
        return Vo(msg,StatusCode.SUCCESS_CODE,data);
    }
    public static ResultVo success(String msg,int code,Object data){
        return Vo(msg,code,data);
    }
    public static ResultVo Vo(String msg, int code, Object data) {
        return new ResultVo(msg, code, data);
    }

    /**
     * 错误返回
     * @return
     */
    public static ResultVo error(){
        return Vo(null,StatusCode.ERROR_CODE,null);
    }
    public static ResultVo error(String msg){
        return Vo(msg,StatusCode.ERROR_CODE,null);
    }
    public static ResultVo error(String msg,int code,Object data){
        return Vo(msg,code,data);
    }
    public static ResultVo error(String msg,int code){
        return Vo(msg,code,null);
    }
    public static ResultVo error(String msg,Object data){
        return Vo(msg, StatusCode.ERROR_CODE,data);
    }

    /*layui表格分页集*/
    public static ResultMap pageResult(Integer code, String msg, List list, Long total){
        return new ResultMap(code, msg, list, total);
    }
}
```

###### 2.4、Layui表格数据工具返回工具

```js
package com.itmk.common;

import lombok.AllArgsConstructor;
import lombok.Data;

/**
 * layui返回值
 * @param <T>
 */
@Data
@AllArgsConstructor
public class ResultMap<T> {
    private int code;

    private String msg;

    private T data;

    private long count;

}

```



#### 第17讲 新增用户接口开发与数据对接



##### 1、新增思路

```js
1、前端表单验证通过，提交表单；通过Ajax发送请求到后端；
2、后端接口：需要验证用户名是否被占用；
```



##### 2、SysUserMapper层新建如下接口

 新增用户的接口 ：用户数据的入库

 根据用户名查询用户的接口：查询用户名是否被占用

```js
package com.itmk.web.sys_user.mapper;

import com.itmk.web.sys_user.entity.SysUser;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface SysUserMapper {
    //查询所有的用户
    List<SysUser> getUserList();
    //新增用户
    boolean add(@Param("user") SysUser user);
    //根据用户名查询用户是否被注册
    SysUser getUserByName(@Param("username") String username);
}

```



##### 3、SysUserMapper映射文件编写

```js
<?xml version="1.0" encoding="utf-8" ?>
<!DOCTYPE mapper
        PUBLIC "-//mybatis.org//DTD Mapper 3.0//EN"
        "http://mybatis.org/dtd/mybatis-3-mapper.dtd">
<mapper namespace="com.itmk.web.sys_user.mapper.SysUserMapper">
    <resultMap id="sysUserMap" type="com.itmk.web.sys_user.entity.SysUser">
        <id property="userId" column="user_id"></id>
        <result property="username" column="username"></result>
        <result property="password" column="password"></result>
        <result property="phone" column="phone"></result>
        <result property="email" column="email"></result>
        <result property="status" column="status"></result>
        <result property="isAdmin" column="is_admin"></result>
    </resultMap>
    <select id="getUserList" resultMap="sysUserMap">
        select * from sys_user
    </select>
    <insert id="add" parameterType="com.itmk.web.sys_user.entity.SysUser">
        insert into sys_user(username,password,phone,email,status,is_admin)
        values (#{user.username},#{user.password},#{user.phone},#{user.email},#{user.status},#{user.isAdmin})
    </insert>
    <select id="getUserByName" resultMap="sysUserMap">
        select * from sys_user
        where username =#{username}
    </select>
</mapper>
```



##### 4、SysUserService层接口编写

新增添加用户 和 根据用户名查询用户的接口

```js
package com.itmk.web.sys_user.service;

import com.itmk.web.sys_user.entity.SysUser;

import java.util.List;

public interface SysUserService {
     //查询所有的用户
    List<SysUser> getUserList();
    //新增用户
    boolean addUser(SysUser sysUser);
    //根据用户名查询用户
    SysUser getUserByName(String username);
}

```

**实现类**

```js
package com.itmk.web.sys_user.service.impl;

import com.itmk.web.sys_user.entity.SysUser;
import com.itmk.web.sys_user.mapper.SysUserMapper;
import com.itmk.web.sys_user.service.SysUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class SysUserServiceImpl implements SysUserService {
//    @Autowired
    @Resource
    private SysUserMapper sysUserMapper;
    @Override
    public List<SysUser> getUserList() {
        return sysUserMapper.getUserList();
    }

    @Override
    public boolean addUser(SysUser sysUser) {
      return   sysUserMapper.add(sysUser);
    }

    @Override
    public SysUser getUserByName(String username) {
        return sysUserMapper.getUserByName(username);
    }
}

```

##### 5、SysUserController控制器编写

```js
package com.itmk.web.sys_user.controller;

import com.itmk.common.ResultUtils;
import com.itmk.common.ResultVo;
import com.itmk.web.sys_user.entity.SysUser;
import com.itmk.web.sys_user.service.SysUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * 系统用户控制器
 */
@Controller
@RequestMapping("/api/sysUser")
public class SysUserController {
    @Autowired
    private SysUserService sysUserService;

    /**
     * 获取全部用户
     */
    @GetMapping("/getUserList")
    @ResponseBody //JSON
    public ResultVo getUserList() {
        List<SysUser> userList = sysUserService.getUserList();
        //构造返回值
        ResultVo vo = new ResultVo("查询成功",200,userList);
//        vo.setMsg("查询成功");
//        vo.setCode(200);
//        vo.setData(userList);
        return vo;
    }
    /**
     * 用户管理页面
     */
    @GetMapping("/index")
    public String index(){
        return "system/user/user";
    }
    /**
     * 新增用户页面
     */
    @GetMapping("/addUI")
    public String addUI(){
        return "system/user/add";
    }
    /**
     * 新增用户
     */
    @PostMapping("/add")
    @ResponseBody
    public ResultVo add(SysUser sysUser){
        //查询用户名是否被注册
        SysUser user = sysUserService.getUserByName(sysUser.getUsername());
        if(user != null){
            return ResultUtils.error("该账户已经被注册!");
        }
        boolean save = sysUserService.addUser(sysUser);
        if(save){
            return ResultUtils.success("新增用户成功!");
        }
        return ResultUtils.error("新增用户失败!");
    }
}

```



##### 6、前端表单提交

```js
			//给新增按钮添加点击事件
            $('#addBtn').click(function () {
                //打开弹框
                layer.open({
                    type: 2, //指定弹出层的类型
                    skin: 'layui-layer-molv', //皮肤
                    content: '/api/sysUser/addUI', //弹框内容，课程里面，是一个页面 add.jsp
                    area: ['650px', '350px'], //指定弹框的宽度和高度
                    title: '新增用户', //指定弹框标题
                    offset: '0px',
                    btn: ['确定', '取消'],//弹框的按钮
                    btn1: function (index) {
                        var res = window["layui-layer-iframe" + index].adddata();
                        console.log(res)
                        http.post("/api/sysUser/add", res, function (data) {
                            console.log(data)
                            layer.msg(data.msg)
                        })
                    },
                    btn2: function (index) {
                        layer.msg('取消按钮')
                    }
                })
            });
```



#### 第18讲 新增用户表单验证失效解决

1、表单验证未通过，但是数据已经存到数据库;

2、账户被占用，没有提示信息；



#### 第19讲 用户列表接口开发与数据对接



##### 1、确定返回的数据格式

layui表格需要的数据格式，可以根据官网得知  https://www.layui.com/doc/modules/table.html#async

```js
{
  "code": 0,
  "msg": "",
  "count": 1000,
  "data": [{}, {}]
}


注意事项：格式一定要跟上面的字段对应，并且code返回的值必须是 0 
```



##### 2、后端定义返回的数据格式

```js
package com.itmk.common;


import lombok.AllArgsConstructor;
import lombok.Data;

/**
 * layui table返回值定义
 * @param <T>
 */
@Data
@AllArgsConstructor
public class ResultMap<T> {
    private int code;

    private String msg;

    private T data;

    private long count;

}
```



##### 3、分页参数的确定

layui默认的分页参数为   

**page:当前第几页；   **

**limit :  每页查询的条数**;

如果需要修改layui默认的分页参数，根据官网地址  https://www.layui.com/doc/modules/table.html#async  修改request里面的pageName和limitName即可

```js
table.render({
  elem: '#demp'
  ,url: ''
  ,request: {
    pageName: 'curr' //页码的参数名称，默认：page
    ,limitName: 'nums' //每页数据量的参数名，默认：limit
  }
  //,…… //其他参数
});    
```



##### 4、pageHelper分页插件的使用

4.1、在项目的pom.xml加入如下所示的依赖

```js
		<!-- mybatis分页插件 -->
        <dependency>
            <groupId>com.github.pagehelper</groupId>
            <artifactId>pagehelper</artifactId>
            <version>5.1.8</version>
        </dependency>
```

4.2、在mybatis配置文件配置分页插件

```js
<?xml version="1.0" encoding="UTF-8" ?>
<!DOCTYPE configuration
        PUBLIC "-//mybatis.org.//DTD Config 3.0//EN"
        "http://mybatis.org/dtd/mybatis-3-config.dtd">

<!-- mybatis 的 主配置文件-->
<configuration>
    <settings>
        <!--配置控制台打印sql语句-->
        <setting name="logImpl" value="STDOUT_LOGGING"/>
    </settings>
    <plugins>
        <!-- com.github.pagehelper为PageHelper类所在包名 -->
        <plugin interceptor="com.github.pagehelper.PageInterceptor">
            <!-- 指定数据库为mysql-->
            <property name="helperDialect" value="mysql"/>
            <!--配置分页参数合理化-->
            <property name="reasonable" value="true"/>
        </plugin>
    </plugins>
</configuration>
```



##### 5、新建参数接受类

该类用于接收前端查询用户列表时，传递的 分页参数和 搜索时的关键字参数；在com.itmk.web.sys_user.entity包新建 UserParm类，如下所示

```js
package com.itmk.web.sys_user.entity;

import lombok.Data;

import java.io.Serializable;
@Data
public class UserParm implements Serializable {
    private Integer page;
    private Integer limit;
    private String phone;
}
```



##### 6、新建mapper层getUserTableList()方法，如下所示

```js
package com.itmk.web.sys_user.mapper;

import com.github.pagehelper.Page;
import com.itmk.web.sys_user.entity.SysUser;
import com.itmk.web.sys_user.entity.UserParm;
import org.apache.ibatis.annotations.Param;
import java.util.List;

public interface SysUserMapper{
    //查询所有的用户
    List<SysUser> getUserList();
    //新增用户
    boolean addUser(@Param("user") SysUser user);
    //根据用户名查询账户是否被占用
    SysUser getUserByName(@Param("username") String username);
    //查询表格数据
    List<SysUser> getUserTableList(@Param("parm") UserParm parm);
}
```



##### 7、新建映射文件

在SysUserMapper.xml文件新增如下查询语句

```js
	<select id="getUserTableList" resultMap="sysUserMap">
        select * from sys_user
        where 1=1
        <if test="parm.phone !=null and parm.phone != ''">
            and phone like concat('%',#{parm.phone},'%')
        </if>
    </select>
```



##### 8、新建service层接口方法getUserTableList

```js
	//查询用户列表
    List<SysUser> getUserTableList(UserParm parm);
```

**实现类**

```js
 	@Override
    public List<SysUser> getUserTableList(UserParm parm) {
        //分页参数的设置
        PageHelper.startPage(parm.getPage(),parm.getLimit());
        return sysUserMapper.getUserTableList(parm);
    }
```



##### 9、控制器的编写

在SysUserController控制器添加如下方法，注意此处返回json数据,需要添加@ResponseBody注解；并且返回的状态码必须是 0

```js
	@GetMapping("/list")
    @ResponseBody
    public ResultMap getUserList(UserParm parm){
        List<SysUser> list = sysUserService.getUserTableList(parm);
        PageInfo<SysUser> page = new PageInfo<>(list);
        return ResultUtils.pageResult(StatusCode.SUCCESS_LAYUI_CODE,"查询成功",page.getList(),page.getTotal());
    }
```



##### 10、前端user.jsp页面对接

```js
<%--
  Created by IntelliJ IDEA.
  User: lcy
  Date: 2021-08-20
  Time: 12:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>Title</title>
    <link rel="stylesheet" href="../../lib/layui-v2.6.3/css/layui.css" media="all">
    <link rel="stylesheet" href="../../lib/bootstrap/bootstrap.min.css" media="all">
  </head>
  <body class="m-3" style="font-size: 0.9rem;">
    <div class="form-row">
      <%--       搜索框--%>
      <div class="d-flex col-auto align-items-center;">
        <label style="width: 60px;margin: 0px;" class="d-flex justify-content-center align-items-center">电话:</label>
        <input id="phone" class="form-control form-control-sm" type="text" placeholder="请输入电话号码">
      </div>
      <button id="searchBtn" type="button" style="margin-left: 0.8rem;"
              class="layui-btn layui-btn-primary layui-btn-sm"><i
        class="layui-icon layui-icon-search"></i>
        搜索
      </button>
      <button id="resetBtn" type="button" style="margin-left: 0.8rem;border-color: #FF7670;color: #FF7670;"
              class="layui-btn layui-btn-primary layui-btn-sm"><i
        class="layui-icon layui-icon-close"></i>
        重置
      </button>
      <button id="addBtn" type="button" class="layui-btn layui-btn-sm layui-btn-normal"><i
        class="layui-icon layui-icon-addition"></i>新增
      </button>
    </div>
    <%--    表格挂载的元素--%>
    <table id="usertable" lay-filter="usertable"></table>
    <%--    头部工具栏--%>
    <script type="text/html" id="headertool">
      <div class="layui-btn-container">
        <button class="layui-btn layui-btn-sm layui-btn-danger" lay-event="deleteAll">删除</button>
      </div>
    </script>
    <%--    操作栏按钮--%>
    <script type="text/html" id="linetool">
      <a lay-event="edit" class="layui-btn layui-btn-sm">编辑</a>
      <a lay-event="delete" class="layui-btn layui-btn-sm layui-btn-danger">删除</a>
    </script>
    <script src="../../lib/jquery-3.4.1/jquery-3.4.1.min.js" charset="utf-8"></script>
    <script src="../../lib/layui-v2.6.3/layui.js" charset="utf-8"></script>
    <script src="../../js/http.js" charset="utf-8"></script>
    <script>
        //加载table模块
        layui.use(['table', 'layer'], function () {
            //接受加载的table
            var table = layui.table;
            //获取jquery
            var $ = layui.jquery;
            //获取layer弹出层
            var layer = layui.layer;
            //渲染表格配置
            table.render({
                elem: '#usertable',//指定挂载的元素
                url: '/api/sysUser/list',//请求的地址
                height: 'full-80', //表格高度
                toolbar: '#headertool',
                cols: [[ //配置表头
                    {field: 'username', title: '用户名'},
                    {field: 'phone', title: '电话'},
                    {field: 'email', title: '邮箱'},
                    {field: 'status', title: '状态'},
                    {field: 'sign', width: 150, align: 'center', title: '操作', toolbar: '#linetool'}
                ]],
                page: true, //开启分页
                limit: 10, //每页10条
                limits: [10, 20, 30, 40]
            });
            //头部按钮点击事件
            table.on('toolbar(usertable)', function (obj) {
                console.log(obj)
            })
            //行操作按钮点击事件
            table.on('tool(usertable)', function (obj) {
                console.log(obj)
                console.log(obj.event)
                if (obj.event == 'edit') {
                    alert('编辑')
                }
                if (obj.event == 'delete') {
                    alert('删除')
                }
            });
            //给新增按钮添加点击事件
            $('#addBtn').click(function () {
                //打开弹框
                layer.open({
                    type: 2, //指定弹出层的类型
                    skin: 'layui-layer-molv', //皮肤
                    content: '/api/sysUser/addUI', //弹框内容，课程里面，是一个页面 add.jsp
                    area: ['650px', '350px'], //指定弹框的宽度和高度
                    title: '新增用户', //指定弹框标题
                    offset: '0px',
                    btn: ['确定', '取消'],//弹框的按钮
                    btn1: function (index) {
                        //表单数据
                        var parms = window["layui-layer-iframe" + index].adddata();
                        console.log('111111111')
                        console.log(parms)
                        if (parms) {
                            //提交表单，通过ajax
                            http.post("/api/sysUser/add", parms, function (data) {
                                console.log(data);
                                if (data.code == 200) {
                                    //刷新表格
                                    reload();
                                    //关闭弹框
                                    layer.close(index);
                                }
                            })
                        }
                    },
                    btn2: function (index) {
                        layer.msg('取消按钮')
                    }
                })
            });
            //搜索按钮点击事件
            $("#searchBtn").click(function () {
                reload();
            })
            //重置按钮
            $("#resetBtn").click(function () {
                //清空输入框的值
                $("#phone").val('');
                //重新加载表格
                reload();
            })

            //重载表格
            function reload() {
                table.reload('usertable', {
                    page: {
                        curr: 1 //从第一页开始查询
                    },
                    where: {
                        phone: $("#phone").val()
                    }
                })
            }
        })
    
    </script>
  </body>
</html>


```

#### 第20讲 编辑用户弹框讲解

##### 1、在行按钮点击事件的编辑事件中，打开弹框

```js
			//行操作按钮点击事件
            table.on('tool(usertable)', function (obj) {
                console.log(obj)
                console.log(obj.event)
                if (obj.event == 'edit') {
                   //打开编辑页面弹框
                    layer.open({
                        type:2,
                        skin:'layui-layer-molv', //皮肤
                        content:'/api/sysUser/editUI',
                        area:['650px','350px'],//弹框的宽度和高度
                        title:'编辑用户',//弹框的标题
                        offset:'0px',//离顶部的距离
                        btn:['确定','取消'],
                        btn1:function (index) {
                          layer.close(index)
                        },
                        btn2:function (index) {

                        }
                    })
                }
                if (obj.event == 'delete') {
                    alert('删除')
                }
            });
```

##### 2、新建弹框请求页面地址

在SysUserController控制器添加 editUI()方法

```js
/**
     * 编辑页面
     */
    @GetMapping("/editUI")
    public String editUI(){
        return "system/user/edit";
    }
```



##### 3、新建edit.jsp页面

```js
<%--
  Created by IntelliJ IDEA.
  User: lcy
  Date: 2021-08-23
  Time: 13:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>Title</title>
    <link rel="stylesheet" href="../../lib/layui-v2.6.3/css/layui.css" media="all">
    <link rel="stylesheet" href="../../lib/bootstrap/bootstrap.min.css" media="all">
  </head>
  <body>
    <div>编辑用户页面</div>
    <script src="../../lib/jquery-3.4.1/jquery-3.4.1.min.js" charset="utf-8"></script>
    <script src="../../lib/layui-v2.6.3/layui.js" charset="utf-8"></script>
  </body>
</html>
```





#### 第21讲 编辑用户页面制作

##### 1、在行按钮点击事件的编辑事件中，打开弹框

```js
			//行操作按钮点击事件
            table.on('tool(usertable)', function (obj) {
                console.log(obj)
                console.log(obj.event)
                if (obj.event == 'edit') {
                   //打开编辑页面弹框
                    layer.open({
                        type:2,
                        skin:'layui-layer-molv', //皮肤
                        content:'/api/sysUser/editUI',
                        area:['650px','350px'],//弹框的宽度和高度
                        title:'编辑用户',//弹框的标题
                        offset:'0px',//离顶部的距离
                        btn:['确定','取消'],
                        btn1:function (index) {
                          layer.close(index)
                        },
                        btn2:function (index) {

                        }
                    })
                }
                if (obj.event == 'delete') {
                    alert('删除')
                }
            });
```

##### 2、新建弹框请求页面地址

在SysUserController控制器添加 editUI()方法

```js
/**
     * 编辑页面
     */
    @GetMapping("/editUI")
    public String editUI(){
        return "system/user/edit";
    }
```



##### 3、新建edit.jsp页面

```js
<%--
  Created by IntelliJ IDEA.
  User: lcy
  Date: 2021-08-22
  Time: 20:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
  <head>
    <title>Title</title>
    <link rel="stylesheet" href="../../lib/layui-v2.6.3/css/layui.css" media="all">
    <link rel="stylesheet" href="../../lib/bootstrap/bootstrap.min.css" media="all">
  </head>
  <body class="m-3" style="font-size: 0.9rem;">
    <form class="layui-form">
      <div class="row mb-3">
        <div class="col d-flex">
          <label style="width: 80px;margin: 0px;" class="d-flex align-items-center"><span style="color:#FF7670;">*
          </span>电话:</label>
          <input type="text" id="phone" class="form-control form-control-sm" placeholder="请输入电话"/>
        </div>
        <div class="col d-flex">
          <label style="width: 80px;margin: 0px;" class="d-flex align-items-center"><span style="color:#FF7670;">*</span>邮箱:</label>
          <input type="text" value="" id="email" placeholder="请输入邮箱" class="form-control form-control-sm"/>
        </div>
      </div>
      <div class="row mb-3">
        <div class="col d-flex">
          <label style="width: 80px;margin: 0px;" class="d-flex align-items-center"><span style="color:#FF7670;">*
          </span>账户:</label>
          <input type="text" id="username" class="form-control form-control-sm" placeholder="请输入账户"/>
        </div>
        <div class="col d-flex">
          <label style="width: 80px;margin: 0px;" class="d-flex align-items-center"><span style="color:#FF7670;">*
          </span>密码:</label>
          <input type="password" value="" id="password" placeholder="请输入密码" class="form-control form-control-sm"/>
        </div>
      </div>
      <div class="row">
        <div class="col-auto d-flex align-items-center">
          <label style="width: 80px;margin: 0px;"><span class="color:#FF7670;">*</span>状态:</label>
          <div class="input-group">
            <input type="radio" value="1" name="status" title="启用" />
            <input type="radio" value="2" name="status" title="停用" />
          </div>
        </div>
      </div>
    </form>
     <script src="../../lib/jquery-3.4.1/jquery-3.4.1.min.js" charset="utf-8"></script>
    <script src="../../lib/layui-v2.6.3/layui.js" charset="utf-8"></script>
  </body>
</html>

```



#### 第22讲 编辑用户数据回显

##### 1、编辑思路

```js
1、点击编辑按钮的时候，需要把当前点击的用户id传递给后端
2、后的根据用户id查询当前需要编辑的用户信息
3、前端显示要编辑的用户信息
4、确定编辑，提交表单数据，到后端进行数据库的更新处理
```



##### 2、编辑回显

点击编辑时候，请求页面的请求地址，需要传递当前编辑的用户的id



##### 3、根据id查询用户信息

###### 3.1、用户mapper层新建方法 getUserById()

```js
 	//根据用户id查询用户
    SysUser getUserById(@Param("userId") String userId);
```

###### 3.2、编写映射文件

```js
	<select id="getUserById" resultMap="sysUserMap">
        select * from sys_user
        where user_id =#{userId}
    </select>
```

###### 3.3、编写service层接口

```js
	//根据用户id查询用户
    SysUser getUserById(String userId);
```

###### 3.4、service实现类

```js
	@Override
    public SysUser getUserById(String userId) {
        return sysUserMapper.getUserById(userId);
    }
```

###### 3.5、控制器

```js
	/**
     * 编辑用户页面
     */
    @GetMapping("/editUI")
    public String editUI(String userId, ModelMap map){
        SysUser user = sysUserService.getUserById(userId);
        map.put("user",user);
        return "system/user/edit";
    }
```

##### 4、页面回显数据

```js
<%--
  Created by IntelliJ IDEA.
  User: lcy
  Date: 2021-08-23
  Time: 13:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>Title</title>
    <link rel="stylesheet" href="../../lib/layui-v2.6.3/css/layui.css" media="all">
    <link rel="stylesheet" href="../../lib/bootstrap/bootstrap.min.css" media="all">
  </head>
  <body class="m-3" style="font-size: 0.8rem;">
    <form class="layui-form">
      <div class="row mb-3">
        <div class="col d-flex align-items-center">
          <label style="width: 80px;margin: 0px;" class="d-flex align-items-center"><span style="color: #FF7670;">*
          </span>电话:</label>
          <input type="text" value="${user.phone}" class="form-control form-control-sm"/>
          <input type="hidden" id="userId" value="${user.userId}" class="form-control form-control-sm"/>
        </div>
        <div class="col d-flex align-items-center">
          <label style="width: 80px;margin: 0px;" class="d-flex align-items-center"><span style="color: #FF7670;">*</span>邮箱:</label>
          <input type="text" value="${user.email}" class="form-control form-control-sm"/>
        </div>
      </div>
      <div class="row mb-3">
        <div class="col d-flex align-items-center">
          <label style="width: 80px;margin: 0px;" class="d-flex align-items-center"><span style="color: #FF7670;">*
          </span>账号:</label>
          <input type="text" value="${user.username}" class="form-control form-control-sm"/>
        </div>
        <div class="col d-flex align-items-center">
          <label style="width: 80px;margin: 0px;" class="d-flex align-items-center"><span style="color: #FF7670;">*
          </span>密码:</label>
          <input type="password" value="${user.password}" class="form-control form-control-sm"/>
        </div>
      </div>
      <div class="row mb-3">
        <div class="col-auto d-flex align-items-center">
           <label style="width: 80px;margin: 0px;" class="d-flex align-items-center"><span style="color: #FF7670;">*
          </span>状态:</label>
          <div class="input-group">
            <input name="status"  ${user.status == true?'checked':''} type="radio" title="启用" value="1" />
            <input name="status"  ${user.status == false?'checked':''} type="radio" title="停用" value="2" />
          </div>
        </div>
      </div>
    </form>
    <script src="../../lib/jquery-3.4.1/jquery-3.4.1.min.js" charset="utf-8"></script>
    <script src="../../lib/layui-v2.6.3/layui.js" charset="utf-8"></script>
  </body>
</html>

```



#### 第23讲 编辑用户接口开发与数据对接

##### 1、编辑思路

```js
1、点击编辑按钮的时候，需要把当前点击的用户id传递给后端
2、后的根据用户id查询当前需要编辑的用户信息
3、前端显示要编辑的用户信息
4、确定编辑，提交表单数据，到后端进行数据库的更新处理,后端需要验证用户名是否被占用
```



##### 2、编写mapper层接口

```js
	//编辑用户
    boolean updateById(@Param("user") SysUser user);
```



##### 3、编写映射文件

```js
	<update id="updateById">
        update sys_user
        <set>
            <if test="user.username != null and user.username !=''">
                username =#{user.username},
            </if>
            <if test="user.password != null and user.password !=''">
                password =#{user.password},
            </if>
            <if test="user.phone != null and user.phone !=''">
                phone =#{user.phone},
            </if>
            <if test="user.email != null and user.email !=''">
                email =#{user.email},
            </if>
            <if test="user.status != null and user.status !=''">
                status =#{user.status},
            </if>
        </set>
        where user_id =#{user.userId}
    </update>
```

##### 4、编写service层接口

```js
 	//编辑用户
    boolean updateById(SysUser user);
```

##### 5、service实现类

```js
	@Override
    public boolean updateById(SysUser user) {
        return sysUserMapper.updateById(user);
    }
```

##### 6、控制器层

返回编辑页面

```js
    /**
     * 编辑保存
     */
    @PostMapping("/update")
    @ResponseBody
    public ResultVo updateUser(SysUser sysUser){
         //根据用户账户查询该账户是否被占用
        SysUser user = sysUserService.getUserByName(sysUser.getUsername());
        if (user != null && !user.getUserId().equals(sysUser.getUserId())) {
            return ResultUtils.error("该账户名已经被占用!");
        }
        boolean b = sysUserService.updateById(sysUser);
        if(b){
            return ResultUtils.success("编辑用户成功!");
        }
        return ResultUtils.error("编辑用户失败!");
    }
```

##### 7、edit.jsp页面

```js
<%--
  Created by IntelliJ IDEA.
  User: lcy
  Date: 2021-08-23
  Time: 13:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>Title</title>
    <link rel="stylesheet" href="../../lib/layui-v2.6.3/css/layui.css" media="all">
    <link rel="stylesheet" href="../../lib/bootstrap/bootstrap.min.css" media="all">
  </head>
  <body class="m-3" style="font-size: 0.8rem;">
    <form class="layui-form">
      <div class="row mb-3">
        <div class="col d-flex align-items-center">
          <label style="width: 80px;margin: 0px;" class="d-flex align-items-center"><span style="color: #FF7670;">*
          </span>电话:</label>
          <input type="text" id="phone" value="${user.phone}" class="form-control form-control-sm"/>
          <input type="hidden" id="userId" value="${user.userId}" class="form-control form-control-sm"/>
        </div>
        <div class="col d-flex align-items-center">
          <label style="width: 80px;margin: 0px;" class="d-flex align-items-center"><span style="color: #FF7670;">*</span>邮箱:</label>
          <input type="text" id="email" value="${user.email}" class="form-control form-control-sm"/>
        </div>
      </div>
      <div class="row mb-3">
        <div class="col d-flex align-items-center">
          <label style="width: 80px;margin: 0px;" class="d-flex align-items-center"><span style="color: #FF7670;">*
          </span>账号:</label>
          <input type="text" id="username" value="${user.username}" class="form-control form-control-sm"/>
        </div>
        <div class="col d-flex align-items-center">
          <label style="width: 80px;margin: 0px;" class="d-flex align-items-center"><span style="color: #FF7670;">*
          </span>密码:</label>
          <input type="password" id="password" value="${user.password}" class="form-control form-control-sm"/>
        </div>
      </div>
      <div class="row mb-3">
        <div class="col-auto d-flex align-items-center">
           <label style="width: 80px;margin: 0px;" class="d-flex align-items-center"><span style="color: #FF7670;">*
          </span>状态:</label>
          <div class="input-group">
            <input name="status"  ${user.status == 1?'checked':''} type="radio" title="启用" value="1" />
            <input name="status"  ${user.status == 2?'checked':''} type="radio" title="停用" value="2" />
          </div>
        </div>
      </div>
    </form>
    <script src="../../lib/jquery-3.4.1/jquery-3.4.1.min.js" charset="utf-8"></script>
    <script src="../../lib/layui-v2.6.3/layui.js" charset="utf-8"></script>
    <script>
        var layer = null;
        //加载layui的layer模块
        layui.use('layer', function () {
            //获取layer
            layer = layui.layer;
        })
        var adddata = function () {
            //表单验证
            //获取电话输入框的值
            var phone = $("#phone").val();
            console.log(phone)
            if (!phone) {
                //信息提示
                layer.msg('请输入电话号码');
                return;
            }
            ;
            //邮箱验证
            if (!$("#email").val()) {
                layer.msg("请输入邮箱");
                return;
            }
            //账户验证
            if (!$("#username").val()) {
                layer.msg("请输入账户");
                return;
            }
            //密码验证
            if (!$("#password").val()) {
                layer.msg("请输入密码");
                return;
            }
            //用户状态
            if(!$('input[name="status"]:checked').val()){
                 layer.msg("请选择用户状态");
                return;
            }
            return {
                userId: $("#userId").val(),
                phone: $("#phone").val(),
                email: $("#email").val(),
                username: $("#username").val(),
                password: $("#password").val(),
                status: $('input[name="status"]:checked').val()
            }
        }
    </script>
  </body>
</html>

```

**注意事项：**

```js
编辑后，出现不能保存，报400的错误，主要是因为用户状态  status字段的值类型不对； 前端传给后端的status为字符型，后端接受参数的对象的status为 boolean类型的
```

解决方式：

1、配置文件 jdbc.properties中，在url配置项后面加上 ?tinyInt1isBit=false  如下所示

```js
jdbc.driverClassName=com.mysql.jdbc.Driver
jdbc.url=jdbc:mysql://localhost:3306/ssm-question?tinyInt1isBit=false
jdbc.username=root
jdbc.password=123456
```

2、把实体对象 SysUser中的status类型改为  int 类型 如下所示

```js
package com.itmk.web.sys_user.entity;

import lombok.Data;

import java.io.Serializable;
@Data //自动生成get和set方法
public class SysUser implements Serializable {
    private Long userId;
    private String username;
    private String password;
    private String phone;
    private String email;
    private int status;
    private boolean isAdmin;
}

```

3、前端编辑回显时，用户状态改为如下所示   ${user.status == 1?'checked':''}

```js
		 <div class="input-group">
            <input name="status"  ${user.status == 1?'checked':''} type="radio" title="启用" value="1" />
            <input name="status"  ${user.status == 2?'checked':''} type="radio" title="停用" value="2" />
          </div>
```









##### 8、user.jsp页面

user.jsp页面，行点击事件完整源码

```js
			//行操作按钮点击事件
            table.on('tool(usertable)', function (obj) {
                console.log(obj)
                console.log(obj.event)
                if (obj.event == 'edit') {
                    layer.open({
                        type: 2,
                        skin: 'layui-layer-molv', //皮肤
                        content: '/api/sysUser/editUI?userId=' + obj.data.userId,
                        area: ['650px', '350px'],
                        title: '编辑用户',
                        offset: '0px',
                        btn: ['确定', '取消'],
                        btn1: function (index) {
                            var parms = window["layui-layer-iframe" + index].adddata();
                            console.log('111111111')
                            console.log(parms)
                            if (parms) {
                                //提交表单，通过ajax
                                http.post("/api/sysUser/update", parms, function (data) {
                                    console.log(data);
                                    if (data.code == 200) {
                                        //刷新表格
                                        reload();
                                        //关闭弹框
                                        layer.close(index);
                                    }
                                })
                            }
                        },
                        btn2: function (index) {

                        }
                    })
                }
                if (obj.event == 'delete') {
                    alert('删除')
                }
            });
```





#### 第24讲 删除用户接口开发与数据对接

**删除思路**

```js
1、前端点击删除按钮时，获取到当前点击行的id,传递给后端进行数据删除
2、删除时，需要做信息提示
```



##### 1、编写mapper层接口

```js
	//删除用户
    boolean deleteById(@Param("userId") String userId);
```

##### 2、编写映射文件

```js
	<delete id="deleteById">
        delete from sys_user
        where user_id =#{userId}
    </delete>
```

##### 3、编写service层

```js
	//删除用户
    boolean deleteById(String userId);
```

##### 4、service实现类

```js
	@Override
    public boolean deleteById(String userId) {
        return sysUserMapper.deleteById(userId);
    }
```

##### 5、控制器

```js
 /**
     * 删除用户
     */
    @PostMapping("/delete")
    @ResponseBody
    public ResultVo delete(String userId){
        boolean b = sysUserService.deleteById(userId);
         if(b){
            return ResultUtils.success("删除成功!");
        }
        return ResultUtils.error("删除失败!");
    }
```

##### 6、user.jsp页面删除按钮

```js
					if (obj.event == 'delete') {
                    layer.confirm('确定删除该数据吗?', {icon: 3, title: '系统提示'}, function (index) {
                        //do something
                        let parm = {
                            userId:obj.data.userId
                        }
                        http.post("/api/sysUser/delete",parm,function (data) {
                          if(data.code == 200){
                              layer.msg(data.msg)
                               //刷新表格
                               reload();
                              layer.close(index);
                          }
                        })
                    });
                }
```





#### 第25讲 问卷调查表设计

##### 1、需求

```js
问卷需要有标题、简介、图片、序号、状态；
```

##### 2、表字段

| 字段名称        | 数据类型 | 字段大小 | 是否主键 | 是否为空 | 备注     |
| --------------- | -------- | -------- | -------- | -------- | -------- |
| question_id     | int      | 11       | 是       | 否       | 问卷id   |
| question_title  | varchar  | 255      | 否       | 是       | 问卷标题 |
| question_desc   | text     | 默认     | 否       | 是       | 问卷描述 |
| question_img    | varchar  | 255      | 否       | 是       | 问卷图片 |
| question_order  | int      | 11       | 否       | 是       | 问卷序号 |
| question_status | varchar  | 2        | 否       | 是       | 问卷状态 |



#### 第26讲  问卷列表页面制作



##### 1、新建控制器

新建包com.itmk.web.sys_question.controller 然后新建SysQuestionController控制器

```js
package com.itmk.web.sys_question.controller;

import com.itmk.web.sys_question.service.SysQuestionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * 问卷调查控制器
 */
@Controller
@RequestMapping("/api/sysQuestion")
public class SysQuestionController {
   
    /**
     * 问卷首页
     */
    @GetMapping("/index")
    public String index(){
        return "system/question/index";
    }
}

```



##### 2、修改菜单对应href

把问卷管理的hred修改为  "/api/sysQuestion/index"

```js
		{
          "title": "问卷管理",
          "href": "/api/sysQuestion/index",
          "icon": "fa fa-gears",
          "target": "_self"
        }
```





##### 3、新建前端页面

在system下新建question文件夹，然后新建index.jsp页面

```js
<%--
  Created by IntelliJ IDEA.
  User: lcy
  Date: 2021-08-24
  Time: 20:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>Title</title>
    <link rel="stylesheet" href="../../lib/layui-v2.6.3/css/layui.css" media="all">
    <link rel="stylesheet" href="../../lib/bootstrap/bootstrap.min.css" media="all">
  </head>
  <body style="font-size: 0.8rem;">
    <%--    搜索栏--%>
    <div class="d-flex align-items-center m-3">
      <div class="d-flex align-items-center">
        <span style="width: 100px;">问卷标题:</span>
        <input id="" class="form-control form-control-sm" type="text" value="" placeholder="请输入问卷标题"/>
      </div>
      <button style="margin-left: 1rem;" class="layui-btn layui-btn-sm layui-btn-primary"><i
        class="layui-icon layui-icon-search"></i>搜索
      </button>
      <button style="margin-left: 0.8rem;border-color: #FF7670;color: #FF7670;"
              class="layui-btn layui-btn-sm layui-btn-primary"><i
        class="layui-icon layui-icon-close"></i>重置
      </button>
      <button style="margin-left: 0.8rem;"
              class="layui-btn layui-btn-sm layui-btn-normal"><i
        class="layui-icon layui-icon-addition"></i>新增
      </button>
    </div>
    <%--    表格--%>
    <table id="questintable" lay-filter="questintable"></table>
    <%--    头部按钮--%>
    <script type="text/html" id="headertool">
    
    </script>
    <%--    行工具栏--%>
    <script type="text/html" id="linetool">
      <a lay-event="edit" class="layui-btn layui-btn-sm layui-btn-normal"><i class="layui-icon layui-icon-edit"></i>编辑
      </a>
      <a lay-event="delete" class="layui-btn layui-btn-sm layui-btn-danger"><i
        class="layui-icon layui-icon-close"></i>删除</a>
    </script>
  </body>
  <script src="../../lib/jquery-3.4.1/jquery-3.4.1.min.js" charset="utf-8"></script>
  <script src="../../lib/layui-v2.6.3/layui.js" charset="utf-8"></script>
  <script src="../../js/http.js" charset="utf-8"></script>
  <script>
      layui.use(['table', 'layer'], function () {
          var $ = layui.jquery;
          var table = layui.table;
          var layer = layui.layer;
          //表格渲染
          table.render({
              elem: '#questintable',
              height: 'full-100',
              url: '../../api/table.json',
              toolbar: '#headertool',
              cols: [[
                  {field: 'username', title: '用户名', align: 'center'},
                  {field: 'username', title: '操作', align: 'center', width: 180, toolbar: '#linetool'}
              ]],
              page: true,
              limit: 10,
              limits: [10, 20, 30, 50, 100]
          });
          //监听行工具栏
          table.on('tool(questintable)', function (obj) {
              if (obj.event == 'edit') {
                  layer.msg('编辑')
              }
              if (obj.event == 'delete') {
                  layer.msg('删除')
              }
          })

      })
  </script>
</html>

```



#### 第27讲 新增问卷弹框展示

##### 1、SysQuestionController控制器添加新增页面请求地址  addUI()

```js
package com.itmk.web.sys_question.controller;

import com.itmk.web.sys_question.service.SysQuestionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * 问卷调查控制器
 */
@Controller
@RequestMapping("/api/sysQuestion")
public class SysQuestionController {
    @Autowired
    private SysQuestionService sysQuestionService;

    /**
     * 问卷首页
     */
    @GetMapping("/index")
    public String index() {
        return "system/question/index";
    }
    /**
     * 新增页面
     */
    @GetMapping("/addUI")
    public String addUI() {
        return "system/question/add";
    }
}

```

##### 2、新建新增问卷页面

```
<%--
  Created by IntelliJ IDEA.
  User: lcy
  Date: 2021-08-24
  Time: 21:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>Title</title>
  </head>
  <body>
    新增页面
  </body>
</html>
```

#####  3、给新增按钮添加点击事件

给新增按钮添加 id='addBtn'   并添加如下点击事件，打开弹框

```js
		//新增点击事件
          $("#addBtn").click(function () {
              layer.open({
                  skin:'layui-layer-molv',
                  offset:'0px',
                  title:'新增问卷',
                  type:2,
                  area:['650px','350px'],
                  content:'/api/sysQuestion/addUI',
                  btn:['确定','取消'],
                  btn1:function (index) {
                    layer.msg('确定')
                  },
                  btn2:function (index) {
                    layer.msg('取消')
                  }
              })
          })
```



#### 第28讲 新增页面布局

##### 1、布局原理: CSS3弹性盒子模型



##### 2、页面代码

```css
<%--
  Created by IntelliJ IDEA.
  User: lcy
  Date: 2021-08-25
  Time: 15:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>Title</title>
    <link rel="stylesheet" href="../../lib/layui-v2.6.3/css/layui.css" media="all">
    <link rel="stylesheet" href="../../lib/bootstrap/bootstrap.min.css" media="all">
    <style>
      .layui-upload-img {
        width: 120px;
        height: 120px;
      }
    </style>
  </head>
  <body style="font-size: 0.8rem;">
    <form class="layui-form m-3">
      <div class="d-flex mb-3">
        <div class="col d-flex align-items-center">
          <label style="width: 120px;margin: 0px;"><span>*</span>问卷标题:</label>
          <input id="questionTitle" type="text" value="" class="form-control form-control-sm"/>
        </div>
      </div>
      <div class="d-flex mb-3">
        <div class="col d-flex">
          <label style="width: 120px;margin: 0px;"><span>*</span>问卷序号:</label>
          <input id="questionOrder" type="text" value="" class="form-control form-control-sm"/>
        </div>
      </div>
      <div class="d-flex mb-3">
        <div class="col d-flex align-items-center">
          <label style="width: 120px;margin: 0px;"><span>*</span>问卷状态:</label>
          <div class="input-group">
            <input type="radio" name="questionStatus" value="1" title="启用"/>
            <input type="radio" name="questionStatus" value="0" title="停用"/>
          </div>
        </div>
      </div>
      <div class="d-flex mb-3">
        <div class="col d-flex">
          <label style="width: 120px;"><span>*</span>问卷简介:</label>
          <textarea id="questionDesc" name="desc" placeholder="请输入简介" class="layui-textarea"></textarea>
        </div>
      </div>
      <div id="test1" style="cursor: pointer;color: #FF7670;font-weight: 600;">点我上传图片</div>
      <hr style="margin: 0px 0px 0.5rem 0px;">
      <div class="d-flex">
        <div class="layui-upload">
          <%--          <button type="button" class="layui-btn" id="test1">上传图片</button>--%>
          <div class="layui-upload-list" style="margin: 0px;">
            <img class="layui-upload-img" id="demo1">
            <p id="demoText"></p>
          </div>
        </div>
      </div>
    </form>
    <script src="../../lib/jquery-3.4.1/jquery-3.4.1.min.js" charset="utf-8"></script>
    <script src="../../lib/layui-v2.6.3/layui.js" charset="utf-8"></script>
    <script>
        layui.use(['upload', 'layer'], function () {
            var upload = layui.upload;
            var layer = layui.layer;
            //图片上传
            var uploadInst = upload.render({
                elem: '#test1'
                , url: 'https://httpbin.org/post' //此处用的是第三方的 http 请求演示，实际使用时改成您自己的上传接口即可。
                , before: function (obj) {
                    //预读本地文件示例，不支持ie8
                    obj.preview(function (index, file, result) {
                        $('#demo1').attr('src', result); //图片链接（base64）
                    });
                    layer.msg('上传中', {icon: 16, time: 0});
                }
                , done: function (res) {
                    //如果上传失败
                    if (res.code > 0) {
                        return layer.msg('上传失败');
                    }
                    //上传成功的一些操作
                    //……
                    $('#demoText').html(''); //置空上传失败的状态
                }
                , error: function () {
                    //演示失败状态，并实现重传
                    var demoText = $('#demoText');
                    demoText.html('<span style="color: #FF5722;">上传失败</span> <a class="layui-btn layui-btn-xs demo-reload">重试</a>');
                    demoText.find('.demo-reload').on('click', function () {
                        uploadInst.upload();
                    });
                }
            });
        })
    </script>
  </body>
</html>


```



#### 第29讲 问卷图片上传接口开发

##### 1、数据返回格式确定

根据layui官网文档，得到文件上传返回格式如下所示

https://www.layui.com/doc/modules/upload.html#api

```js
{
  "code": 0
  ,"msg": ""
  ,"data": {
    "src": "http://cdn.layui.com/123.jpg"
  }
}
```

##### 2、后端定义返回格式类

此类根据layui文件上传返回格式定义

```js
package com.itmk.web.sys_image.entity;

import lombok.Data;

import java.io.Serializable;
import java.util.Map;

@Data
public class ResultImg implements Serializable {
    private Integer code;
    private String msg;
    private Map<String,String> data;
}

```

##### 3、文件上传控制器

```js
package com.itmk.web.sys_image.controller;

import com.itmk.common.StatusCode;
import com.itmk.web.sys_image.entity.ResultImg;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;

/**
 * 图片上传控制器
 */
@RestController
@RequestMapping("/api/upload/")
public class ImageUploadController {

    @RequestMapping("/uploadImage")
    public ResultImg uploadImage(@RequestParam("file") MultipartFile file, HttpServletRequest request) {
        String Url = null;
        //获取名字
        String fileName = file.getOriginalFilename();
        //扩展名  aa.png
        String fileExtenionName = fileName.substring(fileName.indexOf("."));
        //生成新的名称
        String newName = UUID.randomUUID().toString() + fileExtenionName;
        String path = request.getSession().getServletContext().getRealPath("/WEB-INF/staticImg");
        File fileDir = new File(path);
        if (!fileDir.exists()) {
            //设置权限
            fileDir.setWritable(true);
            fileDir.mkdirs();
        }
        File targetFile = new File(path, newName);
        try {
            file.transferTo(targetFile);
            Url = "/staticImg/" + targetFile.getName();
        } catch (Exception e) {
            return null;
        }
        ResultImg result = new ResultImg();
        result.setCode(StatusCode.SUCCESS_LAYUI_CODE);
        result.setMsg("图片上传成功");
        Map<String, String> map = new HashMap<>();
        map.put("src", Url);
        result.setData(map);
        return result;
    }
}

```

##### 4、springmvc配置文件配置静态资源访问

4.1、放行静态资源

```js
<mvc:resources location="/WEB-INF/staticImg/" mapping="/staticImg/**"/>
```

4.2、配置文件上传的bean

```js
	<bean id="multipartResolver" class="org.springframework.web.multipart.commons.CommonsMultipartResolver">
        <property name="maxUploadSize" value="1024000"/>
        <!-- 其他属性 -->
    </bean>
```



#### 第30讲 新增问卷接口开发

##### 1、解决上节课加载中问题

##### 2、新增的思路

##### 3、新建实体类

新建包com.itmk.web.sys_question.entity，然后新建SysQuestion类

```js
package com.itmk.web.sys_question.entity;

import lombok.Data;

import java.io.Serializable;
@Data
public class SysQuestion implements Serializable {
    private Long questionId;
    private String questionTitle;
    private String questionDesc;
    private String questionImg;
    private Integer questionOrder;
    private String questionStatus;
}

```



##### 4、新建mapper层接口

新建包 com.itmk.web.sys_question.mapper 然后新建SysQuestionMapper接口

```js
package com.itmk.web.sys_question.mapper;

import com.itmk.web.sys_question.entity.SysQuestion;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface SysQuestionMapper {
    //新增问卷
    boolean addQuestion(@Param("sysQuestion") SysQuestion sysQuestion);
}

```

##### 5、新建mapper映射文件 SysQuestionMapper.xml

```js
<?xml version="1.0" encoding="utf-8" ?>
<!DOCTYPE mapper
        PUBLIC "-//mybatis.org//DTD Mapper 3.0//EN"
        "http://mybatis.org/dtd/mybatis-3-mapper.dtd">
<mapper namespace="com.itmk.web.sys_question.mapper.SysQuestionMapper">
    <resultMap id="sysQuestionMap" type="com.itmk.web.sys_question.entity.SysQuestion">
        <id property="questionId" column="question_id"></id>
        <result property="questionTitle" column="question_title"></result>
        <result property="questionDesc" column="question_desc"></result>
        <result property="questionImg" column="question_img"></result>
        <result property="questionOrder" column="question_order"></result>
        <result property="questionStatus" column="question_status"></result>
    </resultMap>
    <!--    新增问卷-->
    <insert id="addQuestion" parameterType="com.itmk.web.sys_question.entity.SysQuestion">
        insert into sys_question(question_title,question_desc,question_img,question_order,question_status)
        values (#{sysQuestion.questionTitle},#{sysQuestion.questionDesc},#{sysQuestion.questionImg},#{sysQuestion.questionOrder},#{sysQuestion.questionStatus})
    </insert>
    
</mapper>
```

##### 6、新建service层

新建包com.itmk.web.sys_question.service 然后建 SysQuestionService接口

```js
package com.itmk.web.sys_question.service;

import com.itmk.web.sys_question.entity.QuestionParm;
import com.itmk.web.sys_question.entity.SysQuestion;


import java.util.List;

public interface SysQuestionService {
    //新增问卷
    boolean addQuestion(SysQuestion sysQuestion);
}

```

##### 7、新建service实现类

```js
package com.itmk.web.sys_question.service.impl;

import com.github.pagehelper.PageHelper;
import com.itmk.web.sys_question.entity.QuestionParm;
import com.itmk.web.sys_question.entity.SysQuestion;
import com.itmk.web.sys_question.mapper.SysQuestionMapper;
import com.itmk.web.sys_question.service.SysQuestionService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;
@Service
public class SysQuestionServiceImpl implements SysQuestionService {
    @Resource
    private SysQuestionMapper sysQuestionMapper;
   
    @Override
    public boolean addQuestion(SysQuestion sysQuestion) {
        return sysQuestionMapper.addQuestion(sysQuestion);
    }
}

```

##### 8、新建控制器

新建包com.itmk.web.sys_question.controller 然后新建 SysQuestionController控制器

```js
package com.itmk.web.sys_question.controller;

import com.github.pagehelper.PageInfo;
import com.itmk.common.ResultMap;
import com.itmk.common.ResultUtils;
import com.itmk.common.ResultVo;
import com.itmk.common.StatusCode;
import com.itmk.web.sys_question.entity.QuestionParm;
import com.itmk.web.sys_question.entity.SysQuestion;
import com.itmk.web.sys_question.service.SysQuestionService;
import com.itmk.web.sys_user.entity.SysUser;
import com.itmk.web.sys_user.entity.UserParm;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

/**
 * 问卷调查控制器
 */
@Controller
@RequestMapping("/api/sysQuestion")
public class SysQuestionController {
    @Autowired
    private SysQuestionService sysQuestionService;

    /**
     * 问卷首页
     */
    @GetMapping("/index")
    public String index() {
        return "system/question/index";
    }
    /**
     * 新增页面
     */
    @GetMapping("/addUI")
    public String addUI() {
        return "system/question/add";
    }
    /**
     * 新增
     */
    @PostMapping("/add")
    @ResponseBody
    public ResultVo add(SysQuestion sysQuestion){
        boolean b = sysQuestionService.addQuestion(sysQuestion);
        if(b){
            return ResultUtils.success("新增成功!");
        }
        return ResultUtils.error("新增失败!");
    }
}

```



#### 第31讲 新建问卷接口数据对接

**思路**

```js
1、表单验证
2、前端字段需要和后端接收参数的实体类字段一致
```



##### 1、add.jsp页面表单验证

```js
<%--
  Created by IntelliJ IDEA.
  User: lcy
  Date: 2021-08-25
  Time: 15:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>Title</title>
    <link rel="stylesheet" href="../../lib/layui-v2.6.3/css/layui.css" media="all">
    <link rel="stylesheet" href="../../lib/bootstrap/bootstrap.min.css" media="all">
    <style>
      .layui-upload-img {
        width: 120px;
        height: 120px;
      }
    </style>
  </head>
  <body style="font-size: 0.8rem;">
    <form class="layui-form m-3">
      <div class="d-flex mb-3">
        <div class="col d-flex align-items-center">
          <label style="width: 120px;margin: 0px;"><span style="color: #FF7670;">*</span>问卷标题:</label>
          <input id="questionTitle" type="text" value="" class="form-control form-control-sm"/>
        </div>
      </div>
      <div class="d-flex mb-3">
        <div class="col d-flex">
          <label style="width: 120px;margin: 0px;"><span style="color: #FF7670;">*</span>问卷序号:</label>
          <input id="questionOrder" type="text" value="" class="form-control form-control-sm"/>
        </div>
      </div>
      <div class="d-flex mb-3">
        <div class="col d-flex align-items-center">
          <label style="width: 120px;margin: 0px;"><span style="color: #FF7670;">*</span>问卷状态:</label>
          <div class="input-group">
            <input type="radio" name="questionStatus" value="1" title="启用"/>
            <input type="radio" name="questionStatus" value="0" title="停用"/>
          </div>
        </div>
      </div>
      <div class="d-flex mb-3">
        <div class="col d-flex">
          <label style="width: 120px;"><span style="color: #FF7670;">*</span>问卷简介:</label>
          <textarea id="questionDesc" name="desc" placeholder="请输入简介" class="layui-textarea"></textarea>
        </div>
      </div>
      <div id="test1" style="cursor: pointer;color: #FF7670;font-weight: 600;">点我上传图片</div>
      <hr style="margin: 0px 0px 0.5rem 0px;">
      <div class="d-flex">
        <input id="questionImg" value="" type="hidden"/>
        <div class="layui-upload">
          <%--          <button type="button" class="layui-btn" id="test1">上传图片</button>--%>
          <div class="layui-upload-list" style="margin: 0px;">
            <img class="layui-upload-img" id="demo1">
            <p id="demoText"></p>
          </div>
        </div>
      </div>
    </form>
    <script src="../../lib/jquery-3.4.1/jquery-3.4.1.min.js" charset="utf-8"></script>
    <script src="../../lib/layui-v2.6.3/layui.js" charset="utf-8"></script>
    <script>
        var layer = null;
        layui.use(['upload', 'layer'], function () {
            var upload = layui.upload;
            layer = layui.layer;
            var $ = layui.jquery;
            //图片上传
            var uploadInst = upload.render({
                elem: '#test1'
                , url: '/api/uploadImg/upload' //此处用的是第三方的 http 请求演示，实际使用时改成您自己的上传接口即可。
                , before: function (obj) {
                    //预读本地文件示例，不支持ie8
                    obj.preview(function (index, file, result) {
                        $('#demo1').attr('src', result); //图片链接（base64）
                    });
                    // layer.msg('上传中', {icon: 16, time: 0});
                }
                , done: function (res) {
                    console.log(res)
                    //如果上传失败
                    if (res.code > 0) {
                        return layer.msg('上传失败');
                    }
                    //上传成功的一些操作
                    layer.msg(res.msg)
                    //需要把返回的图片路径，赋值到上面定义的输入框里面
                    $("#questionImg").val(res.data.src)
                    //……
                    $('#demoText').html(''); //置空上传失败的状态
                }
                , error: function () {
                    //演示失败状态，并实现重传
                    var demoText = $('#demoText');
                    demoText.html('<span style="color: #FF5722;">上传失败</span> <a class="layui-btn layui-btn-xs demo-reload">重试</a>');
                    demoText.find('.demo-reload').on('click', function () {
                        uploadInst.upload();
                    });
                }
            });
        })
        //表单验证
        var adddata = function () {
            //表单验证
            //获取问卷标题输入框的值
            var questionTitle = $("#questionTitle").val();
            if (!questionTitle) {
                //信息提示
                layer.msg('请输入问卷标题');
                return;
            }
            ;
            //序号
            if (!$("#questionOrder").val()) {
                layer.msg("请输入序号");
                return;
            }
            //问卷状态
            if (!$('input[name="questionStatus"]:checked').val()) {
                layer.msg("请选择问卷状态");
                return;
            }
            if(!$("#questionDesc").val()){
                 layer.msg("请输入问卷简介");
                return;
            }
             if(!$("#questionImg").val()){
                 layer.msg("请上传问卷图片");
                return;
            }
            return {
                questionTitle: $("#questionTitle").val(),
                questionOrder: $("#questionOrder").val(),
                questionDesc: $("#questionDesc").val(),
                questionImg: $("#questionImg").val(),
                questionStatus: $('input[name="questionStatus"]:checked').val()
            }
        }
    </script>
  </body>
</html>

```



##### 2、index.jsp数据对接

```js
<%--
  Created by IntelliJ IDEA.
  User: lcy
  Date: 2021-08-25
  Time: 12:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>Title</title>
    <link rel="stylesheet" href="../../lib/layui-v2.6.3/css/layui.css" media="all">
    <link rel="stylesheet" href="../../lib/bootstrap/bootstrap.min.css" media="all">
  </head>
  <body style="font-size: 0.8rem;">
    <%--    搜索框--%>
    <div class="d-flex m-3 align-items-center">
      <div class="d-flex">
        <label style="width: 100px;margin: 0px;" class="d-flex align-items-center">问卷标题:</label>
        <input id="questionTitle" class="form-control form-control-sm" value="" placeholder="请输入问卷标题"/>
      </div>
      <button style="margin-left: 0.6rem;" class="layui-btn layui-btn-sm layui-btn-normal"><i
        class="layui-icon layui-icon-search"></i>
        搜索
      </button>
      <button style="border-color: #FF7670;color: #FF7670;" type="button"
              class="layui-btn layui-btn-primary layui-btn-sm"><i
        class="layui-icon layui-icon-close"></i>重置
      </button>
      <button id="addBtn" type="button"
              class="layui-btn layui-btn-sm"><i
        class="layui-icon layui-icon-addition"></i>新增
      </button>
    </div>
    <%--      表格布局--%>
    <table id="questiontable" lay-filter="questiontable"></table>
    <script type="text/html" id="headertool">
    
    </script>
    <script type="text/html" id="linetool">
      <a lay-event="edit" class="layui-btn layui-btn-sm"><i class="layui-icon layui-icon-edit"></i>编辑</a>
      <a lay-event="delete" class="layui-btn layui-btn-danger layui-btn-sm"><i
        class="layui-icon layui-icon-close"></i>删除</a>
    </script>
    <script src="../../lib/jquery-3.4.1/jquery-3.4.1.min.js" charset="utf-8"></script>
    <script src="../../lib/layui-v2.6.3/layui.js" charset="utf-8"></script>
    <script src="../../js/http.js" charset="utf-8"></script>
    <script>

        layui.use(['table', 'layer'], function () {
            var table = layui.table;
            var layer = layui.layer;
            var $ = layui.jquery;
            //表格渲染
            table.render({
                elem: '#questiontable',
                url: '../../api/table.json',
                height: 'full-100',
                toolbar: '#headertool',//表格头部的工具栏
                cols: [[
                    {field: 'username', title: '用户名', align: 'center'},
                    {field: 'username', title: '操作', align: 'center', width: 180, toolbar: '#linetool'},

                ]],
                page: true,
                limit: 10,
                limits: [10, 20, 30, 50]
            })
            //编辑、删除点击事件
            table.on('tool(questiontable)', function (obj) {
                console.log(obj)
                if (obj.event == 'edit') {
                    layer.msg('编辑')
                }
                if (obj.event == 'delete') {
                    layer.msg('删除')
                }
            });
            //新增按钮点击事件
            $("#addBtn").click(function () {
                //打开弹框
                layer.open({
                    skin: 'layui-layer-molv',//皮肤
                    offset: '0px',
                    title: '新增问卷',
                    type: 2,
                    area: ['770px', '570px'],
                    content: '/api/sysQuestion/addUI',
                    btn: ['确定', '取消'],
                    btn1: function (index) { //确定按钮的事件
                        var parms = window["layui-layer-iframe" + index].adddata();
                        console.log('111111111')
                        console.log(parms)
                        if(parms){
                            http.post("/api/sysQuestion/add",parms,function (data) {
                                if(data.code == 200){
                                    //刷新表格
                                    //关闭弹框
                                    layer.close(index);
                                }
                            })
                        }
                    },
                    btn2: function (index) { //取消按钮事件

                    }
                })
            });
        })
    </script>
  </body>
</html>

```



#### 第32讲 问卷列表接口开发

##### 1、列表参数分析

```js
package com.itmk.web.sys_question.entity;

import lombok.Data;

import java.io.Serializable;
@Data
public class QuestionParm implements Serializable {
    private Integer page;
    private Integer limit;
    private String questionTitle;
}

```

**返回值分析**

layui表格需要的数据格式，可以根据官网得知  https://www.layui.com/doc/modules/table.html#async

```js
{
  "code": 0,
  "msg": "",
  "count": 1000,
  "data": [{}, {}]
}


注意事项：格式一定要跟上面的字段对应，并且code返回的值必须是 0 
```



##### 2、mapper层新建如下方法

```js
	//查询问卷表格
    List<SysQuestion> getTableList(@Param("questionTitle") String questionTitle);
```

##### 3、编写映射文件

```js
	<!--    查询表格列表-->
    <select id="getTableList" resultMap="sysQuestionMap">
        select * from sys_question
        where 1=1
        <if test="questionTitle !=null and questionTitle !=''">
            and questionTitle like concat('%',#{questionTitle},'%')
        </if>
    </select>
```

##### 4、service层新增如下方法

```js
	//查询问卷表格
    List<SysQuestion> getTableList(QuestionParm parm);
```

##### 5、service实现类

```js
	@Override
    public List<SysQuestion> getTableList(QuestionParm parm) {
        PageHelper.startPage(parm.getPage(),parm.getLimit());
        return sysQuestionMapper.getTableList(parm.getQuestionTitle());
    }
```



##### 6、控制器添加如下方法

```js
/**
     * 获取列表
     * 1、返回json
     * 2、返回值需要满足 layui table的数据格式
     */
    @GetMapping("/list")
    @ResponseBody
    public ResultMap list(QuestionParm parm) {
        List<SysQuestion> list = sysQuestionService.getTableList(parm);
        //接收分页返回的数据
        PageInfo<SysQuestion> page = new PageInfo<>(list);
        //设置符合layui表格的数据
        return ResultUtils.pageResult(StatusCode.SUCCESS_LAYUI_CODE,"查询成功",page.getList(),page.getTotal());
    }
```



#### 第33讲 问卷列表数据对接讲解

```js
<%--
  Created by IntelliJ IDEA.
  User: lcy
  Date: 2021-08-25
  Time: 12:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>Title</title>
    <link rel="stylesheet" href="../../lib/layui-v2.6.3/css/layui.css" media="all">
    <link rel="stylesheet" href="../../lib/bootstrap/bootstrap.min.css" media="all">
    <style>
      .layui-table-cell {
        text-align: center;
        height: auto;
        white-space: normal;
      }
    </style>
  </head>
  <body style="font-size: 0.8rem;">
    <%--    搜索框--%>
    <div class="d-flex m-3 align-items-center">
      <div class="d-flex">
        <label style="width: 100px;margin: 0px;" class="d-flex align-items-center">问卷标题:</label>
        <input id="questionTitle" class="form-control form-control-sm" value="" placeholder="请输入问卷标题"/>
      </div>
      <button id="searchBtn" style="margin-left: 0.6rem;" class="layui-btn layui-btn-sm layui-btn-normal"><i
        class="layui-icon layui-icon-search"></i>
        搜索
      </button>
      <button id="resetBtn" style="border-color: #FF7670;color: #FF7670;" type="button"
              class="layui-btn layui-btn-primary layui-btn-sm"><i
        class="layui-icon layui-icon-close"></i>重置
      </button>
      <button id="addBtn" type="button"
              class="layui-btn layui-btn-sm"><i
        class="layui-icon layui-icon-addition"></i>新增
      </button>
    </div>
    <%--      表格布局--%>
    <table id="questiontable" lay-filter="questiontable"></table>
    <script type="text/html" id="headertool">
    
    </script>
    <script type="text/html" id="linetool">
      <a lay-event="edit" class="layui-btn layui-btn-sm"><i class="layui-icon layui-icon-edit"></i>编辑</a>
      <a lay-event="delete" class="layui-btn layui-btn-danger layui-btn-sm"><i
        class="layui-icon layui-icon-close"></i>删除</a>
    </script>
    <script src="../../lib/jquery-3.4.1/jquery-3.4.1.min.js" charset="utf-8"></script>
    <script src="../../lib/layui-v2.6.3/layui.js" charset="utf-8"></script>
    <script src="../../js/http.js" charset="utf-8"></script>
    <script>

        layui.use(['table', 'layer'], function () {
            var table = layui.table;
            var layer = layui.layer;
            var $ = layui.jquery;
            //表格渲染
            table.render({
                elem: '#questiontable',
                url: '/api/sysQuestion/list',
                height: 'full-100',
                toolbar: '#headertool',//表格头部的工具栏
                cols: [[
                    {
                        field: 'questionImg', title: '问卷图片', width: 200, align: 'center', templet: function (d) {
                            // return "<img src=" + d.questionImg + "width='80px' height='80px' class='layui-circle' />";
                            // 注意：结束符之前，不能有空格
                            return "<img src=" + d.questionImg + " width='80px' height='80px' class='layui-circle'/>";
                        }
                    },
                    {field: 'questionTitle', title: '问卷标题', align: 'center', width: 180},
                    {field: 'questionDesc', title: '问卷简介', align: 'center'},
                    {field: 'questionOrder', title: '问卷序号', align: 'center', width: 180},
                    {
                        field: 'questionStatus', title: '问卷状态', align: 'center', width: 180, templet: function (d) {
                            if (d.questionStatus == '0') {
                                return '停用'
                            } else {
                                return '启用'
                            }
                        }
                    },
                    {field: 'username', title: '操作', align: 'center', width: 180, toolbar: '#linetool'},

                ]],
                page: true,
                limit: 10,
                limits: [10, 20, 30, 50]
            })
            //编辑、删除点击事件
            table.on('tool(questiontable)', function (obj) {
                console.log(obj)
                if (obj.event == 'edit') {
                    layer.msg('编辑')
                }
                if (obj.event == 'delete') {
                    layer.msg('删除')
                }
            });
            //新增按钮点击事件
            $("#addBtn").click(function () {
                //打开弹框
                layer.open({
                    skin: 'layui-layer-molv',//皮肤
                    offset: '0px',
                    title: '新增问卷',
                    type: 2,
                    area: ['770px', '570px'],
                    content: '/api/sysQuestion/addUI',
                    btn: ['确定', '取消'],
                    btn1: function (index) { //确定按钮的事件
                        var parms = window["layui-layer-iframe" + index].adddata();
                        console.log('111111111')
                        console.log(parms)
                        if (parms) {
                            http.post("/api/sysQuestion/add", parms, function (data) {
                                if (data.code == 200) {
                                    //刷新表格
                                    reload();
                                    //关闭弹框
                                    layer.close(index);
                                }
                            })
                        }
                    },
                    btn2: function (index) { //取消按钮事件

                    }
                })
            });

            //刷新表格
            function reload() {
                table.reload('questiontable', {
                    page: {
                        curr: 1
                    },
                    where: {
                        questionTitle: $("#questionTitle").val()
                    }
                })
            };
            //搜索按钮
            $("#searchBtn").click(function () {
                reload();
            });
            //重置按钮
            $("#resetBtn").click(function () {
                //清空搜索框数据
                $("#questionTitle").val('');
                //重新加载表格
                reload();
            })
        })
    </script>
  </body>
</html>

```



#### 第34讲 解决表格图片展示高度问题

##### 1、新增样式

```js
	<style>
      .layui-table-cell {
        text-align: center;
        height: auto;
        white-space: normal;
      }
    </style>
```



##### 2、搜索对接

```js
<%--
  Created by IntelliJ IDEA.
  User: lcy
  Date: 2021-08-25
  Time: 12:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>Title</title>
    <link rel="stylesheet" href="../../lib/layui-v2.6.3/css/layui.css" media="all">
    <link rel="stylesheet" href="../../lib/bootstrap/bootstrap.min.css" media="all">
    <style>
      .layui-table-cell {
        text-align: center;
        height: auto;
        white-space: normal;
      }
    </style>
  </head>
  <body style="font-size: 0.8rem;">
    <%--    搜索框--%>
    <div class="d-flex m-3 align-items-center">
      <div class="d-flex">
        <label style="width: 100px;margin: 0px;" class="d-flex align-items-center">问卷标题:</label>
        <input id="questionTitle" class="form-control form-control-sm" value="" placeholder="请输入问卷标题"/>
      </div>
      <button id="searchBtn" style="margin-left: 0.6rem;" class="layui-btn layui-btn-sm layui-btn-normal"><i
        class="layui-icon layui-icon-search"></i>
        搜索
      </button>
      <button id="resetBtn" style="border-color: #FF7670;color: #FF7670;" type="button"
              class="layui-btn layui-btn-primary layui-btn-sm"><i
        class="layui-icon layui-icon-close"></i>重置
      </button>
      <button id="addBtn" type="button"
              class="layui-btn layui-btn-sm"><i
        class="layui-icon layui-icon-addition"></i>新增
      </button>
    </div>
    <%--      表格布局--%>
    <table id="questiontable" lay-filter="questiontable"></table>
    <script type="text/html" id="headertool">
    
    </script>
    <script type="text/html" id="linetool">
      <a lay-event="edit" class="layui-btn layui-btn-sm"><i class="layui-icon layui-icon-edit"></i>编辑</a>
      <a lay-event="delete" class="layui-btn layui-btn-danger layui-btn-sm"><i
        class="layui-icon layui-icon-close"></i>删除</a>
    </script>
    <script src="../../lib/jquery-3.4.1/jquery-3.4.1.min.js" charset="utf-8"></script>
    <script src="../../lib/layui-v2.6.3/layui.js" charset="utf-8"></script>
    <script src="../../js/http.js" charset="utf-8"></script>
    <script>

        layui.use(['table', 'layer'], function () {
            var table = layui.table;
            var layer = layui.layer;
            var $ = layui.jquery;
            //表格渲染
            table.render({
                elem: '#questiontable',
                url: '/api/sysQuestion/list',
                height: 'full-100',
                toolbar: '#headertool',//表格头部的工具栏
                cols: [[
                    {
                        field: 'questionImg', title: '问卷图片', width: 200, align: 'center', templet: function (d) {
                            // return "<img src=" + d.questionImg + "width='80px' height='80px' class='layui-circle' />";
                            // 注意：结束符之前，不能有空格
                            return "<img src=" + d.questionImg + " width='80px' height='80px' class='layui-circle'/>";
                        }
                    },
                    {field: 'questionTitle', title: '问卷标题', align: 'center', width: 180},
                    {field: 'questionDesc', title: '问卷简介', align: 'center'},
                    {field: 'questionOrder', title: '问卷序号', align: 'center', width: 180},
                    {
                        field: 'questionStatus', title: '问卷状态', align: 'center', width: 180, templet: function (d) {
                            if (d.questionStatus == '0') {
                                return '停用'
                            } else {
                                return '启用'
                            }
                        }
                    },
                    {field: 'username', title: '操作', align: 'center', width: 180, toolbar: '#linetool'},

                ]],
                page: true,
                limit: 10,
                limits: [10, 20, 30, 50]
            })
            //编辑、删除点击事件
            table.on('tool(questiontable)', function (obj) {
                console.log(obj)
                if (obj.event == 'edit') {
                    layer.msg('编辑')
                }
                if (obj.event == 'delete') {
                    layer.msg('删除')
                }
            });
            //新增按钮点击事件
            $("#addBtn").click(function () {
                //打开弹框
                layer.open({
                    skin: 'layui-layer-molv',//皮肤
                    offset: '0px',
                    title: '新增问卷',
                    type: 2,
                    area: ['770px', '570px'],
                    content: '/api/sysQuestion/addUI',
                    btn: ['确定', '取消'],
                    btn1: function (index) { //确定按钮的事件
                        var parms = window["layui-layer-iframe" + index].adddata();
                        console.log('111111111')
                        console.log(parms)
                        if (parms) {
                            http.post("/api/sysQuestion/add", parms, function (data) {
                                if (data.code == 200) {
                                    //刷新表格
                                    reload();
                                    //关闭弹框
                                    layer.close(index);
                                }
                            })
                        }
                    },
                    btn2: function (index) { //取消按钮事件

                    }
                })
            });

            //刷新表格
            function reload() {
                table.reload('questiontable', {
                    page: {
                        curr: 1
                    },
                    where: {
                        questionTitle: $("#questionTitle").val()
                    }
                })
            };
            //搜索按钮
            $("#searchBtn").click(function () {
                reload();
            });
            //重置按钮
            $("#resetBtn").click(function () {
                //清空搜索框数据
                $("#questionTitle").val('');
                //重新加载表格
                reload();
            })
        })
    </script>
  </body>
</html>

```



#### 第35讲 编辑问卷弹框展示制作讲解



##### 1、思路

```js
1、点击编辑按钮，打开弹框
2、请求对应的控制器，返回对应的编辑页面；

```

##### 2、新建编辑页面 edit.jsp

```js
<%--
  Created by IntelliJ IDEA.
  User: lcy
  Date: 2021-08-26
  Time: 8:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>Title</title>
  </head>
  <body>
    编辑问卷
  </body>
</html>

```

##### 3、控制器返回编辑视图

```js
	/**
     * 编辑问卷视图
     */
    @GetMapping("/editUI")
    public String editUI(){
        return "system/question/edit";
    }
```



##### 4、打开弹框

```js
			//编辑、删除点击事件
            table.on('tool(questiontable)', function (obj) {
                console.log(obj)
                if (obj.event == 'edit') {
                    // layer.msg('编辑')
                    layer.open({
                        skin:'layui-layer-molv', //皮肤
                        offset:'0px',
                        title:'编辑问卷',
                        type:2,
                        area:['700px','450px'],
                        content:'/api/sysQuestion/editUI',
                        btn:['确定','取消'],
                        btn1:function (index) {
                          layer.close(index);
                        },
                        btn2:function (index) {

                        }
                    })
                }
                if (obj.event == 'delete') {
                    layer.msg('删除')
                }
            });
```



#### 第36讲 编辑问卷页面制作



##### 1、制作原理

```js
CSS3弹性盒子模型
```



##### 2、edit.jsp页面源码

```js
<%--
  Created by IntelliJ IDEA.
  User: lcy
  Date: 2021-08-26
  Time: 8:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>Title</title>
    <link rel="stylesheet" href="../../lib/layui-v2.6.3/css/layui.css" media="all">
    <link rel="stylesheet" href="../../lib/bootstrap/bootstrap.min.css" media="all">
    <style>
      .layui-upload-img {
        width: 120px;
        height: 120px;
      }
    </style>
  </head>
  <body style="font-size: 0.8rem;">
    <form class="layui-form m-3">
      <div class="d-flex align-items-center mb-3">
        <label style="width: 100px;margin: 0px;"><span style="color: #FF7670;">*</span>问卷标题:</label>
        <%--        问卷的id--%>
        <input id="questionId" value="" type="hidden"/>
        <input type="text" id="questionTitle" value="" class="form-control form-control-sm" placeholder="请填写问卷标题"/>
      </div>
      <div class="d-flex align-items-center mb-3">
        <label style="width: 100px;margin: 0px;"><span style="color: #FF7670;">*</span>问卷序号:</label>
        <input id="questionOrder" type="text" value="" class="form-control form-control-sm" placeholder="请填写问卷序号"/>
      </div>
      <div class="d-flex align-items-center mb-3">
        <label style="width: 100px;margin: 0px;"><span style="color: #FF7670;">*</span>问卷状态:</label>
        <div class="input-group">
          <input type="radio" name="questionStatus" value="1" title="启用" class="form-control form-control-sm"/>
          <input type="radio" name="questionStatus" value="0" title="停用" class="form-control form-control-sm"/>
        </div>
      </div>
      <div class="d-flex  mb-3">
        <label style="width: 100px;margin: 0px;"><span style="color: #FF7670;">*</span>问卷简介:</label>
        <textarea id="questionDesc" type="text" value="" class="form-control form-control-sm" placeholder="请填写问卷简介"></textarea>
      </div>
      <div id="test1" style="cursor: pointer;color: #FF7670;font-weight: 600;">点我上传图片</div>
      <hr style="margin: 0px 0px 0.5rem 0px;">
      <div class="d-flex">
        <input id="questionImg" value="" type="hidden"/>
        <div class="layui-upload">
          <%--          <button type="button" class="layui-btn" id="test1">上传图片</button>--%>
          <div class="layui-upload-list" style="margin: 0px;">
            <img class="layui-upload-img" id="demo1">
            <p id="demoText"></p>
          </div>
        </div>
      </div>
    </form>
    <script src="../../lib/jquery-3.4.1/jquery-3.4.1.min.js" charset="utf-8"></script>
    <script src="../../lib/layui-v2.6.3/layui.js" charset="utf-8"></script>
    <script>
        layui.use(['upload', 'layer'], function () {
            var upload = layui.upload;
            layer = layui.layer;
            var $ = layui.jquery;
            //图片上传
            var uploadInst = upload.render({
                elem: '#test1'
                , url: '/api/uploadImg/upload' //此处用的是第三方的 http 请求演示，实际使用时改成您自己的上传接口即可。
                , before: function (obj) {
                    //预读本地文件示例，不支持ie8
                    obj.preview(function (index, file, result) {
                        $('#demo1').attr('src', result); //图片链接（base64）
                    });
                    // layer.msg('上传中', {icon: 16, time: 0});
                }
                , done: function (res) {
                    console.log(res)
                    //如果上传失败
                    if (res.code > 0) {
                        return layer.msg('上传失败');
                    }
                    //上传成功的一些操作
                    layer.msg(res.msg)
                    //需要把返回的图片路径，赋值到上面定义的输入框里面
                    $("#questionImg").val(res.data.src)
                    //……
                    $('#demoText').html(''); //置空上传失败的状态
                }
                , error: function () {
                    //演示失败状态，并实现重传
                    var demoText = $('#demoText');
                    demoText.html('<span style="color: #FF5722;">上传失败</span> <a class="layui-btn layui-btn-xs demo-reload">重试</a>');
                    demoText.find('.demo-reload').on('click', function () {
                        uploadInst.upload();
                    });
                }
            });
        })
        //表单验证
        var adddata = function () {
            //表单验证
            //获取问卷标题输入框的值
            var questionTitle = $("#questionTitle").val();
            if (!questionTitle) {
                //信息提示
                layer.msg('请输入问卷标题');
                return;
            }
            ;
            //序号
            if (!$("#questionOrder").val()) {
                layer.msg("请输入序号");
                return;
            }
            //问卷状态
            if (!$('input[name="questionStatus"]:checked').val()) {
                layer.msg("请选择问卷状态");
                return;
            }
            if (!$("#questionDesc").val()) {
                layer.msg("请输入问卷简介");
                return;
            }
            if (!$("#questionImg").val()) {
                layer.msg("请上传问卷图片");
                return;
            }
            return {
                questionId: $("#questionId").val(),
                questionTitle: $("#questionTitle").val(),
                questionOrder: $("#questionOrder").val(),
                questionDesc: $("#questionDesc").val(),
                questionImg: $("#questionImg").val(),
                questionStatus: $('input[name="questionStatus"]:checked').val()
            }
        }
    </script>
  </body>
</html>

```

##### 3、index.jsp页面源码

```js
			//编辑、删除点击事件
            table.on('tool(questiontable)', function (obj) {
                console.log(obj)
                if (obj.event == 'edit') {
                    // layer.msg('编辑')
                    layer.open({
                        skin: 'layui-layer-molv', //皮肤
                        offset: '0px',
                        title: '编辑问卷',
                        type: 2,
                        area: ['770px', '570px'],
                        content: '/api/sysQuestion/editUI',
                        btn: ['确定', '取消'],
                        btn1: function (index) {
                            var parms = window["layui-layer-iframe" + index].adddata();
                            console.log('111111111')
                            console.log(parms)
                            // layer.close(index);
                        },
                        btn2: function (index) {

                        }
                    })
                }
                if (obj.event == 'delete') {
                    layer.msg('删除')
                }
            });
```



#### 第37讲 编辑、删除问卷接口开

##### 1、编辑步骤

```js
1、点击编辑，根据编辑数据的id，查询编辑对应的数据；
2、把数据查询出，回显；
3、编辑提交表单，后端更新数据库；
```

##### 2、删除步骤

```js
1、前端传递删除的id
2、后端根据id删除
```

##### 3、mapper层接口

新增根据id查询、根据id删除、根据id编辑的三个接口

```js
package com.itmk.web.sys_question.mapper;

import com.itmk.web.sys_question.entity.SysQuestion;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface SysQuestionMapper {
    //根据id查询问卷
    SysQuestion getById(@Param("questionId") Long questionId);
    //查询问卷表格
    List<SysQuestion> getTableList(@Param("questionTitle") String questionTitle);
    //新增问卷
    boolean addQuestion(@Param("sysQuestion") SysQuestion sysQuestion);
    //编辑问卷
    boolean editQuestion(@Param("sysQuestion") SysQuestion sysQuestion);
    //删除问卷
    boolean deleteQuestion(@Param("questionId") Long questionId);
}

```

##### 4、映射文件

```js
<?xml version="1.0" encoding="utf-8" ?>
<!DOCTYPE mapper
        PUBLIC "-//mybatis.org//DTD Mapper 3.0//EN"
        "http://mybatis.org/dtd/mybatis-3-mapper.dtd">
<mapper namespace="com.itmk.web.sys_question.mapper.SysQuestionMapper">
    <resultMap id="sysQuestionMap" type="com.itmk.web.sys_question.entity.SysQuestion">
        <id property="questionId" column="question_id"></id>
        <result property="questionTitle" column="question_title"></result>
        <result property="questionDesc" column="question_desc"></result>
        <result property="questionImg" column="question_img"></result>
        <result property="questionOrder" column="question_order"></result>
        <result property="questionStatus" column="question_status"></result>
    </resultMap>
    <!--    根据id查询-->
    <select id="getById" resultMap="sysQuestionMap">
        select * from sys_question
        where question_id =#{questionId}
    </select>
    <!--    查询表格列表-->
    <select id="getTableList" resultMap="sysQuestionMap">
        select * from sys_question
        where 1=1
        <if test="questionTitle !=null and questionTitle !=''">
            and questionTitle like concat('%',#{questionTitle},'%')
        </if>
    </select>
    <!--    新增问卷-->
    <insert id="addQuestion" parameterType="com.itmk.web.sys_question.entity.SysQuestion">
        insert into sys_question(question_title,question_desc,question_img,question_order,question_status)
        values (#{sysQuestion.questionTitle},#{sysQuestion.questionDesc},#{sysQuestion.questionImg},#{sysQuestion.questionOrder},#{sysQuestion.questionStatus})
    </insert>
    <update id="editQuestion">
        update sys_question
        <set>
            <if test="sysQuestion.questionTitle != null and sysQuestion.questionTitle !=''">
                question_title =#{sysQuestion.questionTitle},
            </if>
            <if test="sysQuestion.questionDesc != null and sysQuestion.questionDesc !=''">
                question_desc =#{sysQuestion.questionDesc},
            </if>
            <if test="sysQuestion.questionImg != null and sysQuestion.questionImg !=''">
                question_img =#{sysQuestion.questionImg},
            </if>
            <if test="sysQuestion.questionOrder != null and sysQuestion.questionOrder !=''">
                question_order =#{sysQuestion.questionOrder},
            </if>
            <if test="sysQuestion.questionStatus != null and sysQuestion.questionStatus !=''">
                question_status =#{sysQuestion.questionStatus},
            </if>
        </set>
        where question_id =#{sysQuestion.questionId}
    </update>
    <delete id="deleteQuestion">
        delete from sys_question
        where question_id =${questionId}
    </delete>
</mapper>
```

##### 5、service层

```js
package com.itmk.web.sys_question.service;

import com.itmk.web.sys_question.entity.QuestionParm;
import com.itmk.web.sys_question.entity.SysQuestion;


import java.util.List;

public interface SysQuestionService {
    //根据id查询问卷
    SysQuestion getById(Long questionId);
    //查询问卷表格
    List<SysQuestion> getTableList(QuestionParm parm);
    //新增问卷
    boolean addQuestion(SysQuestion sysQuestion);
    //编辑问卷
    boolean editQuestion(SysQuestion sysQuestion);
    //删除问卷
    boolean deleteQuestion(Long questionId);
}

```

##### 6、实现类

```js
package com.itmk.web.sys_question.service.impl;

import com.github.pagehelper.PageHelper;
import com.itmk.web.sys_question.entity.QuestionParm;
import com.itmk.web.sys_question.entity.SysQuestion;
import com.itmk.web.sys_question.mapper.SysQuestionMapper;
import com.itmk.web.sys_question.service.SysQuestionService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;
@Service
public class SysQuestionServiceImpl implements SysQuestionService {
    @Resource
    private SysQuestionMapper sysQuestionMapper;
    @Override
    public SysQuestion getById(Long questionId) {
        return sysQuestionMapper.getById(questionId);
    }

    @Override
    public List<SysQuestion> getTableList(QuestionParm parm) {
        PageHelper.startPage(parm.getPage(),parm.getLimit());
        return sysQuestionMapper.getTableList(parm.getQuestionTitle());
    }

    @Override
    public boolean addQuestion(SysQuestion sysQuestion) {
        return sysQuestionMapper.addQuestion(sysQuestion);
    }

    @Override
    public boolean editQuestion(SysQuestion sysQuestion) {
        return sysQuestionMapper.editQuestion(sysQuestion);
    }

    @Override
    public boolean deleteQuestion(Long questionId) {
        return sysQuestionMapper.deleteQuestion(questionId);
    }
}

```

##### 7、控制器

```js

```



#### 第38讲 问卷编辑、删除接口对接

##### 1、编辑步骤

```js
1、点击编辑，根据编辑数据的id，查询编辑对应的数据；
2、把数据查询出，回显；
3、编辑提交表单，后端更新数据库；
```



##### 2、删除步骤

```js
1、前端传递删除的id
2、后端根据id删除
```



##### 3、index.jsp完整源码

```js
<%--
  Created by IntelliJ IDEA.
  User: lcy
  Date: 2021-08-25
  Time: 12:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>Title</title>
    <link rel="stylesheet" href="../../lib/layui-v2.6.3/css/layui.css" media="all">
    <link rel="stylesheet" href="../../lib/bootstrap/bootstrap.min.css" media="all">
    <style>
      .layui-table-cell {
        text-align: center;
        height: auto;
        white-space: normal;
      }
    </style>
  </head>
  <body style="font-size: 0.8rem;">
    <%--    搜索框--%>
    <div class="d-flex m-3 align-items-center">
      <div class="d-flex">
        <label style="width: 100px;margin: 0px;" class="d-flex align-items-center">问卷标题:</label>
        <input id="questionTitle" class="form-control form-control-sm" value="" placeholder="请输入问卷标题"/>
      </div>
      <button id="searchBtn" style="margin-left: 0.6rem;" class="layui-btn layui-btn-sm layui-btn-normal"><i
        class="layui-icon layui-icon-search"></i>
        搜索
      </button>
      <button id="resetBtn" style="border-color: #FF7670;color: #FF7670;" type="button"
              class="layui-btn layui-btn-primary layui-btn-sm"><i
        class="layui-icon layui-icon-close"></i>重置
      </button>
      <button id="addBtn" type="button"
              class="layui-btn layui-btn-sm"><i
        class="layui-icon layui-icon-addition"></i>新增
      </button>
    </div>
    <%--      表格布局--%>
    <table id="questiontable" lay-filter="questiontable"></table>
    <script type="text/html" id="headertool">
    
    </script>
    <script type="text/html" id="linetool">
      <a lay-event="edit" class="layui-btn layui-btn-sm"><i class="layui-icon layui-icon-edit"></i>编辑</a>
      <a lay-event="delete" class="layui-btn layui-btn-danger layui-btn-sm"><i
        class="layui-icon layui-icon-close"></i>删除</a>
    </script>
    <script src="../../lib/jquery-3.4.1/jquery-3.4.1.min.js" charset="utf-8"></script>
    <script src="../../lib/layui-v2.6.3/layui.js" charset="utf-8"></script>
    <script src="../../js/http.js" charset="utf-8"></script>
    <script>

        layui.use(['table', 'layer'], function () {
            var table = layui.table;
            var layer = layui.layer;
            var $ = layui.jquery;
            //表格渲染
            table.render({
                elem: '#questiontable',
                url: '/api/sysQuestion/list',
                height: 'full-100',
                toolbar: '#headertool',//表格头部的工具栏
                cols: [[
                    {
                        field: 'questionImg', title: '问卷图片', width: 200, align: 'center', templet: function (d) {
                            // return "<img src=" + d.questionImg + "width='80px' height='80px' class='layui-circle' />";
                            // 注意：结束符之前，不能有空格
                            return "<img src=" + d.questionImg + " width='80px' height='80px' class='layui-circle'/>";
                        }
                    },
                    {field: 'questionTitle', title: '问卷标题', align: 'center', width: 180},
                    {field: 'questionDesc', title: '问卷简介', align: 'center'},
                    {field: 'questionOrder', title: '问卷序号', align: 'center', width: 180},
                    {
                        field: 'questionStatus', title: '问卷状态', align: 'center', width: 180, templet: function (d) {
                            if (d.questionStatus == '0') {
                                return '停用'
                            } else {
                                return '启用'
                            }
                        }
                    },
                    {field: 'username', title: '操作', align: 'center', width: 180, toolbar: '#linetool'},

                ]],
                page: true,
                limit: 10,
                limits: [10, 20, 30, 50]
            })
            //编辑、删除点击事件
            table.on('tool(questiontable)', function (obj) {
                console.log(obj)
                if (obj.event == 'edit') {
                    // layer.msg('编辑')
                    layer.open({
                        skin: 'layui-layer-molv', //皮肤
                        offset: '0px',
                        title: '编辑问卷',
                        type: 2,
                        area: ['770px', '570px'],
                        content: '/api/sysQuestion/editUI?questionId='+obj.data.questionId,
                        btn: ['确定', '取消'],
                        btn1: function (index) {
                            var parms = window["layui-layer-iframe" + index].adddata();
                            console.log('111111111')
                            console.log(parms)
                            if(parms){
                                http.post("/api/sysQuestion/edit",parms,function (res) {
                                  if(res.code == 200){
                                      //刷新表格
                                      reload();
                                      //信息提示
                                      layer.msg(res.msg)
                                      //关闭弹框
                                      layer.close(index);
                                  }
                                })
                            }
                            // layer.close(index);
                        },
                        btn2: function (index) {

                        }
                    })
                }
                if (obj.event == 'delete') {
                    // layer.msg('删除')
                    layer.confirm('确定删除该数据吗?', {icon: 3, title: '系统提示'}, function (index) {
                        //do something
                        //提交数据
                        var parm = {
                            questionId:obj.data.questionId
                        }
                        http.post("/api/sysQuestion/delete",parm,function (data) {
                          if(data.code == 200){
                              //刷新表格
                               reload();
                               layer.msg(data.msg);
                              //关闭弹框
                               layer.close(index);
                          }
                        })
                    });
                }
            });
            //新增按钮点击事件
            $("#addBtn").click(function () {
                //打开弹框
                layer.open({
                    skin: 'layui-layer-molv',//皮肤
                    offset: '0px',
                    title: '新增问卷',
                    type: 2,
                    area: ['770px', '570px'],
                    content: '/api/sysQuestion/addUI',
                    btn: ['确定', '取消'],
                    btn1: function (index) { //确定按钮的事件
                        var parms = window["layui-layer-iframe" + index].adddata();
                        console.log('111111111')
                        console.log(parms)
                        if (parms) {
                            http.post("/api/sysQuestion/add", parms, function (data) {
                                if (data.code == 200) {
                                    //刷新表格
                                    reload();
                                    //关闭弹框
                                    layer.close(index);
                                }
                            })
                        }
                    },
                    btn2: function (index) { //取消按钮事件

                    }
                })
            });

            //刷新表格
            function reload() {
                table.reload('questiontable', {
                    page: {
                        curr: 1
                    },
                    where: {
                        questionTitle: $("#questionTitle").val()
                    }
                })
            };
            //搜索按钮
            $("#searchBtn").click(function () {
                reload();
            });
            //重置按钮
            $("#resetBtn").click(function () {
                //清空搜索框数据
                $("#questionTitle").val('');
                //重新加载表格
                reload();
            })
        })
    </script>
  </body>
</html>

```



#### 第39讲 设计试题首页制作讲解



#### 第40讲 设计试题表设计

##### 1、需求

```js
试题有对应的问卷，有试题标题，类型（单选、多选、单文本、多文本）、试题序号
```

##### 2、试题表字段

| 字段名称    | 数据类型 | 字段大小 | 是否主键 | 是否为空 | 备注     |
| ----------- | -------- | -------- | -------- | -------- | -------- |
| paper_id    | int      | 11       | 是       | 否       | 试题id   |
| question_id | varchar  | 255      | 否       | 是       | 问卷id   |
| paper_title | text     | 默认     | 否       | 是       | 试题标题 |
| paper_type  | varchar  | 255      | 否       | 是       | 试题类型 |
| paper_order | int      | 11       | 否       | 是       | 序号     |

##### 3、选项表(单选和多选题)

| 字段名称     | 数据类型 | 字段大小 | 是否主键 | 是否为空 | 备注     |
| ------------ | -------- | -------- | -------- | -------- | -------- |
| chioce_id    | int      | 11       | 是       | 否       | 选项id   |
| paper_id     | int      | 11       | 否       | 是       | 试题id   |
| choice_text  | text     | 默认     | 否       | 是       | 选项标题 |
| choice_order | varchar  | 255      | 否       | 是       | 序号     |





#### 第41讲  设计试题分类页面制作

![](images\42-1.png)

##### 1、布局要点

```js
css3弹性盒子模型
```

##### 2、页面源码

```js
<%--
  Created by IntelliJ IDEA.
  User: lcy
  Date: 2021-08-26
  Time: 13:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>Title</title>
    <link rel="stylesheet" href="../../lib/layui-v2.6.3/css/layui.css" media="all">
    <link rel="stylesheet" href="../../lib/bootstrap/bootstrap.min.css" media="all">
  </head>
  <body style="font-size:0.8rem;height: 100%;">
    <div class="d-flex" style="height: 100%;">
      <div class="d-flex p-3 flex-column" style="width: 200px;border-right: 1px solid
      #e5e5e5;">
        <div class="d-flex mb-3 justify-content-center align-items-center p-1"
             style="border: 1px solid #e5e5e5;width: 100%;border-radius: 0.2rem;cursor: pointer;">单选题
        </div>
        <div class="d-flex mb-3 justify-content-center align-items-center p-1"
             style="border: 1px solid #e5e5e5;width: 100%;border-radius: 0.2rem;cursor: pointer;">多选题
        </div>
        <div class="d-flex mb-3 justify-content-center align-items-center p-1"
             style="border: 1px solid #e5e5e5;width: 100%;border-radius: 0.2rem;cursor: pointer;">填空题
        </div>
        <div class="d-flex mb-3 justify-content-center align-items-center p-1"
             style="border: 1px solid #e5e5e5;width: 100%;border-radius: 0.2rem;cursor: pointer;">简答题
        </div>
      </div>
      <div class="col" style="">右侧</div>
    </div>
    <script src="../../lib/jquery-3.4.1/jquery-3.4.1.min.js" charset="utf-8"></script>
    <script src="../../lib/layui-v2.6.3/layui.js" charset="utf-8"></script>
    <script src="../../js/http.js" charset="utf-8"></script>
  </body>
</html>




```



#### 第42讲 单选、多选题布局讲解

![](images\42-1.png)

```js
<%--
  Created by IntelliJ IDEA.
  User: lcy
  Date: 2021-08-26
  Time: 13:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>Title</title>
    <link rel="stylesheet" href="../../lib/layui-v2.6.3/css/layui.css" media="all">
    <link rel="stylesheet" href="../../lib/bootstrap/bootstrap.min.css" media="all">
  </head>
  <body style="height: 100%;font-size: 0.8rem;">
    <%--最外层div，分成左右两个，div默认垂直排列，把div变成一个弹性盒子模型--%>
    <div class="d-flex" style="height: 100%;">
      <div class="d-flex flex-column p-3" style="width: 200px;border-right:1px solid #e5e5e5;">
        <div class="d-flex justify-content-center p-1 mb-3" style="width: 100%;border:1px solid #e5e5e5;cursor: pointer;">
          单选题
        </div>
        <div class="d-flex justify-content-center p-1 mb-3"
             style="width: 100%;border:1px solid #e5e5e5;cursor: pointer;">多选题
        </div>
        <div class="d-flex justify-content-center p-1 mb-3"
             style="width: 100%;border:1px solid #e5e5e5;cursor: pointer;">填空题
        </div>
        <div class="d-flex justify-content-center p-1 mb-3"
             style="width: 100%;border:1px solid #e5e5e5;cursor: pointer;">简答题
        </div>
      </div>
      <div class="col m-3" style="">
        <%--单选题--%>
        <div class="mb-3">
          <div class="d-flex align-items-center mb-3">
            <span>1</span><span>、</span>
            <input class="form-control form-control-sm mr-3" placeholder="请输入试题名称"/>
            <button class="layui-btn layui-btn-primary layui-btn-sm"><i class="layui-icon layui-icon-addition"></i>新增选项
            </button>
            <button class="layui-btn layui-btn-danger layui-btn-sm"><i class="layui-icon layui-icon-close"></i>删除试题
            </button>
          </div>
          <div style="margin-left: 30px;">
            <div class="d-flex align-items-center mb-3">
              <div class="col d-flex align-items-center">
                <span style="width: 30px;">选项</span><span>1</span>
                <input class="form-control form-control-sm ml-2"/>
              </div>
              <div class="col d-flex align-items-center">
                <span style="width: 30px;">序号</span>
                <input class="form-control form-control-sm ml-2"/>
              </div>
              <button type="button" class="layui-btn layui-btn-primary layui-btn-sm layui-btn-radius"><i
                class="layui-icon layui-icon-delete"></i>删除选项
              </button>
            </div>
            <div class="d-flex align-items-center mb-3">
              <div class="col d-flex align-items-center">
                <span style="width: 30px;">选项</span><span>2</span>
                <input class="form-control form-control-sm ml-2"/>
              </div>
              <div class="col d-flex align-items-center">
                <span style="width: 30px;">序号</span>
                <input class="form-control form-control-sm ml-2"/>
              </div>
              <button type="button" class="layui-btn layui-btn-primary layui-btn-sm layui-btn-radius"><i
                class="layui-icon layui-icon-delete"></i>删除选项
              </button>
            </div>
            <div class="d-flex align-items-center mb-3">
              <div class="col d-flex align-items-center">
                <span style="width: 30px;">选项</span><span>3</span>
                <input class="form-control form-control-sm ml-2"/>
              </div>
              <div class="col d-flex align-items-center">
                <span style="width: 30px;">序号</span>
                <input class="form-control form-control-sm ml-2"/>
              </div>
              <button type="button" class="layui-btn layui-btn-primary layui-btn-sm layui-btn-radius"><i
                class="layui-icon layui-icon-delete"></i>删除选项
              </button>
            </div>
          </div>
          <hr>
        </div>
        <%--多选题--%>
        <div class="mb-3">
          <div class="d-flex align-items-center mb-3">
            <span>2</span><span>、</span>
            <input class="form-control form-control-sm mr-3" placeholder="请输入试题名称"/>
            <button class="layui-btn layui-btn-primary layui-btn-sm"><i class="layui-icon layui-icon-addition"></i>新增选项
            </button>
            <button class="layui-btn layui-btn-danger layui-btn-sm"><i class="layui-icon layui-icon-close"></i>删除试题
            </button>
          </div>
          <div style="margin-left: 30px;">
            <div class="d-flex align-items-center mb-3">
              <div class="col d-flex align-items-center">
                <span style="width: 30px;">选项</span><span>1</span>
                <input class="form-control form-control-sm ml-2"/>
              </div>
              <div class="col d-flex align-items-center">
                <span style="width: 30px;">序号</span>
                <input class="form-control form-control-sm ml-2"/>
              </div>
              <button type="button" class="layui-btn layui-btn-primary layui-btn-sm layui-btn-radius"><i
                class="layui-icon layui-icon-delete"></i>删除选项
              </button>
            </div>
            <div class="d-flex align-items-center mb-3">
              <div class="col d-flex align-items-center">
                <span style="width: 30px;">选项</span><span>2</span>
                <input class="form-control form-control-sm ml-2"/>
              </div>
              <div class="col d-flex align-items-center">
                <span style="width: 30px;">序号</span>
                <input class="form-control form-control-sm ml-2"/>
              </div>
              <button type="button" class="layui-btn layui-btn-primary layui-btn-sm layui-btn-radius"><i
                class="layui-icon layui-icon-delete"></i>删除选项
              </button>
            </div>
            <div class="d-flex align-items-center mb-3">
              <div class="col d-flex align-items-center">
                <span style="width: 30px;">选项</span><span>3</span>
                <input class="form-control form-control-sm ml-2"/>
              </div>
              <div class="col d-flex align-items-center">
                <span style="width: 30px;">序号</span>
                <input class="form-control form-control-sm ml-2"/>
              </div>
              <button type="button" class="layui-btn layui-btn-primary layui-btn-sm layui-btn-radius"><i
                class="layui-icon layui-icon-delete"></i>删除选项
              </button>
            </div>
          </div>
          <hr>
        </div>
      </div>
    </div>
    <script src="../../lib/jquery-3.4.1/jquery-3.4.1.min.js" charset="utf-8"></script>
    <script src="../../lib/layui-v2.6.3/layui.js" charset="utf-8"></script>
    <script src="../../js/http.js" charset="utf-8"></script>
  </body>
</html>



```



#### 第43讲 单文本、多文本题布局讲解

![](images\42-1.png)

```js
<%--
  Created by IntelliJ IDEA.
  User: lcy
  Date: 2021-08-26
  Time: 13:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>Title</title>
    <link rel="stylesheet" href="../../lib/layui-v2.6.3/css/layui.css" media="all">
    <link rel="stylesheet" href="../../lib/bootstrap/bootstrap.min.css" media="all">
  </head>
  <body style="font-size:0.8rem;height: 100%;">
    <div class="d-flex" style="height: 100%;">
      <div class="d-flex p-3 flex-column" style="width: 200px;border-right: 1px solid
      #e5e5e5;">
        <div class="d-flex mb-3 justify-content-center align-items-center p-1"
             style="border: 1px solid #e5e5e5;width: 100%;border-radius: 0.2rem;cursor: pointer;">单选题
        </div>
        <div class="d-flex mb-3 justify-content-center align-items-center p-1"
             style="border: 1px solid #e5e5e5;width: 100%;border-radius: 0.2rem;cursor: pointer;">多选题
        </div>
        <div class="d-flex mb-3 justify-content-center align-items-center p-1"
             style="border: 1px solid #e5e5e5;width: 100%;border-radius: 0.2rem;cursor: pointer;">填空题
        </div>
        <div class="d-flex mb-3 justify-content-center align-items-center p-1"
             style="border: 1px solid #e5e5e5;width: 100%;border-radius: 0.2rem;cursor: pointer;">简答题
        </div>
      </div>
      <div class="col m-3" style="font-size: 0.8rem;">
        <%-- 单选--%>
        <div class="mb-3">
          <%--试题--%>
          <div class="d-flex align-items-center mb-3">
            <div><span>1</span><span>、</span></div>
            <input class="form-control form-control-sm mr-3" placeholder="请输入试题名称"/>
            <button class="layui-btn layui-btn-sm layui-btn-primary"><i class="layui-icon layui-icon-addition"></i>新增选项
            </button>
            <button class="layui-btn layui-btn-sm layui-btn-danger"><i class="layui-icon layui-icon-close"></i>删除试题
            </button>
          </div>
          <%--选项--%>
          <div style="padding-left: 30px;">
            <div class="d-flex align-items-center mb-2">
              <div class="col d-flex align-items-center">
                <span style="width: 30px;">选项</span><span>1</span>
                <input class="form-control form-control-sm ml-2"/></div>
              <div class="col d-flex align-items-center">
                <span style="width: 30px;" class="d-flex align-items-center">序号</span>
                <input class="form-control form-control-sm"/></div>
            </div>
            <div class="d-flex align-items-center mb-2">
              <div class="col d-flex align-items-center">
                <span style="width: 30px;">选项</span><span>2</span>
                <input class="form-control form-control-sm ml-2"/></div>
              <div class="col d-flex align-items-center">
                <span style="width: 30px;" class="d-flex align-items-center">序号</span>
                <input class="form-control form-control-sm"/></div>
            </div>
            <div class="d-flex align-items-center mb-2">
              <div class="col d-flex align-items-center">
                <span style="width: 30px;">选项</span><span>3</span>
                <input class="form-control form-control-sm ml-2"/></div>
              <div class="col d-flex align-items-center">
                <span style="width: 30px;" class="d-flex align-items-center">序号</span>
                <input class="form-control form-control-sm"/></div>
            </div>
          </div>
          <hr>
        </div>
        <%-- 多选题--%>
        <div class="mb-3">
          <%--试题--%>
          <div class="d-flex align-items-center mb-3">
            <div><span>2</span><span>、</span></div>
            <input class="form-control form-control-sm mr-3" placeholder="请输入试题名称"/>
            <button class="layui-btn layui-btn-sm layui-btn-primary"><i class="layui-icon layui-icon-addition"></i>新增选项
            </button>
            <button class="layui-btn layui-btn-sm layui-btn-danger"><i class="layui-icon layui-icon-close"></i>删除试题
            </button>
          </div>
          <%--选项--%>
          <div style="padding-left: 30px;">
            <div class="d-flex align-items-center mb-2">
              <div class="col d-flex align-items-center">
                <span style="width: 30px;">选项</span><span>1</span>
                <input class="form-control form-control-sm ml-2"/></div>
              <div class="col d-flex align-items-center">
                <span style="width: 30px;" class="d-flex align-items-center">序号</span>
                <input class="form-control form-control-sm"/></div>
            </div>
            <div class="d-flex align-items-center mb-2">
              <div class="col d-flex align-items-center">
                <span style="width: 30px;">选项</span><span>2</span>
                <input class="form-control form-control-sm ml-2"/></div>
              <div class="col d-flex align-items-center">
                <span style="width: 30px;" class="d-flex align-items-center">序号</span>
                <input class="form-control form-control-sm"/></div>
            </div>
            <div class="d-flex align-items-center mb-2">
              <div class="col d-flex align-items-center">
                <span style="width: 30px;">选项</span><span>3</span>
                <input class="form-control form-control-sm ml-2"/></div>
              <div class="col d-flex align-items-center">
                <span style="width: 30px;" class="d-flex align-items-center">序号</span>
                <input class="form-control form-control-sm"/></div>
            </div>
          </div>
          <hr>
        </div>
        <%-- 填空题--%>
        <div class="mb-3">
          <%--试题--%>
          <div class="d-flex align-items-center mb-3">
            <div><span>3</span><span>、</span></div>
            <input class="form-control form-control-sm mr-3" placeholder="请输入试题名称"/>
            <button class="layui-btn layui-btn-sm layui-btn-primary"><i class="layui-icon layui-icon-addition"></i>新增选项
            </button>
            <button class="layui-btn layui-btn-sm layui-btn-danger"><i class="layui-icon layui-icon-close"></i>删除试题
            </button>
          </div>
          <hr>
        </div>
        <%-- 简答题--%>
        <div class="mb-3">
          <%--试题--%>
          <div class="d-flex align-items-center mb-3">
            <div><span>4</span><span>、</span></div>
            <textarea class="form-control form-control-sm mr-3" placeholder="请输入试题名称"></textarea>
            <button class="layui-btn layui-btn-sm layui-btn-primary"><i class="layui-icon layui-icon-addition"></i>新增选项
            </button>
            <button class="layui-btn layui-btn-sm layui-btn-danger"><i class="layui-icon layui-icon-close"></i>删除试题
            </button>
          </div>
          <hr>
        </div>
      </div>
    </div>
    <script src="../../lib/jquery-3.4.1/jquery-3.4.1.min.js" charset="utf-8"></script>
    <script src="../../lib/layui-v2.6.3/layui.js" charset="utf-8"></script>
    <script src="../../js/http.js" charset="utf-8"></script>
  </body>
</html>


```



#### 第44讲  试题动态生成1

![](images\44-1.png)

##### 1、试题的数据格式

```js
[
    {
        "paperId": "",
        "questionId": "",
        "paperTitle": "您的性别?",
        "paperType": "1",
        "paperOrder": "",
        "paperChoice": [
            {
                "choiceText": "男",
                "choiceOrder": "1"
            },
            {
                "choiceText": "女",
                "choiceOrder": "2"
            }
        ]
    },
    {
        "paperId": "",
        "questionId": "",
        "paperTitle": "您的学历？",
        "paperType": "1",
        "paperOrder": "",
        "paperChoice": [
            {
                "choiceText": "初中",
                "choiceOrder": "1"
            },
            {
                "choiceText": "高中",
                "choiceOrder": "2"
            },
            {
                "choiceText": "大专",
                "choiceOrder": "3"
            },
            {
                "choiceText": "本科",
                "choiceOrder": "4"
            }
        ]
    },
    {
        "paperId": "",
        "questionId": "",
        "paperTitle": "您的爱好？",
        "paperType": "2",
        "paperOrder": "",
        "paperChoice": [
            {
                "choiceText": "音乐",
                "choiceOrder": "1"
            },
            {
                "choiceText": "体育",
                "choiceOrder": "2"
            },
            {
                "choiceText": "美术",
                "choiceOrder": "3"
            }
        ]
    },
    {
        "paperId": "",
        "questionId": "",
        "paperTitle": "您的生日？",
        "paperType": "3",
        "paperOrder": "",
        "paperChoice": []
    },
    {
        "paperId": "",
        "questionId": "",
        "paperTitle": "您的自我介绍？",
        "paperType": "4",
        "paperOrder": "",
        "paperChoice": []
    }
]
```

##### 2、实现原理

```js
1、jquery的克隆原理  clone()
2、jquery的find()方法
3、jquery的attr()方法
```



#### 第45讲 动态生成试题选项

```js
<%--
  Created by IntelliJ IDEA.
  User: lcy
  Date: 2021-08-26
  Time: 13:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>Title</title>
    <link rel="stylesheet" href="../../lib/layui-v2.6.3/css/layui.css" media="all">
    <link rel="stylesheet" href="../../lib/bootstrap/bootstrap.min.css" media="all">
  </head>
  <body style="height: 100%;font-size: 0.8rem;">
    <%--最外层div，分成左右两个，div默认垂直排列，把div变成一个弹性盒子模型--%>
    <div class="d-flex" style="height: 100%;">
      <div class="d-flex flex-column p-3" style="width: 200px;border-right:1px solid #e5e5e5;">
        <div class="d-flex justify-content-center p-1 mb-3" style="width: 100%;border:1px solid #e5e5e5;cursor: pointer;">
          单选题
        </div>
        <div class="d-flex justify-content-center p-1 mb-3"
             style="width: 100%;border:1px solid #e5e5e5;cursor: pointer;">多选题
        </div>
        <div class="d-flex justify-content-center p-1 mb-3"
             style="width: 100%;border:1px solid #e5e5e5;cursor: pointer;">填空题
        </div>
        <div class="d-flex justify-content-center p-1 mb-3"
             style="width: 100%;border:1px solid #e5e5e5;cursor: pointer;">简答题
        </div>
      </div>
      <%--生成试题存放的容器--%>
      <div id="paperList" class="col m-3 " style="overflow-y: auto;">
      
      </div>
      <%--试题循环的模板,需要影藏--%>
      <div class="template" style="display: none;">
        <%--单选题--%>
        <div id="paper1" class="mb-3">
          <div class="d-flex align-items-center mb-3">
            <span class="paperNum">1</span><span>、</span>
            <input type="hidden" name="paperId" class="form-control form-control-sm mr-3"/>
            <input type="hidden" name="questionId" class="form-control form-control-sm mr-3"/>
            <input name="paperTitle" class="form-control form-control-sm mr-3" placeholder="请输入试题名称"/>
            <button class="layui-btn layui-btn-primary layui-btn-sm"><i class="layui-icon layui-icon-addition"></i>新增选项
            </button>
            <button class="layui-btn layui-btn-danger layui-btn-sm"><i class="layui-icon layui-icon-close"></i>删除试题
            </button>
          </div>
          <div class="choiceList" style="margin-left: 30px;">
          
          </div>
          <hr>
        </div>
        <%--多选题--%>
        <div id="paper2" class="mb-3">
          <div class="d-flex align-items-center mb-3">
            <span class="paperNum">2</span><span>、</span>
            <input type="hidden" name="paperId" class="form-control form-control-sm mr-3"/>
            <input type="hidden" name="questionId" class="form-control form-control-sm mr-3"/>
            <input name="paperTitle" class="form-control form-control-sm mr-3" placeholder="请输入试题名称"/>
            <button class="layui-btn layui-btn-primary layui-btn-sm"><i class="layui-icon layui-icon-addition"></i>新增选项
            </button>
            <button class="layui-btn layui-btn-danger layui-btn-sm"><i class="layui-icon layui-icon-close"></i>删除试题
            </button>
          </div>
          <div class="choiceList" style="margin-left: 30px;">
          
          </div>
          <hr>
        </div>
        <%--单文本--%>
        <div id="paper3" class="mb-3">
          <div class="d-flex align-items-center mb-3">
            <div><span class="paperNum">3</span><span>、</span></div>
            <input type="hidden" name="paperId" class="form-control form-control-sm mr-3"/>
            <input type="hidden" name="questionId" class="form-control form-control-sm mr-3"/>
            <input name="paperTitle" class="form-control form-control-sm mr-3" placeholder="请输入试题名称"/>
            <button class="layui-btn layui-btn-sm layui-btn-primary layui-btn-radius">
              <i class="layui-icon layui-icon-delete"></i>
              删除试题
            </button>
          </div>
          <hr>
        </div>
        <%--多文本--%>
        <div id="paper4" class="mb-3">
          <div class="d-flex align-items-center mb-3">
            <div><span class="paperNum">4</span><span>、</span></div>
            <input type="hidden" name="paperId" class="form-control form-control-sm mr-3"/>
            <input type="hidden" name="questionId" class="form-control form-control-sm mr-3"/>
            <textarea name="paperTitle" class="form-control form-control-sm mr-3" placeholder="请输入试题名称"></textarea>
            <button class="layui-btn layui-btn-sm layui-btn-primary layui-btn-radius">
              <i class="layui-icon layui-icon-delete"></i>
              删除试题
            </button>
          </div>
          <hr>
        </div>
        <%--选项模板--%>
        <div class="d-flex align-items-center mb-3 choiceItem">
          <div class="col d-flex align-items-center">
            <span style="width: 30px;">选项</span><span class="choiceNum"></span>
            <input name="choiceText" class="form-control form-control-sm ml-2"/>
          </div>
          <div class="col d-flex align-items-center">
            <span  style="width: 30px;">序号</span>
            <input name="choiceOrder" class="form-control form-control-sm ml-2"/>
          </div>
          <button type="button" class="layui-btn layui-btn-primary layui-btn-sm layui-btn-radius"><i
            class="layui-icon layui-icon-delete"></i>删除选项
          </button>
        </div>
      </div>
    </div>
    <script src="../../lib/jquery-3.4.1/jquery-3.4.1.min.js" charset="utf-8"></script>
    <script src="../../lib/layui-v2.6.3/layui.js" charset="utf-8"></script>
    <script src="../../js/http.js" charset="utf-8"></script>
    <script>
        $(document).ready(function () {
            createPaper();
        })
        //试题数据
        var addModel = [
            {
                "paperId": "",
                "questionId": "",
                "paperTitle": "您的性别?",
                "paperType": "1",
                "paperOrder": "",
                "paperChoice": [
                    {
                        "choiceText": "男",
                        "choiceOrder": "1"
                    },
                    {
                        "choiceText": "女",
                        "choiceOrder": "2"
                    }
                ]
            },
            {
                "paperId": "",
                "questionId": "",
                "paperTitle": "您的学历？",
                "paperType": "1",
                "paperOrder": "",
                "paperChoice": [
                    {
                        "choiceText": "初中",
                        "choiceOrder": "1"
                    },
                    {
                        "choiceText": "高中",
                        "choiceOrder": "2"
                    },
                    {
                        "choiceText": "大专",
                        "choiceOrder": "3"
                    },
                    {
                        "choiceText": "本科",
                        "choiceOrder": "4"
                    }
                ]
            },
            {
                "paperId": "",
                "questionId": "",
                "paperTitle": "您的爱好？",
                "paperType": "2",
                "paperOrder": "",
                "paperChoice": [
                    {
                        "choiceText": "音乐",
                        "choiceOrder": "1"
                    },
                    {
                        "choiceText": "体育",
                        "choiceOrder": "2"
                    },
                    {
                        "choiceText": "美术",
                        "choiceOrder": "3"
                    }
                ]
            },
            {
                "paperId": "",
                "questionId": "",
                "paperTitle": "您的生日？",
                "paperType": "3",
                "paperOrder": "",
                "paperChoice": []
            },
            {
                "paperId": "",
                "questionId": "",
                "paperTitle": "您的自我介绍？",
                "paperType": "4",
                "paperOrder": "",
                "paperChoice": []
            }
        ]

        //循环生成试题
        function createPaper() {
            for (var i = 0; i < addModel.length; i++) {
                var data = addModel[i];
                //根据id找到存放试题的容器
                var listdom = $("#paperList");
                //找到克隆的模板
                var clonedom = $(".template #paper" + data.paperType).clone();
                //给输入框赋值
                clonedom.find("input[name='paperId']").val(data.paperId)
                clonedom.find("input[name='questionId']").val(data.questionId)
                clonedom.find(".paperNum").text(i+1)
                //试题的类型
                clonedom.attr("type",data.paperType);
                if (data.paperType == "1" || data.paperType == "2" || data.paperType == "3") {
                    clonedom.find("input[name='paperTitle']").val(data.paperTitle)
                } else {
                    clonedom.find("textarea").val(data.paperTitle)
                }
                //动态生成选项  只有单选和多选才有选项
                if (data.paperType == '1' || data.paperType == '2') {
                    //清空选项
                    clonedom.find(".choiceList").empty();
                    //获取选项的容器
                    var choiceList = clonedom.find(".choiceList");
                    if (data.paperChoice && data.paperChoice.length > 0) {
                        for (var j = 0; j < data.paperChoice.length; j++) {
                            //找到克隆选项的模板
                            var chioseClone = $(".template .choiceItem").clone();
                            //设置选项的索引
                            chioseClone.find(".choiceNum").text(j + 1)
                            //设置选项的名称和序号
                            chioseClone.find("input[name='choiceText']").val(data.paperChoice[j].choiceText)
                            chioseClone.find("input[name='choiceOrder']").val(data.paperChoice[j].choiceOrder)
                            choiceList.append(chioseClone);
                        }
                    }
                }
                listdom.append(clonedom);
            }
        }
    </script>
  </body>
</html>

```



#### 第46讲 点击分类动态生成试题



##### 1、生成原理

```js
点击左侧分类的时候，构造出生成试题是数据格式，添加到addModel里面即可
```



##### 2、源码

```js
<%--
  Created by IntelliJ IDEA.
  User: lcy
  Date: 2021-08-26
  Time: 13:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>Title</title>
    <link rel="stylesheet" href="../../lib/layui-v2.6.3/css/layui.css" media="all">
    <link rel="stylesheet" href="../../lib/bootstrap/bootstrap.min.css" media="all">
  </head>
  <body style="height: 100%;font-size: 0.8rem;">
    <%--最外层div，分成左右两个，div默认垂直排列，把div变成一个弹性盒子模型--%>
    <div class="d-flex" style="height: 100%;">
      <div class="d-flex flex-column p-3" style="width: 200px;border-right:1px solid #e5e5e5;">
        <div onclick="addPaper('1')" class="d-flex justify-content-center p-1 mb-3" style="width: 100%;border:1px solid
        #e5e5e5;cursor:
        pointer;">
          单选题
        </div>
        <div onclick="addPaper('2')" class="d-flex justify-content-center p-1 mb-3"
             style="width: 100%;border:1px solid #e5e5e5;cursor: pointer;">多选题
        </div>
        <div onclick="addPaper('3')" class="d-flex justify-content-center p-1 mb-3"
             style="width: 100%;border:1px solid #e5e5e5;cursor: pointer;">填空题
        </div>
        <div onclick="addPaper('4')" class="d-flex justify-content-center p-1 mb-3"
             style="width: 100%;border:1px solid #e5e5e5;cursor: pointer;">简答题
        </div>
      </div>
      <%--生成试题存放的容器--%>
      <div id="paperList" class="col m-3 " style="overflow-y: auto;">
      
      </div>
      <%--试题循环的模板,需要影藏--%>
      <div class="template" style="display: none;">
        <%--单选题--%>
        <div id="paper1" class="mb-3">
          <div class="d-flex align-items-center mb-3">
            <span class="paperNum">1</span><span>、</span>
            <input type="hidden" name="paperId" class="form-control form-control-sm mr-3"/>
            <input type="hidden" name="questionId" class="form-control form-control-sm mr-3"/>
            <input name="paperTitle" class="form-control form-control-sm mr-3" placeholder="请输入试题名称"/>
            <button class="layui-btn layui-btn-primary layui-btn-sm"><i class="layui-icon layui-icon-addition"></i>新增选项
            </button>
            <button class="layui-btn layui-btn-danger layui-btn-sm"><i class="layui-icon layui-icon-close"></i>删除试题
            </button>
          </div>
          <div class="choiceList" style="margin-left: 30px;">
          
          </div>
          <hr>
        </div>
        <%--多选题--%>
        <div id="paper2" class="mb-3">
          <div class="d-flex align-items-center mb-3">
            <span class="paperNum">2</span><span>、</span>
            <input type="hidden" name="paperId" class="form-control form-control-sm mr-3"/>
            <input type="hidden" name="questionId" class="form-control form-control-sm mr-3"/>
            <input name="paperTitle" class="form-control form-control-sm mr-3" placeholder="请输入试题名称"/>
            <button class="layui-btn layui-btn-primary layui-btn-sm"><i class="layui-icon layui-icon-addition"></i>新增选项
            </button>
            <button class="layui-btn layui-btn-danger layui-btn-sm"><i class="layui-icon layui-icon-close"></i>删除试题
            </button>
          </div>
          <div class="choiceList" style="margin-left: 30px;">
          
          </div>
          <hr>
        </div>
        <%--单文本--%>
        <div id="paper3" class="mb-3">
          <div class="d-flex align-items-center mb-3">
            <div><span class="paperNum">3</span><span>、</span></div>
            <input type="hidden" name="paperId" class="form-control form-control-sm mr-3"/>
            <input type="hidden" name="questionId" class="form-control form-control-sm mr-3"/>
            <input name="paperTitle" class="form-control form-control-sm mr-3" placeholder="请输入试题名称"/>
            <button class="layui-btn layui-btn-sm layui-btn-danger">
              <i class="layui-icon layui-icon-close"></i>
              删除试题
            </button>
          </div>
          <hr>
        </div>
        <%--多文本--%>
        <div id="paper4" class="mb-3">
          <div class="d-flex align-items-center mb-3">
            <div><span class="paperNum">4</span><span>、</span></div>
            <input type="hidden" name="paperId" class="form-control form-control-sm mr-3"/>
            <input type="hidden" name="questionId" class="form-control form-control-sm mr-3"/>
            <textarea name="paperTitle" class="form-control form-control-sm mr-3" placeholder="请输入试题名称"></textarea>
            <button class="layui-btn layui-btn-sm layui-btn-danger">
              <i class="layui-icon layui-icon-close"></i>
              删除试题
            </button>
          </div>
          <hr>
        </div>
        <%--选项模板--%>
        <div class="d-flex align-items-center mb-3 choiceItem">
          <div class="col d-flex align-items-center">
            <span style="width: 30px;">选项</span><span class="choiceNum"></span>
            <input name="choiceText" class="form-control form-control-sm ml-2"/>
          </div>
          <div class="col d-flex align-items-center">
            <span style="width: 30px;">序号</span>
            <input name="choiceOrder" class="form-control form-control-sm ml-2"/>
          </div>
          <button type="button" class="layui-btn layui-btn-primary layui-btn-sm layui-btn-radius"><i
            class="layui-icon layui-icon-delete"></i>删除选项
          </button>
        </div>
      </div>
    </div>
    <script src="../../lib/jquery-3.4.1/jquery-3.4.1.min.js" charset="utf-8"></script>
    <script src="../../lib/layui-v2.6.3/layui.js" charset="utf-8"></script>
    <script src="../../js/http.js" charset="utf-8"></script>
    <script>
        $(document).ready(function () {
            addPaper('1');
        })
        //试题数据
        var addModel = []

        //左侧分类点击事件
        function addPaper(type) {
            //构造试题需要的数据格式
            var objModel = {
                paperId: '', //试题id
                questionId: '', //问卷id
                paperTitle: '',//试题的标题
                paperType: '',//试题的类型
                paperChoice: [] //试题对应的选项
            }
            //如果是单选和多选题时，需要设置选项
            if (type == '1' || type == '2') {
                //选项的数据格式
                var obj = {
                    "choiceText": "",
                    "choiceOrder": ""
                }
                objModel.paperChoice.push(obj)
            }
            objModel.paperType = type;
            //把生成的数据添加到列表的数据里面
            addModel.push(objModel);
            //生成试题列表
            createPaper();
        }

        //循环生成试题
        function createPaper() {
            //清空试题列表
            $("#paperList").empty();
            for (var i = 0; i < addModel.length; i++) {
                var data = addModel[i];
                //根据id找到存放试题的容器
                var listdom = $("#paperList");
                //找到克隆的模板
                var clonedom = $(".template #paper" + data.paperType).clone();
                //给输入框赋值
                clonedom.find("input[name='paperId']").val(data.paperId)
                clonedom.find("input[name='questionId']").val(data.questionId)
                clonedom.find(".paperNum").text(i + 1)
                //试题的类型
                clonedom.attr("type", data.paperType);
                if (data.paperType == "1" || data.paperType == "2" || data.paperType == "3") {
                    clonedom.find("input[name='paperTitle']").val(data.paperTitle)
                } else {
                    clonedom.find("textarea").val(data.paperTitle)
                }
                //动态生成选项  只有单选和多选才有选项
                if (data.paperType == '1' || data.paperType == '2') {
                    //清空选项
                    clonedom.find(".choiceList").empty();
                    //获取选项的容器
                    var choiceList = clonedom.find(".choiceList");
                    if (data.paperChoice && data.paperChoice.length > 0) {
                        for (var j = 0; j < data.paperChoice.length; j++) {
                            //找到克隆选项的模板
                            var chioseClone = $(".template .choiceItem").clone();
                            //设置选项的索引
                            chioseClone.find(".choiceNum").text(j + 1)
                            //设置选项的名称和序号
                            chioseClone.find("input[name='choiceText']").val(data.paperChoice[j].choiceText)
                            chioseClone.find("input[name='choiceOrder']").val(data.paperChoice[j].choiceOrder)
                            choiceList.append(chioseClone);
                        }
                    }
                }
                listdom.append(clonedom);
            }
        }
    </script>
  </body>
</html>

```



#### 第47讲  试题新增选项

##### 1、思路

```js
1、给新增选项按钮添加点击事件
2、点击新增选项按钮时，传入当前数据addModel的索引和前端点击的dom对象；
3、点击事件中，构造选项数据，加入到addModel数据中；
4、通过克隆选项模板，把选项模板动态添加到选项列表中；
```

##### 2、源码

```js
<%--
  Created by IntelliJ IDEA.
  User: lcy
  Date: 2021-08-26
  Time: 13:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>Title</title>
    <link rel="stylesheet" href="../../lib/layui-v2.6.3/css/layui.css" media="all">
    <link rel="stylesheet" href="../../lib/bootstrap/bootstrap.min.css" media="all">
  </head>
  <body style="height: 100%;font-size: 0.8rem;">
    <%--最外层div，分成左右两个，div默认垂直排列，把div变成一个弹性盒子模型--%>
    <div class="d-flex" style="height: 100%;">
      <div class="d-flex flex-column p-3" style="width: 200px;border-right:1px solid #e5e5e5;">
        <div onclick="addPaper('1')" class="d-flex justify-content-center p-1 mb-3" style="width: 100%;border:1px solid
        #e5e5e5;cursor:
        pointer;">
          单选题
        </div>
        <div onclick="addPaper('2')" class="d-flex justify-content-center p-1 mb-3"
             style="width: 100%;border:1px solid #e5e5e5;cursor: pointer;">多选题
        </div>
        <div onclick="addPaper('3')" class="d-flex justify-content-center p-1 mb-3"
             style="width: 100%;border:1px solid #e5e5e5;cursor: pointer;">填空题
        </div>
        <div onclick="addPaper('4')" class="d-flex justify-content-center p-1 mb-3"
             style="width: 100%;border:1px solid #e5e5e5;cursor: pointer;">简答题
        </div>
      </div>
      <%--生成试题存放的容器--%>
      <div id="paperList" class="col m-3 " style="overflow-y: auto;">
      
      </div>
      <%--试题循环的模板,需要影藏--%>
      <div class="template" style="display: none;">
        <%--单选题--%>
        <div id="paper1" class="mb-3">
          <div class="d-flex align-items-center mb-3">
            <span class="paperNum">1</span><span>、</span>
            <input type="hidden" name="paperId" class="form-control form-control-sm mr-3"/>
            <input type="hidden" name="questionId" class="form-control form-control-sm mr-3"/>
            <input name="paperTitle" class="form-control form-control-sm mr-3" placeholder="请输入试题名称"/>
            <button class="layui-btn layui-btn-primary layui-btn-sm addChoice"><i
              class="layui-icon layui-icon-addition"></i>新增选项
            </button>
            <button class="layui-btn layui-btn-danger layui-btn-sm"><i class="layui-icon layui-icon-close"></i>删除试题
            </button>
          </div>
          <div class="choiceList" style="margin-left: 30px;">
          
          </div>
          <hr>
        </div>
        <%--多选题--%>
        <div id="paper2" class="mb-3">
          <div class="d-flex align-items-center mb-3">
            <span class="paperNum">2</span><span>、</span>
            <input type="hidden" name="paperId" class="form-control form-control-sm mr-3"/>
            <input type="hidden" name="questionId" class="form-control form-control-sm mr-3"/>
            <input name="paperTitle" class="form-control form-control-sm mr-3" placeholder="请输入试题名称"/>
            <button class="layui-btn layui-btn-primary layui-btn-sm addChoice">
              <i class="layui-icon layui-icon-addition"></i>新增选项
            </button>
            <button class="layui-btn layui-btn-danger layui-btn-sm"><i class="layui-icon layui-icon-close"></i>删除试题
            </button>
          </div>
          <div class="choiceList" style="margin-left: 30px;">
          
          </div>
          <hr>
        </div>
        <%--单文本--%>
        <div id="paper3" class="mb-3">
          <div class="d-flex align-items-center mb-3">
            <div><span class="paperNum">3</span><span>、</span></div>
            <input type="hidden" name="paperId" class="form-control form-control-sm mr-3"/>
            <input type="hidden" name="questionId" class="form-control form-control-sm mr-3"/>
            <input name="paperTitle" class="form-control form-control-sm mr-3" placeholder="请输入试题名称"/>
            <button class="layui-btn layui-btn-sm layui-btn-danger">
              <i class="layui-icon layui-icon-close"></i>
              删除试题
            </button>
          </div>
          <hr>
        </div>
        <%--多文本--%>
        <div id="paper4" class="mb-3">
          <div class="d-flex align-items-center mb-3">
            <div><span class="paperNum">4</span><span>、</span></div>
            <input type="hidden" name="paperId" class="form-control form-control-sm mr-3"/>
            <input type="hidden" name="questionId" class="form-control form-control-sm mr-3"/>
            <textarea name="paperTitle" class="form-control form-control-sm mr-3" placeholder="请输入试题名称"></textarea>
            <button class="layui-btn layui-btn-sm layui-btn-danger">
              <i class="layui-icon layui-icon-close"></i>
              删除试题
            </button>
          </div>
          <hr>
        </div>
        <%--选项模板--%>
        <div class="d-flex align-items-center mb-3 choiceItem">
          <div class="col d-flex align-items-center">
            <span style="width: 30px;">选项</span><span class="choiceNum"></span>
            <input name="choiceText" class="form-control form-control-sm ml-2"/>
          </div>
          <div class="col d-flex align-items-center">
            <span style="width: 30px;">序号</span>
            <input name="choiceOrder" class="form-control form-control-sm ml-2"/>
          </div>
          <button type="button" class="layui-btn layui-btn-primary layui-btn-sm layui-btn-radius"><i
            class="layui-icon layui-icon-delete"></i>删除选项
          </button>
        </div>
      </div>
    </div>
    <script src="../../lib/jquery-3.4.1/jquery-3.4.1.min.js" charset="utf-8"></script>
    <script src="../../lib/layui-v2.6.3/layui.js" charset="utf-8"></script>
    <script src="../../js/http.js" charset="utf-8"></script>
    <script>
        $(document).ready(function () {
            addPaper('1');
        })
        //试题数据
        var addModel = []

        //左侧分类点击事件
        function addPaper(type) {
            //构造试题需要的数据格式
            var objModel = {
                paperId: '', //试题id
                questionId: '', //问卷id
                paperTitle: '',//试题的标题
                paperType: '',//试题的类型
                paperChoice: [] //试题对应的选项
            }
            //如果是单选和多选题时，需要设置选项
            if (type == '1' || type == '2') {
                //选项的数据格式
                var obj = {
                    "choiceText": "",
                    "choiceOrder": ""
                }
                objModel.paperChoice.push(obj)
            }
            objModel.paperType = type;
            //把生成的数据添加到列表的数据里面
            addModel.push(objModel);
            //生成试题列表
            createPaper();
        }

        //循环生成试题
        function createPaper() {
            //清空试题列表
            $("#paperList").empty();
            for (var i = 0; i < addModel.length; i++) {
                var data = addModel[i];
                //根据id找到存放试题的容器
                var listdom = $("#paperList");
                //找到克隆的模板
                var clonedom = $(".template #paper" + data.paperType).clone();
                //给输入框赋值
                clonedom.find("input[name='paperId']").val(data.paperId)
                clonedom.find("input[name='questionId']").val(data.questionId)
                clonedom.find(".paperNum").text(i + 1)
                //试题的类型
                clonedom.attr("type", data.paperType);
                if (data.paperType == "1" || data.paperType == "2" || data.paperType == "3") {
                    clonedom.find("input[name='paperTitle']").val(data.paperTitle)
                } else {
                    clonedom.find("textarea").val(data.paperTitle)
                }
                if (data.paperType == "1" || data.paperType == "2") {
                    //给新增选项按钮添加点击事件
                    clonedom.find(".addChoice").attr('onclick', 'addChoice(this,' + i + ')')
                }
                //动态生成选项  只有单选和多选才有选项
                if (data.paperType == '1' || data.paperType == '2') {
                    //清空选项
                    clonedom.find(".choiceList").empty();
                    //获取选项的容器
                    var choiceList = clonedom.find(".choiceList");
                    if (data.paperChoice && data.paperChoice.length > 0) {
                        for (var j = 0; j < data.paperChoice.length; j++) {
                            //找到克隆选项的模板
                            var chioseClone = $(".template .choiceItem").clone();
                            //设置选项的索引
                            chioseClone.find(".choiceNum").text(j + 1)
                            //设置选项的名称和序号
                            chioseClone.find("input[name='choiceText']").val(data.paperChoice[j].choiceText)
                            chioseClone.find("input[name='choiceOrder']").val(data.paperChoice[j].choiceOrder)
                            choiceList.append(chioseClone);
                        }
                    }
                }
                listdom.append(clonedom);
            }
        }

        //新增选项点击事件
        function addChoice(dom, num) {
            //构造选项数据，添加到addModel里面
            addModel[num].paperChoice.push({
                "choiceText": "",
                "choiceOrder": ""
            })
            //克隆选项模板添加到选项列表里面
            //获取选项列表容器
            var choiceList = $(dom).parent().parent().find(".choiceList");
            //克隆模板
            var choiceClone = $(".template .choiceItem").clone();
            choiceClone.find("input[name='choiceText']").val('')
            choiceClone.find("input[name='choiceOrder']").val('')
            //设置选项文字后面的序号
            var j = $(dom).parent().parent().find(".choiceList .choiceItem").length;
            console.log(j)
            choiceClone.find(".choiceNum").text(j + 1)
            choiceList.append(choiceClone)
        }
    </script>
  </body>
</html>

```



#### 第48讲 删除选项

##### 1、思路

```js
1、给删除选项按钮添加点击事件，并把当前点击的dom对象传递过去；
2、通过jquery的remove()方法移除
3、移除后，序号不对；获取试题的所有列表数据；然后重新生成试题列表
```

#### 第49讲 删除试题

##### 1、思路

```js
1、给删除按钮添加点击事件；
2、通过jquery的remove()方法移除
3、获取新的页面数据；
4、重新生成试题；
```



#### 第50讲 设计试题后台接口开发讲解

##### 1、接口开发思路

试题保存，涉及到两张表的操作；试题表和选项表（当题目类型是单选题和多选题的时候）

```js
1、保存试题：
2、保存选项表(如果试题是单选题和多选题的时候)，选项表，使用批量保存；

课程中采用 先删除，再保存的方式进行保存
```

##### 2、涉及知识点：

Mybatis的动态SQL实现批量新增操作：

```js
https://mybatis.org/mybatis-3/zh/dynamic-sql.html

foreach：
动态 SQL 的另一个常见使用场景是对集合进行遍历（尤其是在构建 IN 条件语句的时候）。比如：

1、构建in语句
<select id="selectPostIn" resultType="domain.blog.Post">
  SELECT *
  FROM POST P
  WHERE ID in
  <foreach item="item" index="index" collection="list"
      open="(" separator="," close=")">
        #{item}
  </foreach>
</select>

2、批量新增使用
<insert id="saveUser" parameterType="java.util.List">
        insert into sys_user(username,password) values
        <foreach collection="list" index="index" item="item" separator=",">
            (#{item.username},#{item.password})
        </foreach>
</insert>

3、批量更新使用
<update id="updateUser" parameterType="java.util.List">
        <foreach collection="list" index="index" item="item" separator=";">
            update sys_user set password = #{item.password} where username = #{item.username}
        </foreach>
</update>
```

##### 3、保存试题接口

```js
1、删除选项接口：（当试题类型为单选题和多选题）根据试题id删除选项
2、删除试题接口：根据问卷id删除试题
3、新增试题接口：需要返回主键
4、批量保存选项接口： MyBatis动态SQL使用
```



#### 第51讲  试题选项接口开发

##### 1、新建实体类SysPaperChoice

新建包com.itmk.web.sys_paper_choice.entity 然后新建类SysPaperChoice

```js
package com.itmk.web.sys_paper_choice.entity;

import lombok.Data;

import java.io.Serializable;

@Data
public class SysPaperChoice implements Serializable {
    private Long chioceId;
    //试题id
    private Long paperId;
    //选项的名称
    private String choiceText;
    //序号
    private Long choiceOrder;
}

```

##### 2、新建mapper层

```js
package com.itmk.web.sys_paper_choice.mapper;

import com.itmk.web.sys_paper_choice.entity.SysPaperChoice;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface SysPaperChoiceMapper {
    //根据试题id删除选项
    boolean deleteChoice(@Param("paperId") Long paperId);
    //批量保存选项
    boolean saveBatch(@Param("choices") List<SysPaperChoice> choices);
}

```

##### 3、新建mapper映射文件

新建SysPaperChoiceMapper.xml映射文件

```js
<?xml version="1.0" encoding="utf-8" ?>
<!DOCTYPE mapper
        PUBLIC "-//mybatis.org//DTD Mapper 3.0//EN"
        "http://mybatis.org/dtd/mybatis-3-mapper.dtd">
<mapper namespace="com.itmk.web.sys_paper_choice.mapper.SysPaperChoiceMapper">
    <!--    解决数据库字段和实体类字段不一样的问题-->
    <resultMap id="sysChoice" type="com.itmk.web.sys_paper_choice.entity.SysPaperChoice">
        <id property="chioceId" column="chioce_id"></id>
        <result property="paperId" column="paper_id"></result>
        <result property="choiceText" column="choice_text"></result>
        <result property="choiceOrder" column="choice_order"></result>
    </resultMap>
    <!--删除选项-->
    <delete id="deleteChoice">
    delete from sys_paper_choice
    where paper_id =#{paperId}
    </delete>
    <!--批量新增选项
    insert into sys_paper_choice(paper_id,choice_text,choice_order) values
    (paperId,choiceText,choiceOrder),
    (paperId,choiceText,choiceOrder),
    (paperId,choiceText,choiceOrder),
    -->
    <insert id="saveBatch" parameterType="java.util.List">
        insert into sys_paper_choice(paper_id,choice_text,choice_order)
        values
        <foreach collection="choices" item="choice" separator=",">
            (#{choice.paperId},#{choice.choiceText},#{choice.choiceOrder})
        </foreach>
    </insert>
</mapper>
```

##### 4、新建service层

```js
package com.itmk.web.sys_paper_choice.service;

import com.itmk.web.sys_paper_choice.entity.SysPaperChoice;

import java.util.List;

public interface SysPaperChoiceService {
    //根据试题id删除选项
    boolean deleteChoice(Long paperId);
    //批量保存选项
    boolean saveBatch(List<SysPaperChoice> choices);
}

```

##### 5、新建service实现类

```js
package com.itmk.web.sys_paper_choice.service.impl;

import com.itmk.web.sys_paper_choice.entity.SysPaperChoice;
import com.itmk.web.sys_paper_choice.mapper.SysPaperChoiceMapper;
import com.itmk.web.sys_paper_choice.service.SysPaperChoiceService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;
@Service
public class SysPaperChoiceServiceImpl implements SysPaperChoiceService {
    @Resource
    private SysPaperChoiceMapper sysPaperChoiceMapper;
    @Override
    public boolean deleteChoice(Long paperId) {
        return sysPaperChoiceMapper.deleteChoice(paperId);
    }

    @Override
    public boolean saveBatch(List<SysPaperChoice> choices) {
        return sysPaperChoiceMapper.saveBatch(choices);
    }
}
```



#### 第52讲 试题接口开发

##### 1、新建试题实体类

```js
package com.itmk.web.sys_paper.entity;

import lombok.Data;

import java.io.Serializable;

@Data
public class SysPaper implements Serializable {
    //试题id
    private Long paperId;
    //问卷id
    private Long questionId;
    //标题
    private String paperTitle;
    //试题类型
    private String paperType;
    private Long paperOrder;
}
```

**新建参数接受类**: 主要用于接受前端页面传来的参数

```js
package com.itmk.web.sys_paper.entity;

import com.itmk.web.sys_paper_choice.entity.SysPaperChoice;
import lombok.Data;

import java.io.Serializable;
import java.util.List;

@Data
public class SysPaperParm implements Serializable {
    //试题id
    private Long paperId;
    //问卷id
    private Long questionId;
    //标题
    private String paperTitle;
    //试题类型
    private String paperType;
    private Long paperOrder;
    private List<SysPaperChoice> paperChoice;
}

```

##### 2、mapper层

```js
package com.itmk.web.sys_paper.mapper;

import com.itmk.web.sys_paper.entity.SysPaper;
import org.apache.ibatis.annotations.Param;

public interface SysPaperMapper {
    //新增试题接口
    boolean addPaper(@Param("paper") SysPaper paper);
    //删除试题接口
    boolean deletePaper(@Param("questionId") Long questionId);
}

```



##### 3、mapper映射文件

**注意事项：新增试题，需要返回主键，保存选项时，需要关联试题id**

```js
<?xml version="1.0" encoding="utf-8" ?>
<!DOCTYPE mapper
        PUBLIC "-//mybatis.org//DTD Mapper 3.0//EN"
        "http://mybatis.org/dtd/mybatis-3-mapper.dtd">
<mapper namespace="com.itmk.web.sys_paper.mapper.SysPaperMapper">
    <!--    解决数据库字段和实体类字段不一样的问题-->
    <resultMap id="sysChoice" type="com.itmk.web.sys_paper.entity.SysPaper">
        <id property="paperId" column="paper_id"></id>
        <result property="questionId" column="question_id"></result>
        <result property="paperTitle" column="paper_title"></result>
        <result property="paperType" column="paper_type"></result>
        <result property="paperOrder" column="paper_order"></result>
    </resultMap>
    <!--新增试题-->
    <insert id="addPaper" useGeneratedKeys="true" keyProperty="paperId" keyColumn="paper_id" parameterType="com.itmk.web.sys_paper.entity.SysPaper">
        insert into sys_paper(question_id,paper_title,paper_type,paper_order)
        values
        (#{paper.questionId},#{paper.paperTitle},#{paper.paperType},#{paper.paperOrder})
    </insert>
    <!--删除试题-->
    <delete id="deletePaper">
        delete from sys_paper
        where question_id =#{questionId}
    </delete>
</mapper>
```



##### 4、service层

```js
package com.itmk.web.sys_paper.service;

import com.itmk.web.sys_paper.entity.SysPaperParm;

import java.util.List;

public interface SysPaperService {
    //保存试题
    void savePaper(List<SysPaperParm> list);
}

```



##### 5、service实现类

```js
package com.itmk.web.sys_paper.service.impl;

import com.itmk.web.sys_paper.entity.SysPaper;
import com.itmk.web.sys_paper.entity.SysPaperParm;
import com.itmk.web.sys_paper.mapper.SysPaperMapper;
import com.itmk.web.sys_paper.service.SysPaperService;
import com.itmk.web.sys_paper_choice.mapper.SysPaperChoiceMapper;
import org.springframework.beans.BeanUtils;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class SysPaperServiceImpl implements SysPaperService {
    @Resource
    private SysPaperMapper sysPaperMapper;
    @Resource
    private SysPaperChoiceMapper sysPaperChoiceMapper;

    @Override
    public void savePaper(List<SysPaperParm> list) {
        //先删除，再保存
        for (int i = 0; i < list.size(); i++) {
            //判断是否是单选或者多选，如果是，需要删除对应的选项
            if (list.get(i).getPaperType().equals("1") || list.get(i).getPaperType().equals("2")) {
                //根据试题id删除选项
                sysPaperChoiceMapper.deleteChoice(list.get(i).getPaperId());
            }
            //删除试题
            sysPaperMapper.deletePaper(list.get(i).getQuestionId());
        }
        //生成试题
        for (int j = 0; j < list.size(); j++) {
            //先保存试题
            SysPaper paper = new SysPaper();
            BeanUtils.copyProperties(list.get(j), paper);
            //设置试题序号
            paper.setPaperOrder(j + 1L);
            sysPaperMapper.addPaper(paper);
            //判断是否是单选和多选，是的话，需要保存选项
            if (list.get(j).getPaperType().equals("1") || list.get(j).getPaperType().equals("2")) {
                //此处，使用批量保存的方式保存选项，保存之前，需要设置试题的id
                list.get(j).getPaperChoice().forEach(item -> {
                    //设置试题的id
                    item.setPaperId(paper.getPaperId());
                });
                //保存选项
                sysPaperChoiceMapper.saveBatch(list.get(j).getPaperChoice());
            }
        }
    }
}

```

##### 6、控制器层

控制器添加：savePaper()方法

```js
package com.itmk.web.sys_paper.controller;

import com.itmk.common.ResultUtils;
import com.itmk.common.ResultVo;
import com.itmk.web.sys_paper.entity.SysPaper;
import com.itmk.web.sys_paper.entity.SysPaperParm;
import com.itmk.web.sys_paper.service.SysPaperService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * 设计试题控制器
 */
@Controller
@RequestMapping("/api/sysPaper")
public class SysPaperController {

    @Autowired
    private SysPaperService sysPaperService;

    /**
     * 试题设计首页
     */
    @GetMapping("/index")
    public String index() {
        return "system/paper/index";
    }

    /**
     * 试题设计页面
     */
    @GetMapping("/setting")
    public String setting() {
        return "system/paper/setting";
    }

    /**
     * 保存试题
     */
    @PostMapping("/savePaper")
    @ResponseBody
    public ResultVo savePaper(@RequestBody List<SysPaperParm> paperList) {
        sysPaperService.savePaper(paperList);
        return ResultUtils.success("操作成功!");
    }
}

```



#### 第53讲 新增试题接口对接

##### 1、修改http.js的post请求中的contentType 为如下所示

把 contentType: 'application/x-www-form-urlencoded; charset=UTF-8', 修改为

contentType: contentType == undefined ? 'application/x-www-form-urlencoded; charset=UTF-8' : contentType

```js
/*http请求工具*/
var http = (function () {
    var core = {};
    // post请求
    core.post = function (url, parms, callback,contentType, async) {
        $.ajax({
            url: url, //请求后端的地址
            cache: false,
            async: async == undefined ? true : async,
            data: parms,
            type: "POST",
            // contentType: 'application/x-www-form-urlencoded; charset=UTF-8',
            contentType: contentType == undefined ? 'application/x-www-form-urlencoded; charset=UTF-8' : contentType,
            success: function (data) { //成功的回调
                if (data.code == 200 || data.code == 0) {
                    if (typeof callback == "function") {
                        callback(data);
                    }
                }else{
                    layer.msg(data.msg);
                    return;
                }

            },
            //错误的处理
            error: function (XMLHttpRequest, textStatus, errorThrown) {
                if (XMLHttpRequest.status == 403) {
                    layer.msg("您没有权限访问，请联系管理员！")
                } else if (XMLHttpRequest.status == 500) {
                    layer.msg("服务器内部错误！")
                } else {
                    layer.msg("服务器未知错误！")
                }
            }
        });
    };
    //get请求
    core.get = function (url, parms, callback, async) {
        $.ajax({
            url: url,
            cache: false,
            async: async == undefined ? true : async,
            data: parms,
            type: "GET",
            contentType: 'application/x-www-form-urlencoded; charset=UTF-8',
            success: function (data) {
                if (data.code == 200 || data.code == 0) {
                    if (typeof callback == "function") {
                        callback(data);
                    }
                }else{
                    layer.msg(data.msg);
                    return;
                }
            },
            error: function (XMLHttpRequest, textStatus, errorThrown) {
                if (XMLHttpRequest.status == 403) {
                    layer.msg("您没有权限访问，请联系管理员！")
                } else if (XMLHttpRequest.status == 500) {
                    layer.msg("服务器内部错误！")
                } else {
                    layer.msg("服务器未知错误！")
                }
            }
        });
    };
    return core;
})(http, window);
```



##### 2、页面对接

```js
			//设计试题点击事件
            table.on('tool(questiontable)', function (obj) {
                console.log(obj)
                if (obj.event == 'edit') {
                    // layer.msg('编辑')
                    layer.open({
                        skin: 'layui-layer-molv', //皮肤
                        offset: '0px',
                        title: '设计试题',
                        type: 2,
                        area: ['1080px', '800px'],
                        content: '/api/sysPaper/setting?questionId='+obj.data.questionId,
                        btn: ['确定', '取消'],
                        btn1: function (index) {
                            var parms = window["layui-layer-iframe" + index].getFormData();
                            console.log('111111111')
                            console.log(parms)
                            http.post("/api/sysPaper/savePaper",JSON.stringify(parms),function (data) {
                              console.log(data);
                              layer.close(index);
                            },"application/json")
                        },
                        btn2: function (index) {

                        }
                    })
                }
            });
```



##### 3、setting.jsp需要返回数据

定义返回函数 adddata()返回页面数据

```js
	<%--
  Created by IntelliJ IDEA.
  User: lcy
  Date: 2021-08-26
  Time: 13:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>Title</title>
    <link rel="stylesheet" href="../../lib/layui-v2.6.3/css/layui.css" media="all">
    <link rel="stylesheet" href="../../lib/bootstrap/bootstrap.min.css" media="all">
  </head>
  <body style="height: 100%;font-size: 0.8rem;">
    <%--最外层div，分成左右两个，div默认垂直排列，把div变成一个弹性盒子模型--%>
    <div class="d-flex" style="height: 100%;">
      <div class="d-flex flex-column p-3" style="width: 200px;border-right:1px solid #e5e5e5;">
        <span style="display: none;" id="fontQuestionId">${questionId}</span>
        <div onclick="addPaper('1')" class="d-flex justify-content-center p-1 mb-3" style="width: 100%;border:1px solid
        #e5e5e5;cursor:
        pointer;">
          单选题
        </div>
        <div onclick="addPaper('2')" class="d-flex justify-content-center p-1 mb-3"
             style="width: 100%;border:1px solid #e5e5e5;cursor: pointer;">多选题
        </div>
        <div onclick="addPaper('3')" class="d-flex justify-content-center p-1 mb-3"
             style="width: 100%;border:1px solid #e5e5e5;cursor: pointer;">填空题
        </div>
        <div onclick="addPaper('4')" class="d-flex justify-content-center p-1 mb-3"
             style="width: 100%;border:1px solid #e5e5e5;cursor: pointer;">简答题
        </div>
      </div>
      <%--生成试题存放的容器--%>
      <div id="paperList" class="col m-3 " style="overflow-y: auto;">
      
      </div>
      <%--试题循环的模板,需要影藏--%>
      <div class="template" style="display: none;">
        <%--单选题--%>
        <div id="paper1" class="mb-3 paperItem">
          <div class="d-flex align-items-center mb-3">
            <span class="paperNum">1</span><span>、</span>
            <input type="hidden" name="paperId" class="form-control form-control-sm mr-3"/>
            <input type="hidden" name="questionId" class="form-control form-control-sm mr-3"/>
            <input name="paperTitle" class="form-control form-control-sm mr-3" placeholder="请输入试题名称"/>
            <button class="layui-btn layui-btn-primary layui-btn-sm addChoice"><i
              class="layui-icon layui-icon-addition"></i>新增选项
            </button>
            <button class="layui-btn layui-btn-danger layui-btn-sm deletePaper">
              <i class="layui-icon layui-icon-close"></i>删除试题
            </button>
          </div>
          <div class="choiceList" style="margin-left: 30px;">
          
          </div>
          <hr>
        </div>
        <%--多选题--%>
        <div id="paper2" class="mb-3 paperItem">
          <div class="d-flex align-items-center mb-3">
            <span class="paperNum">2</span><span>、</span>
            <input type="hidden" name="paperId" class="form-control form-control-sm mr-3"/>
            <input type="hidden" name="questionId" class="form-control form-control-sm mr-3"/>
            <input name="paperTitle" class="form-control form-control-sm mr-3" placeholder="请输入试题名称"/>
            <button class="layui-btn layui-btn-primary layui-btn-sm addChoice">
              <i class="layui-icon layui-icon-addition"></i>新增选项
            </button>
            <button class="layui-btn layui-btn-danger layui-btn-sm deletePaper">
              <i class="layui-icon layui-icon-close"></i>删除试题
            </button>
          </div>
          <div class="choiceList" style="margin-left: 30px;">
          
          </div>
          <hr>
        </div>
        <%--单文本--%>
        <div id="paper3" class="mb-3 paperItem">
          <div class="d-flex align-items-center mb-3">
            <div><span class="paperNum">3</span><span>、</span></div>
            <input type="hidden" name="paperId" class="form-control form-control-sm mr-3"/>
            <input type="hidden" name="questionId" class="form-control form-control-sm mr-3"/>
            <input name="paperTitle" class="form-control form-control-sm mr-3" placeholder="请输入试题名称"/>
            <button class="layui-btn layui-btn-sm layui-btn-danger deletePaper">
              <i class="layui-icon layui-icon-close"></i>
              删除试题
            </button>
          </div>
          <hr>
        </div>
        <%--多文本--%>
        <div id="paper4" class="mb-3 paperItem">
          <div class="d-flex align-items-center mb-3">
            <div><span class="paperNum">4</span><span>、</span></div>
            <input type="hidden" name="paperId" class="form-control form-control-sm mr-3"/>
            <input type="hidden" name="questionId" class="form-control form-control-sm mr-3"/>
            <textarea name="paperTitle" class="form-control form-control-sm mr-3" placeholder="请输入试题名称"></textarea>
            <button class="layui-btn layui-btn-sm layui-btn-danger deletePaper">
              <i class="layui-icon layui-icon-close"></i>
              删除试题
            </button>
          </div>
          <hr>
        </div>
        <%--选项模板--%>
        <div class="d-flex align-items-center mb-3 choiceItem">
          <div class="col d-flex align-items-center">
            <span style="width: 30px;">选项</span><span class="choiceNum"></span>
            <input name="choiceText" class="form-control form-control-sm ml-2"/>
          </div>
          <div class="col d-flex align-items-center">
            <span style="width: 30px;">序号</span>
            <input name="choiceOrder" class="form-control form-control-sm ml-2"/>
          </div>
          <button type="button" class="layui-btn layui-btn-primary layui-btn-sm layui-btn-radius deleteChoice"><i
            class="layui-icon layui-icon-delete"></i>删除选项
          </button>
        </div>
      </div>
    </div>
    <script src="../../lib/jquery-3.4.1/jquery-3.4.1.min.js" charset="utf-8"></script>
    <script src="../../lib/layui-v2.6.3/layui.js" charset="utf-8"></script>
    <script src="../../js/http.js" charset="utf-8"></script>
    <script>
        $(document).ready(function () {
            addPaper('1');
        })
        //试题数据
        var addModel = []

        //左侧分类点击事件
        function addPaper(type) {
            //先获取页面的数据
            getAllList();
            //构造试题需要的数据格式
            var objModel = {
                paperId: '', //试题id
                questionId: '', //问卷id
                paperTitle: '',//试题的标题
                paperType: '',//试题的类型
                paperChoice: [] //试题对应的选项
            }
            //如果是单选和多选题时，需要设置选项
            if (type == '1' || type == '2') {
                //选项的数据格式
                var obj = {
                    "choiceText": "",
                    "choiceOrder": ""
                }
                objModel.paperChoice.push(obj)
            }
            objModel.paperType = type;
            //把生成的数据添加到列表的数据里面
            addModel.push(objModel);
            //生成试题列表
            createPaper();
        }

        //循环生成试题
        function createPaper() {
            //清空试题列表
            $("#paperList").empty();
            for (var i = 0; i < addModel.length; i++) {
                var data = addModel[i];
                //根据id找到存放试题的容器
                var listdom = $("#paperList");
                //找到克隆的模板
                var clonedom = $(".template #paper" + data.paperType).clone();
                //给输入框赋值
                clonedom.find("input[name='paperId']").val(data.paperId)
                clonedom.find("input[name='questionId']").val($("#fontQuestionId").text())
                clonedom.find(".paperNum").text(i + 1)
                //给试题添加点击事件
                clonedom.find(".deletePaper").attr('onclick', 'deletePaper(this)');
                //试题的类型
                clonedom.attr("type", data.paperType);
                if (data.paperType == "1" || data.paperType == "2" || data.paperType == "3") {
                    clonedom.find("input[name='paperTitle']").val(data.paperTitle)
                } else {
                    clonedom.find("textarea").val(data.paperTitle)
                }
                if (data.paperType == "1" || data.paperType == "2") {
                    //给新增选项按钮添加点击事件
                    clonedom.find(".addChoice").attr('onclick', 'addChoice(this,' + i + ')')
                }
                //动态生成选项  只有单选和多选才有选项
                if (data.paperType == '1' || data.paperType == '2') {
                    //清空选项
                    clonedom.find(".choiceList").empty();
                    //获取选项的容器
                    var choiceList = clonedom.find(".choiceList");
                    if (data.paperChoice && data.paperChoice.length > 0) {
                        for (var j = 0; j < data.paperChoice.length; j++) {
                            //找到克隆选项的模板
                            var chioseClone = $(".template .choiceItem").clone();
                            //设置选项的索引
                            chioseClone.find(".choiceNum").text(j + 1)
                            //给试题选项添加点击事件
                            chioseClone.find(".deleteChoice").attr("onclick", 'deleteChoice(this)')
                            //设置选项的名称和序号
                            chioseClone.find("input[name='choiceText']").val(data.paperChoice[j].choiceText)
                            chioseClone.find("input[name='choiceOrder']").val(data.paperChoice[j].choiceOrder)
                            choiceList.append(chioseClone);
                        }
                    }
                }
                listdom.append(clonedom);
            }
        }

        //新增选项点击事件
        function addChoice(dom, num) {
            //构造选项数据，添加到addModel里面
            addModel[num].paperChoice.push({
                "choiceText": "",
                "choiceOrder": ""
            })
            //克隆选项模板添加到选项列表里面
            //获取选项列表容器
            var choiceList = $(dom).parent().parent().find(".choiceList");
            //克隆模板
            var choiceClone = $(".template .choiceItem").clone();
            choiceClone.find("input[name='choiceText']").val('')
            choiceClone.find("input[name='choiceOrder']").val('')
            //给试题选项添加点击事件
            choiceClone.find(".deleteChoice").attr("onclick", 'deleteChoice(this)')
            //设置选项文字后面的序号
            var j = $(dom).parent().parent().find(".choiceList .choiceItem").length;
            console.log(j)
            choiceClone.find(".choiceNum").text(j + 1)
            choiceList.append(choiceClone)
        }

        //删除选项的点击事件
        function deleteChoice(dom) {
            console.log($(dom))
            console.log($(dom).parent())
            //删除之前的数据
            console.log(addModel)
            //删除选项
            $(dom).parent().remove();
            //重新获取页面数据
            getAllList();
            //重新生成页面
            createPaper();
            console.log(addModel)
        }

        //获取页面全部数据
        function getAllList() {
            //获取所有的试题列表
            var items = $('#paperList .paperItem');
            console.log(items.length)
            //把原来的数据清空，重新从页面获取新的数据
            addModel = [];
            if (items && items.length > 0) {
                for (var k = 0; k < items.length; k++) {
                    //获取试题的类型
                    var domtype = $(items[k]).attr('type');
                    //构造试题需要的数据格式
                    var objModel = {
                        paperId: '', //试题id
                        questionId: '', //问卷id
                        paperTitle: '',//试题的标题
                        paperType: '',//试题的类型
                        paperChoice: [] //试题对应的选项
                    }
                    //如果是单选和多选，处理选项数据
                    if (domtype == '1' || domtype == '2') {
                        //获取选项列表
                        var choiceitems = $(items[k]).find('.choiceItem');
                        //循环选项数据列表
                        if (choiceitems && choiceitems.length > 0) {
                            for (var h = 0; h < choiceitems.length; h++) {
                                //选项的数据格式
                                var obj = {
                                    "choiceText": "",
                                    "choiceOrder": ""
                                }
                                //获取选项名称
                                obj.choiceText = $(choiceitems[h]).find("input[name='choiceText']").val()
                                //获取选项的序号
                                obj.choiceOrder = $(choiceitems[h]).find("input[name='choiceOrder']").val()
                                //添加到试题的选项
                                objModel.paperChoice.push(obj);
                            }
                        }
                    }
                    //设置试题对应的问卷id
                    objModel.questionId = $("#fontQuestionId").text();
                    //设置试题的id
                    objModel.paperId = $(items[k]).find("input[name='paperId']").val()
                    //设置试题类型
                    objModel.paperType = domtype;
                    //设置试题的标题
                    objModel.paperTitle = $(items[k]).find("input[name='paperTitle']").val()
                    //把页面上重新获取的数据添加到addModel
                    addModel.push(objModel)
                }
            }
        }

        //删除试题的点击事件
        function deletePaper(dom) {
            //删除页面展示
            $(dom).parent().parent().remove();
            //重新获取页面数据
            getAllList();
            //重新生成试题
            createPaper();
        }

        //获取页面参数
      function adddata() {
        getAllList();
        return addModel;
      }
    </script>
  </body>
</html>

```



#### 第54讲  设计试题试题回显

##### 1、思路

```js
1、回显，其实就是把数据库的试题查询出来，组装成试题列表需要的数据，进行展示即可
2、涉及的接口：
   根据问卷id查询试题列表
   根据试题id查询选项列表
```

##### 2、SysPaperChoiceMapper接口添加getChoiceList()方法

```js
package com.itmk.web.sys_paper_choice.mapper;

import com.itmk.web.sys_paper_choice.entity.SysPaperChoice;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface SysPaperChoiceMapper {
    //删除选项接口
    boolean deleteChoice(@Param("paperId") Long paperId);
    //批量保存选项接口
    boolean saveBatch(@Param("choices") List<SysPaperChoice> choices);
    //根据试题id查询选项列表
    List<SysPaperChoice> getChoiceList(@Param("paperId") Long paperId);
}

```

##### 3、SysPaperChoiceMapper.xml映射

```js
<select id="getChoiceList" resultMap="sysPaperChoice">
        select * from sys_paper_choice
        where paper_id =#{paperId}
</select>
```

##### 4、SysPaperMapper接口添加方法listPaper()方法

```js
package com.itmk.web.sys_paper.mapper;

import com.itmk.web.sys_paper.entity.SysPaper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface SysPaperMapper {
    //新增试题
    boolean addPaper(@Param("paper")SysPaper paper);
    //删除试题
    boolean deletePaper(@Param("questionId") Long questionId);
    //根据问卷id查询试题列表
    List<SysPaper> listPaper(@Param("questionId") Long questionId);
}

```

##### 5、SysPaperMapper.xml映射文件

```js
<select id="listPaper" resultMap="sysPaperChoice">
        select  * from sys_paper
         where
        question_id =#{questionId}
</select>
```

##### 6、SysPaperService接口添加getPaperList()方法

```js
package com.itmk.web.sys_paper.service;

import com.itmk.web.sys_paper.entity.SysPaperParm;

import java.util.List;

public interface SysPaperService {
    void savePaper(List<SysPaperParm> sysPaperParm);
    //根据问卷id查询试题列表回显
    List<SysPaperParm> getPaperList(Long questionId);
}

```

##### 7、SysPaperService实现类

```js
@Override
    public List<SysPaperParm> getPaperList(Long questionId) {
        //根据问卷id查询所有的试题列表
        List<SysPaper> paperList = sysPaperMapper.listPaper(questionId);
        List<SysPaperParm> list = new ArrayList<>();
        if(paperList != null && paperList.size() > 0){
            //循环试题列表
            for(int i = 0;i<paperList.size();i++){
                SysPaperParm parm = new SysPaperParm();
                BeanUtils.copyProperties(paperList.get(i),parm);
                //判断是否是单选或者多选，查询对于的选项
                List<SysPaperChoice> choiceList = sysPaperChoiceMapper.getChoiceList(paperList.get(i).getPaperId());
                //设置试题对应的选项
                parm.setPaperChoice(choiceList);
                list.add(parm);
            }
        }
        return list;
    }
```

##### 8、控制器SysPaperController

```js
	/**
     * 查询试题回显
     */
    @GetMapping("/getPaperList")
    @ResponseBody
    public ResultVo getPaperList(Long questionId){
        List<SysPaperParm> paperList = sysPaperService.getPaperList(questionId);
        return ResultUtils.success("查询成功",paperList);
    }
```



#### 第55讲 设计试题回显接口对接

##### 1、思路：

```js
根据问卷id查询出所有的试题，放到前端的addModel里面；
```

##### 2、index.jsp页面

```js
<%--
  Created by IntelliJ IDEA.
  User: lcy
  Date: 2021-08-26
  Time: 13:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>Title</title>
    <link rel="stylesheet" href="../../lib/layui-v2.6.3/css/layui.css" media="all">
    <link rel="stylesheet" href="../../lib/bootstrap/bootstrap.min.css" media="all">
  </head>
  <body style="height: 100%;font-size: 0.8rem;">
    <%--最外层div，分成左右两个，div默认垂直排列，把div变成一个弹性盒子模型--%>
    <div class="d-flex" style="height: 100%;">
      <div class="d-flex flex-column p-3" style="width: 200px;border-right:1px solid #e5e5e5;">
        <span style="display: none;" id="fontQuestionId">${questionId}</span>
        <div onclick="addPaper('1')" class="d-flex justify-content-center p-1 mb-3" style="width: 100%;border:1px solid
        #e5e5e5;cursor:
        pointer;">
          单选题
        </div>
        <div onclick="addPaper('2')" class="d-flex justify-content-center p-1 mb-3"
             style="width: 100%;border:1px solid #e5e5e5;cursor: pointer;">多选题
        </div>
        <div onclick="addPaper('3')" class="d-flex justify-content-center p-1 mb-3"
             style="width: 100%;border:1px solid #e5e5e5;cursor: pointer;">填空题
        </div>
        <div onclick="addPaper('4')" class="d-flex justify-content-center p-1 mb-3"
             style="width: 100%;border:1px solid #e5e5e5;cursor: pointer;">简答题
        </div>
      </div>
      <%--生成试题存放的容器--%>
      <div id="paperList" class="col m-3 " style="overflow-y: auto;">
      
      </div>
      <%--试题循环的模板,需要影藏--%>
      <div class="template" style="display: none;">
        <%--单选题--%>
        <div id="paper1" class="mb-3 paperItem">
          <div class="d-flex align-items-center mb-3">
            <span class="paperNum">1</span><span>、</span>
            <input type="hidden" name="paperId" class="form-control form-control-sm mr-3"/>
            <input type="hidden" name="questionId" class="form-control form-control-sm mr-3"/>
            <input name="paperTitle" class="form-control form-control-sm mr-3" placeholder="请输入试题名称"/>
            <button class="layui-btn layui-btn-primary layui-btn-sm addChoice"><i
              class="layui-icon layui-icon-addition"></i>新增选项
            </button>
            <button class="layui-btn layui-btn-danger layui-btn-sm deletePaper">
              <i class="layui-icon layui-icon-close"></i>删除试题
            </button>
          </div>
          <div class="choiceList" style="margin-left: 30px;">
          
          </div>
          <hr>
        </div>
        <%--多选题--%>
        <div id="paper2" class="mb-3 paperItem">
          <div class="d-flex align-items-center mb-3">
            <span class="paperNum">2</span><span>、</span>
            <input type="hidden" name="paperId" class="form-control form-control-sm mr-3"/>
            <input type="hidden" name="questionId" class="form-control form-control-sm mr-3"/>
            <input name="paperTitle" class="form-control form-control-sm mr-3" placeholder="请输入试题名称"/>
            <button class="layui-btn layui-btn-primary layui-btn-sm addChoice">
              <i class="layui-icon layui-icon-addition"></i>新增选项
            </button>
            <button class="layui-btn layui-btn-danger layui-btn-sm deletePaper">
              <i class="layui-icon layui-icon-close"></i>删除试题
            </button>
          </div>
          <div class="choiceList" style="margin-left: 30px;">
          
          </div>
          <hr>
        </div>
        <%--单文本--%>
        <div id="paper3" class="mb-3 paperItem">
          <div class="d-flex align-items-center mb-3">
            <div><span class="paperNum">3</span><span>、</span></div>
            <input type="hidden" name="paperId" class="form-control form-control-sm mr-3"/>
            <input type="hidden" name="questionId" class="form-control form-control-sm mr-3"/>
            <input name="paperTitle" class="form-control form-control-sm mr-3" placeholder="请输入试题名称"/>
            <button class="layui-btn layui-btn-sm layui-btn-danger deletePaper">
              <i class="layui-icon layui-icon-close"></i>
              删除试题
            </button>
          </div>
          <hr>
        </div>
        <%--多文本--%>
        <div id="paper4" class="mb-3 paperItem">
          <div class="d-flex align-items-center mb-3">
            <div><span class="paperNum">4</span><span>、</span></div>
            <input type="hidden" name="paperId" class="form-control form-control-sm mr-3"/>
            <input type="hidden" name="questionId" class="form-control form-control-sm mr-3"/>
            <textarea name="paperTitle" class="form-control form-control-sm mr-3" placeholder="请输入试题名称"></textarea>
            <button class="layui-btn layui-btn-sm layui-btn-danger deletePaper">
              <i class="layui-icon layui-icon-close"></i>
              删除试题
            </button>
          </div>
          <hr>
        </div>
        <%--选项模板--%>
        <div class="d-flex align-items-center mb-3 choiceItem">
          <div class="col d-flex align-items-center">
            <span style="width: 30px;">选项</span><span class="choiceNum"></span>
            <input name="choiceText" class="form-control form-control-sm ml-2"/>
          </div>
          <div class="col d-flex align-items-center">
            <span style="width: 30px;">序号</span>
            <input name="choiceOrder" class="form-control form-control-sm ml-2"/>
          </div>
          <button type="button" class="layui-btn layui-btn-primary layui-btn-sm layui-btn-radius deleteChoice"><i
            class="layui-icon layui-icon-delete"></i>删除选项
          </button>
        </div>
      </div>
    </div>
    <script src="../../lib/jquery-3.4.1/jquery-3.4.1.min.js" charset="utf-8"></script>
    <script src="../../lib/layui-v2.6.3/layui.js" charset="utf-8"></script>
    <script src="../../js/http.js" charset="utf-8"></script>
    <script>
        $(document).ready(function () {
            getPaperList();
        })
        //试题数据
        var addModel = []

        //左侧分类点击事件
        function addPaper(type) {
            //先获取页面的数据
            getAllList();
            //构造试题需要的数据格式
            var objModel = {
                paperId: '', //试题id
                questionId: '', //问卷id
                paperTitle: '',//试题的标题
                paperType: '',//试题的类型
                paperChoice: [] //试题对应的选项
            }
            //如果是单选和多选题时，需要设置选项
            if (type == '1' || type == '2') {
                //选项的数据格式
                var obj = {
                    "choiceText": "",
                    "choiceOrder": ""
                }
                objModel.paperChoice.push(obj)
            }
            objModel.paperType = type;
            //把生成的数据添加到列表的数据里面
            addModel.push(objModel);
            //生成试题列表
            createPaper();
        }

        //循环生成试题
        function createPaper() {
            //清空试题列表
            $("#paperList").empty();
            for (var i = 0; i < addModel.length; i++) {
                var data = addModel[i];
                //根据id找到存放试题的容器
                var listdom = $("#paperList");
                //找到克隆的模板
                var clonedom = $(".template #paper" + data.paperType).clone();
                //给输入框赋值
                clonedom.find("input[name='paperId']").val(data.paperId)
                clonedom.find("input[name='questionId']").val($("#fontQuestionId").text())
                clonedom.find(".paperNum").text(i + 1)
                //给试题添加点击事件
                clonedom.find(".deletePaper").attr('onclick', 'deletePaper(this)');
                //试题的类型
                clonedom.attr("type", data.paperType);
                if (data.paperType == "1" || data.paperType == "2" || data.paperType == "3") {
                    clonedom.find("input[name='paperTitle']").val(data.paperTitle)
                } else {
                    clonedom.find("textarea").val(data.paperTitle)
                }
                if (data.paperType == "1" || data.paperType == "2") {
                    //给新增选项按钮添加点击事件
                    clonedom.find(".addChoice").attr('onclick', 'addChoice(this,' + i + ')')
                }
                //动态生成选项  只有单选和多选才有选项
                if (data.paperType == '1' || data.paperType == '2') {
                    //清空选项
                    clonedom.find(".choiceList").empty();
                    //获取选项的容器
                    var choiceList = clonedom.find(".choiceList");
                    if (data.paperChoice && data.paperChoice.length > 0) {
                        for (var j = 0; j < data.paperChoice.length; j++) {
                            //找到克隆选项的模板
                            var chioseClone = $(".template .choiceItem").clone();
                            //设置选项的索引
                            chioseClone.find(".choiceNum").text(j + 1)
                            //给试题选项添加点击事件
                            chioseClone.find(".deleteChoice").attr("onclick", 'deleteChoice(this)')
                            //设置选项的名称和序号
                            chioseClone.find("input[name='choiceText']").val(data.paperChoice[j].choiceText)
                            chioseClone.find("input[name='choiceOrder']").val(data.paperChoice[j].choiceOrder)
                            choiceList.append(chioseClone);
                        }
                    }
                }
                listdom.append(clonedom);
            }
        }

        //新增选项点击事件
        function addChoice(dom, num) {
            //构造选项数据，添加到addModel里面
            addModel[num].paperChoice.push({
                "choiceText": "",
                "choiceOrder": ""
            })
            //克隆选项模板添加到选项列表里面
            //获取选项列表容器
            var choiceList = $(dom).parent().parent().find(".choiceList");
            //克隆模板
            var choiceClone = $(".template .choiceItem").clone();
            choiceClone.find("input[name='choiceText']").val('')
            choiceClone.find("input[name='choiceOrder']").val('')
            //给试题选项添加点击事件
            choiceClone.find(".deleteChoice").attr("onclick", 'deleteChoice(this)')
            //设置选项文字后面的序号
            var j = $(dom).parent().parent().find(".choiceList .choiceItem").length;
            console.log(j)
            choiceClone.find(".choiceNum").text(j + 1)
            choiceList.append(choiceClone)
        }

        //删除选项的点击事件
        function deleteChoice(dom) {
            console.log($(dom))
            console.log($(dom).parent())
            //删除之前的数据
            console.log(addModel)
            //删除选项
            $(dom).parent().remove();
            //重新获取页面数据
            getAllList();
            //重新生成页面
            createPaper();
            console.log(addModel)
        }

        //获取页面全部数据
        function getAllList() {
            //获取所有的试题列表
            var items = $('#paperList .paperItem');
            console.log(items.length)
            //把原来的数据清空，重新从页面获取新的数据
            addModel = [];
            if (items && items.length > 0) {
                for (var k = 0; k < items.length; k++) {
                    //获取试题的类型
                    var domtype = $(items[k]).attr('type');
                    //构造试题需要的数据格式
                    var objModel = {
                        paperId: '', //试题id
                        questionId: '', //问卷id
                        paperTitle: '',//试题的标题
                        paperType: '',//试题的类型
                        paperChoice: [] //试题对应的选项
                    }
                    //如果是单选和多选，处理选项数据
                    if (domtype == '1' || domtype == '2') {
                        //获取选项列表
                        var choiceitems = $(items[k]).find('.choiceItem');
                        //循环选项数据列表
                        if (choiceitems && choiceitems.length > 0) {
                            for (var h = 0; h < choiceitems.length; h++) {
                                //选项的数据格式
                                var obj = {
                                    "choiceText": "",
                                    "choiceOrder": ""
                                }
                                //获取选项名称
                                obj.choiceText = $(choiceitems[h]).find("input[name='choiceText']").val()
                                //获取选项的序号
                                obj.choiceOrder = $(choiceitems[h]).find("input[name='choiceOrder']").val()
                                //添加到试题的选项
                                objModel.paperChoice.push(obj);
                            }
                        }
                    }
                    //设置试题对应的问卷id
                    objModel.questionId = $("#fontQuestionId").text();
                    //设置试题的id
                    objModel.paperId = $(items[k]).find("input[name='paperId']").val()
                    //设置试题类型
                    objModel.paperType = domtype;
                    //设置试题的标题
                    objModel.paperTitle = $(items[k]).find("input[name='paperTitle']").val()
                    //把页面上重新获取的数据添加到addModel
                    addModel.push(objModel)
                }
            }
        }

        //删除试题的点击事件
        function deletePaper(dom) {
            //删除页面展示
            $(dom).parent().parent().remove();
            //重新获取页面数据
            getAllList();
            //重新生成试题
            createPaper();
        }

        //获取页面参数
        function adddata() {
            getAllList();
            return addModel;
        }

        //获取回显的数据
        function getPaperList() {
            let parm = {
                "questionId": $("#fontQuestionId").text()
            }
            http.get("/api/sysPaper/getPaperList",parm,function (data) {
              if(data.code == 200){
                  let result = data.data;
                  if(result && result.length >0){
                      //设置试题列表数据
                      addModel = result;
                      //生成试题
                      createPaper();
                  }else{
                       addPaper('1');
                  }
              }
            })
        }
    </script>
  </body>
</html>

```



#### 第56讲 设计试题问题讲解



#### 第57讲 普通用户问卷列表制作讲解



#### 第58讲 普通用户试题页面布局讲解

##### 1、主要实现

```js
弹性盒子模型的使用
```

##### 2、源码

```js
<%--
  Created by IntelliJ IDEA.
  User: lcy
  Date: 2021-08-31
  Time: 10:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>Title</title>
    <link rel="stylesheet" href="../../lib/layui-v2.6.3/css/layui.css" media="all">
    <link rel="stylesheet" href="../../lib/bootstrap/bootstrap.min.css" media="all">
    <style>
      .item {
        background-color: #FFF;
        border-radius: 10px;
      }
    </style>
  </head>
  <body class="m-3" style=" background-color: #F0F0F0;height: 100%;">
    <div class="d-flex flex-column layui-form">
      <%--单选题布局--%>
      <div class="item d-flex flex-column p-3 mb-3">
        <div class="d-flex align-items-center">
          <span class="paperOrder">1</span><span>、</span>
          <sapn class="paperTitle">您的性别是?</sapn>
        </div>
        <hr>
        <div class="radioitem d-flex flex-column">
          <input type="radio" name="choiceText" value="" title="男">
          <input type="radio" name="choiceText" value="" title="女">
        </div>
      </div>
      <div class="item d-flex flex-column p-3 mb-3">
        <div class="d-flex align-items-center">
          <span class="paperOrder">2</span><span>、</span>
          <sapn class="paperTitle">您的学历?</sapn>
        </div>
        <hr>
        <div class="radioitem d-flex flex-column">
          <input type="radio" name="choiceText" value="" title="初中">
          <input type="radio" name="choiceText" value="" title="高中">
          <input type="radio" name="choiceText" value="" title="大专">
          <input type="radio" name="choiceText" value="" title="本科">
        </div>
      </div>
      <%--多选题--%>
      <div class="item d-flex flex-column p-3 mb-3">
        <div class="d-flex align-items-center">
          <span class="paperOrder">3</span><span>、</span>
          <sapn class="paperTitle">您的爱好?</sapn>
        </div>
        <hr>
        <div class="radioitem d-flex flex-column">
          <div class="mb-2">
            <input type="checkbox" name="choiceText"  lay-skin="primary" title="音乐">
          </div>
          <div class="mb-2">
            <input type="checkbox" name="choiceText"  lay-skin="primary" title="美术">
          </div>
          <div class="mb-2">
            <input type="checkbox" name="choiceText"  lay-skin="primary" title="体育">
          </div>
          <div class="mb-2">
            <input type="checkbox" name="choiceText"  lay-skin="primary" title="阅读">
          </div>
        </div>
      </div>
      <%--填空题--%>
      <div class="item d-flex flex-column p-3 mb-3">
        <div class="d-flex align-items-center mb-2">
          <span class="paperOrder">4</span><span>、</span>
          <sapn class="paperTitle">您的生日?</sapn>
        </div>
        <div class="radioitem d-flex flex-column">
          <input class="form-control form-control-sm" type="text" name=""/>
        </div>
      </div>
      <%--简答题--%>
      <div class="item d-flex flex-column p-3 mb-3">
        <div class="d-flex align-items-center mb-2">
          <span class="paperOrder">4</span><span>、</span>
          <sapn class="paperTitle">请您做简答的自我介绍?</sapn>
        </div>
        <div class="radioitem d-flex flex-column">
          <textarea class="form-control form-control-sm"  name=""></textarea>
        </div>
      </div>
    </div>
    <script src="../../lib/jquery-3.4.1/jquery-3.4.1.min.js" charset="utf-8"></script>
    <script src="../../lib/layui-v2.6.3/layui.js" charset="utf-8"></script>
    <script src="../../js/http.js" charset="utf-8"></script>
  </body>
</html>

```



#### 第59讲 普通用户动态生成试题对接

##### 1、实现原理

```js
1、jquery的克隆原理  clone()
2、jquery的find()方法
3、jquery的attr()方法
4、jquery的val()方法
5、jquery的text()方法
```

##### 2、源码

```js
<%--
  Created by IntelliJ IDEA.
  User: lcy
  Date: 2021-08-31
  Time: 14:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>Title</title>
    <link rel="stylesheet" href="../../lib/layui-v2.6.3/css/layui.css" media="all">
    <link rel="stylesheet" href="../../lib/bootstrap/bootstrap.min.css" media="all">
    <style>
      html, body {
        margin: 0px;
        padding: 0px;
      }
      
      .item {
        background-color: #FFF;
        border-radius: 10px;
      }
    </style>
  </head>
  <body class="m-3" style="background-color: #F0F0F0;">
    <%-- 添加影藏数据，保存问卷id--%>
    <input id="questionId" type="hidden" value="${questionId}">
    <%--存放试题的容器--%>
    <div class="d-flex flex-column layui-form paperList">
    
    </div>
    <%--试题模板,需要影藏--%>
    <div class="template" style="display: none;">
      <%--单选题模板--%>
      <div id="paper1" class="item d-flex flex-column p-3 mb-3">
        <div class="d-flex align-items-center">
          <span class="paperOrder"></span><span>、</span><span class="paperTitle"></span></div>
        <hr>
        <%--单选题的容器--%>
        <div class="radioitem d-flex flex-column">
        
        </div>
      </div>
      <%-- 单选题的模板--%>
      <input class="radiotemplate" type="radio" name="choiceText" value="" title=""/>
      <%--多选题模板--%>
      <div id="paper2" class="item d-flex flex-column p-3 mb-3">
        <div class="d-flex align-items-center">
          <span class="paperOrder"></span><span>、</span><span class="paperTitle"></span></div>
        <hr>
        <%--多选题选项容器--%>
        <div class="radioitem d-flex flex-column">
        
        </div>
      </div>
      <%--多选题选项模板--%>
      <div class="mb-2 checkboxtemplate">
        <input type="checkbox" name="choiceText" lay-skin="primary" title="">
      </div>
      <%--填空题模板--%>
      <div id="paper3" class="item d-flex flex-column p-3 mb-3">
        <div class="d-flex align-items-center">
          <span class="paperOrder"></span><span>、</span><span class="paperTitle"></span></div>
        <hr>
        <div class="radioitem d-flex flex-column">
          <input class="form-control form-control-sm" type="text" name="choiceText" value=""/>
        </div>
      </div>
      <%--简答题模板--%>
      <div id="paper4" class="item d-flex flex-column p-3 mb-3">
        <div class="d-flex align-items-center">
          <span class="paperOrder"></span><span>、</span><span class="paperTitle"></span></div>
        <hr>
        <div class="radioitem d-flex flex-column">
          <textarea class="form-control form-control-sm" type="text" name="choiceText" value=""></textarea>
        </div>
      </div>
    </div>
    <script src="../../lib/jquery-3.4.1/jquery-3.4.1.min.js" charset="utf-8"></script>
    <script src="../../lib/layui-v2.6.3/layui.js" charset="utf-8"></script>
    <script src="../../js/http.js" charset="utf-8"></script>
    <script>
        //页面加载完调用
        var form = null;
        $(document).ready(function () {
            layui.use(['form'], function () {
                form = layui.form;
            })
            getPaperData();
        })

        //根据问卷的id获取试题列表
        function getPaperData() {
            var parm = {
                questionId: $("#questionId").val()
            }
            http.get("/api/sysPaper/getPaperList", parm, function (result) {
                if (result.code == 200) {
                    //动态的生成试题
                    console.log(result)
                    if (result.data && result.data.length > 0) {
                        createPaper(result.data);
                    }
                }
            })
        }

        //生成试题
        //循环，根据试题类型，找对应的模板
        function createPaper(res) {
            //清空容器
            $(".paperList").empty();
            //循环数据
            for (var i = 0; i < res.length; i++) {
                //数组的每一条数据
                var data = res[i];
                //获取存放试题的容器
                var list = $(".paperList");
                //根据试题的类型，获取对应的模板
                var clonedom = $(".template #paper" + data.paperType).clone();
                //设置试题的序号
                clonedom.find(".paperOrder").text(data.paperOrder);
                //设置试题的标题
                clonedom.find(".paperTitle").text(data.paperTitle);
                //设置试题的id
                clonedom.attr("paperId", data.paperId)
                //设置试题的类型
                clonedom.attr("type", data.paperType)
                //如果是单选和多选题，需要设置选项
                //找到单选题和多选题的容器
                var radioList = clonedom.find(".radioitem");
                if (data.paperType == '1') {
                    if (data.paperChoice && data.paperChoice.length > 0) {
                        for (var j = 0; j < data.paperChoice.length; j++) {
                            //找到单选题的模板
                            var radioclone = $(".template .radiotemplate").clone();
                            radioclone.val(data.paperChoice[j].chioceId);
                            radioclone.attr("title", data.paperChoice[j].choiceText)
                            radioclone.attr("paperId", data.paperChoice[j].paperId)
                            radioclone.attr("name", "choiceText-" + data.paperChoice[j].paperId)
                            radioList.append(radioclone)
                        }
                    }
                }
                //多选题的选项处理
                if (data.paperType == '2') {
                    if (data.paperChoice && data.paperChoice.length > 0) {
                        for (var j = 0; j < data.paperChoice.length; j++) {
                            //找到多选题的模板
                            var radioclone = $(".template .checkboxtemplate").clone();
                            radioclone.find("input[name='choiceText']").val(data.paperChoice[j].chioceId)
                            radioclone.find("input[name='choiceText']").attr("title", data.paperChoice[j].choiceText)
                            radioclone.find("input[name='choiceText']").attr("paperId", data.paperChoice[j].paperId)
                            radioList.append(radioclone)
                        }
                    }
                }
                list.append(clonedom)
                form.render();
            }
        }

        //表单提交获取页面数据
        function commitdata() {
            //定义一个存放试题答案的数组
            var paperData = [];
            //获取所有的试题
            var paperList = $(".paperList .item");
            if (paperList && paperList.length > 0) {
                for (var i = 0; i < paperList.length; i++) {
                    //定义提交答案的数据格式
                    var obj = {
                        questionId: '', //问卷id
                        paperId: '', //试题id
                        paperType: '', //试题类型
                        paperValue: '' //试题的答案
                    }
                    //设置问卷id
                    obj.questionId = $("#questionId").val();
                    //设置问卷的类型
                    obj.paperType = $(paperList[i]).attr("type");
                    //设置试题did
                    obj.paperId = $(paperList[i]).attr("paperid");
                    //设置选中的答案
                    //单选题
                    if (obj.paperType == '1') {
                        var value = $(paperList[i]).find('input[name="choiceText-' + obj.paperId + '"]:checked').val();
                        if (value) {
                            obj.paperValue = value;
                        }
                    } else if (obj.paperType == '2') {
                        //获取所有选中的复选框
                        var boxitem = $(paperList[i]).find(".checkboxtemplate").find("input[name='choiceText']:checked")
                        //复选框会有多个选中的值，所有需要循环取值
                        if (boxitem && boxitem.length > 0) {
                            //用于接收值
                            var vas = "";
                            for (var k = 0; k < boxitem.length; k++) {
                                //判断是否取到值,取到的值，以逗号拼接
                                if ($(boxitem[k]).val()) {
                                    vas += $(boxitem[k]).val() + ",";
                                }
                            }
                            //取到拼接的值后面的逗号 vas = 12,13,14,
                            if (vas.length > 0) {
                                vas = vas.substr(0, vas.length - 1)
                                obj.paperValue = vas;
                            }
                        }
                    } else if (obj.paperType == '3') { //填空题
                        var textval = $(paperList[i]).find("input[name='choiceText']").val();
                        if (textval) {
                            obj.paperValue = textval;
                        }
                    } else { //简答题
                        var textareaval = $(paperList[i]).find('textarea').val()
                        if (textareaval) {
                            obj.paperValue = textareaval;
                        }
                    }
                    //把每一题的答案放到数组
                    paperData.push(obj)
                }
            }
            //判断是否有空值，如果有，系统提示
            if (paperData.length == 0) {
                layer.msg('感谢您的参与，请答卷后再提交试题！')
                return;
            }
            for (var g = 0; g < paperData.length; g++) {
                if (!paperData[g].paperValue) { //如果paperValue为空，说明题目没有做完，系统提示
                    layer.msg('感谢您的参与，请答卷后再提交试题！')
                    return;
                }
            }
            return paperData;
        }
    </script>
  </body>
</html>


```



#### 第60讲 问卷试题提交数据获取

```js
<%--
  Created by IntelliJ IDEA.
  User: lcy
  Date: 2021-08-31
  Time: 14:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>Title</title>
    <link rel="stylesheet" href="../../lib/layui-v2.6.3/css/layui.css" media="all">
    <link rel="stylesheet" href="../../lib/bootstrap/bootstrap.min.css" media="all">
    <style>
      html, body {
        margin: 0px;
        padding: 0px;
      }
      
      .item {
        background-color: #FFF;
        border-radius: 10px;
      }
    </style>
  </head>
  <body class="m-3" style="background-color: #F0F0F0;">
    <%-- 添加影藏数据，保存问卷id--%>
    <input id="questionId" type="hidden" value="${questionId}">
    <%--存放试题的容器--%>
    <div class="d-flex flex-column layui-form paperList">
    
    </div>
    <%--试题模板,需要影藏--%>
    <div class="template" style="display: none;">
      <%--单选题模板--%>
      <div id="paper1" class="item d-flex flex-column p-3 mb-3">
        <div class="d-flex align-items-center">
          <span class="paperOrder"></span><span>、</span><span class="paperTitle"></span></div>
        <hr>
        <%--单选题的容器--%>
        <div class="radioitem d-flex flex-column">
        
        </div>
      </div>
      <%-- 单选题的模板--%>
      <input class="radiotemplate" type="radio" name="choiceText" value="" title=""/>
      <%--多选题模板--%>
      <div id="paper2" class="item d-flex flex-column p-3 mb-3">
        <div class="d-flex align-items-center">
          <span class="paperOrder"></span><span>、</span><span class="paperTitle"></span></div>
        <hr>
        <%--多选题选项容器--%>
        <div class="radioitem d-flex flex-column">
        
        </div>
      </div>
      <%--多选题选项模板--%>
      <div class="mb-2 checkboxtemplate">
        <input type="checkbox" name="choiceText" lay-skin="primary" title="">
      </div>
      <%--填空题模板--%>
      <div id="paper3" class="item d-flex flex-column p-3 mb-3">
        <div class="d-flex align-items-center">
          <span class="paperOrder"></span><span>、</span><span class="paperTitle"></span></div>
        <hr>
        <div class="radioitem d-flex flex-column">
          <input class="form-control form-control-sm" type="text" name="choiceText" value=""/>
        </div>
      </div>
      <%--简答题模板--%>
      <div id="paper4" class="item d-flex flex-column p-3 mb-3">
        <div class="d-flex align-items-center">
          <span class="paperOrder"></span><span>、</span><span class="paperTitle"></span></div>
        <hr>
        <div class="radioitem d-flex flex-column">
          <textarea class="form-control form-control-sm" type="text" name="choiceText" value=""></textarea>
        </div>
      </div>
    </div>
    <script src="../../lib/jquery-3.4.1/jquery-3.4.1.min.js" charset="utf-8"></script>
    <script src="../../lib/layui-v2.6.3/layui.js" charset="utf-8"></script>
    <script src="../../js/http.js" charset="utf-8"></script>
    <script>
        //页面加载完调用
        var form = null;
        $(document).ready(function () {
            layui.use(['form'], function () {
                form = layui.form;
            })
            getPaperData();
        })

        //根据问卷的id获取试题列表
        function getPaperData() {
            var parm = {
                questionId: $("#questionId").val()
            }
            http.get("/api/sysPaper/getPaperList", parm, function (result) {
                if (result.code == 200) {
                    //动态的生成试题
                    console.log(result)
                    if (result.data && result.data.length > 0) {
                        createPaper(result.data);
                    }
                }
            })
        }

        //生成试题
        //循环，根据试题类型，找对应的模板
        function createPaper(res) {
            //清空容器
            $(".paperList").empty();
            //循环数据
            for (var i = 0; i < res.length; i++) {
                //数组的每一条数据
                var data = res[i];
                //获取存放试题的容器
                var list = $(".paperList");
                //根据试题的类型，获取对应的模板
                var clonedom = $(".template #paper" + data.paperType).clone();
                //设置试题的序号
                clonedom.find(".paperOrder").text(data.paperOrder);
                //设置试题的标题
                clonedom.find(".paperTitle").text(data.paperTitle);
                //设置试题的id
                clonedom.attr("paperId", data.paperId)
                //设置试题的类型
                clonedom.attr("type", data.paperType)
                //如果是单选和多选题，需要设置选项
                //找到单选题和多选题的容器
                var radioList = clonedom.find(".radioitem");
                if (data.paperType == '1') {
                    if (data.paperChoice && data.paperChoice.length > 0) {
                        for (var j = 0; j < data.paperChoice.length; j++) {
                            //找到单选题的模板
                            var radioclone = $(".template .radiotemplate").clone();
                            radioclone.val(data.paperChoice[j].chioceId);
                            radioclone.attr("title", data.paperChoice[j].choiceText)
                            radioclone.attr("paperId", data.paperChoice[j].paperId)
                            radioclone.attr("name", "choiceText-" + data.paperChoice[j].paperId)
                            radioList.append(radioclone)
                        }
                    }
                }
                //多选题的选项处理
                if (data.paperType == '2') {
                    if (data.paperChoice && data.paperChoice.length > 0) {
                        for (var j = 0; j < data.paperChoice.length; j++) {
                            //找到多选题的模板
                            var radioclone = $(".template .checkboxtemplate").clone();
                            radioclone.find("input[name='choiceText']").val(data.paperChoice[j].chioceId)
                            radioclone.find("input[name='choiceText']").attr("title", data.paperChoice[j].choiceText)
                            radioclone.find("input[name='choiceText']").attr("paperId", data.paperChoice[j].paperId)
                            radioList.append(radioclone)
                        }
                    }
                }
                list.append(clonedom)
                form.render();
            }
        }

        //表单提交获取页面数据
        function commitdata() {
            //定义一个存放试题答案的数组
            var paperData = [];
            //获取所有的试题
            var paperList = $(".paperList .item");
            if (paperList && paperList.length > 0) {
                for (var i = 0; i < paperList.length; i++) {
                    //定义提交答案的数据格式
                    var obj = {
                        questionId: '', //问卷id
                        paperId: '', //试题id
                        paperType: '', //试题类型
                        paperValue: '' //试题的答案
                    }
                    //设置问卷id
                    obj.questionId = $("#questionId").val();
                    //设置问卷的类型
                    obj.paperType = $(paperList[i]).attr("type");
                    //设置试题did
                    obj.paperId = $(paperList[i]).attr("paperid");
                    //设置选中的答案
                    //单选题
                    if (obj.paperType == '1') {
                        var value = $(paperList[i]).find('input[name="choiceText-' + obj.paperId + '"]:checked').val();
                        if (value) {
                            obj.paperValue = value;
                        }
                    } else if (obj.paperType == '2') {
                        //获取所有选中的复选框
                        var boxitem = $(paperList[i]).find(".checkboxtemplate").find("input[name='choiceText']:checked")
                        //复选框会有多个选中的值，所有需要循环取值
                        if (boxitem && boxitem.length > 0) {
                            //用于接收值
                            var vas = "";
                            for (var k = 0; k < boxitem.length; k++) {
                                //判断是否取到值,取到的值，以逗号拼接
                                if ($(boxitem[k]).val()) {
                                    vas += $(boxitem[k]).val() + ",";
                                }
                            }
                            //取到拼接的值后面的逗号 vas = 12,13,14,
                            if (vas.length > 0) {
                                vas = vas.substr(0, vas.length - 1)
                                obj.paperValue = vas;
                            }
                        }
                    } else if (obj.paperType == '3') { //填空题
                        var textval = $(paperList[i]).find("input[name='choiceText']").val();
                        if (textval) {
                            obj.paperValue = textval;
                        }
                    } else { //简答题
                        var textareaval = $(paperList[i]).find('textarea').val()
                        if (textareaval) {
                            obj.paperValue = textareaval;
                        }
                    }
                    //把每一题的答案放到数组
                    paperData.push(obj)
                }
            }
            //判断是否有空值，如果有，系统提示
            if (paperData.length == 0) {
                layer.msg('感谢您的参与，请答卷后再提交试题！')
                return;
            }
            for (var g = 0; g < paperData.length; g++) {
                if (!paperData[g].paperValue) { //如果paperValue为空，说明题目没有做完，系统提示
                    layer.msg('感谢您的参与，请答卷后再提交试题！')
                    return;
                }
            }
            return paperData;
        }
    </script>
  </body>
</html>

```



#### 第61讲 验证码整合讲解

##### 1、引入依赖

```js
<dependency>
    <groupId>com.github.penggle</groupId>
    <artifactId>kaptcha</artifactId>
    <version>2.3.2</version>
</dependency>
```

2、springmvc配置

```js
<bean id="defaultKaptcha" class="com.google.code.kaptcha.impl.DefaultKaptcha">
        <property name="config">
            <bean class="com.google.code.kaptcha.util.Config">
                <constructor-arg>
                    <props>
                        <prop key="kaptcha.border">yes</prop>
                        <prop key="kaptcha.border.color">105,179,90</prop>
                        <prop key="kaptcha.textproducer.font.color">blue</prop>
                        <prop key="kaptcha.image.width">125</prop>
                        <prop key="kaptcha.image.height">45</prop>
                        <prop key="kaptcha.textproducer.font.size">45</prop>
                        <prop key="kaptcha.session.key">code</prop>
                        <prop key="kaptcha.textproducer.char.length">4</prop>
                        <prop key="kaptcha.textproducer.font.names">宋体,楷体,微软雅黑</prop>
                    </props>
                </constructor-arg>
            </bean>
        </property>
    </bean>
```

##### 3、新建验证码控制器

```js
package com.itmk.web.sys_user.controller;

import com.google.code.kaptcha.Constants;
import com.google.code.kaptcha.impl.DefaultKaptcha;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.imageio.ImageIO;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.awt.image.BufferedImage;

@Controller
@RequestMapping("/api/sys")
public class kaptchaController {
    @Autowired
    private DefaultKaptcha defaultKaptcha;

    @RequestMapping(value = "/captcha")
    public void getKaptchaImage(HttpServletRequest request, HttpServletResponse response) throws Exception {
        HttpSession session = request.getSession();
        response.setDateHeader("Expires", 0);
        response.setHeader("Cache-Control", "no-store, no-cache, must-revalidate");
        response.addHeader("Cache-Control", "post-check=0, pre-check=0");
        response.setHeader("Pragma", "no-cache");
        response.setContentType("image/jpeg");
        //生成验证码
        String capText = defaultKaptcha.createText();
        session.setAttribute(Constants.KAPTCHA_SESSION_KEY, capText);
        //向客户端写出
        BufferedImage bi = defaultKaptcha.createImage(capText);
        ServletOutputStream out = response.getOutputStream();
        ImageIO.write(bi, "jpg", out);
        try {
            out.flush();
        } finally {
            out.close();
        }
    }
}

```

##### 4、页面对接验证码

```js
 <img onclick="this.src='/api/sys/captcha?d='+Math.random();" class="validateImg" src="/api/sys/captcha" />
```



#### 第62讲 用户登录、注册接口开发

##### 1、SysUserMapper添加login方法

```js
//根据用户名和密码查询
    SysUser login(@Param("user") SysUser user);
```

##### 2、编写映射文件

```js
<select id="login" resultMap="sysUserMap">
        select * from sys_user
        where username =#{user.username}
        and password =#{user.password}
    </select>
```

##### 3、SysUserService添加login()方法

```js
//根据用户名和密码查询
    SysUser login(SysUser user);
```

##### 4、实现类

```js
@Override
    public SysUser login(SysUser user) {
        return sysUserMapper.login(user);
    }
```



##### 5、SysUserController控制器添加如下方法

```js
/**
     * 用户注册
     */
    @PostMapping("/registerCommit")
	@ResponseBody
    public ResultVo registerCommit(LoginParm loginParm, HttpServletRequest request) {
        //获取session
        HttpSession session = request.getSession();
        //从session获取验证码
        String code = (String) session.getAttribute(Constants.KAPTCHA_SESSION_KEY);
        //验证验证码是否正确
        if (!loginParm.getCode().equals(code)) {
            return ResultUtils.error("验证码不正确!");
        }
        //判断用户的账户是否被注册
        SysUser user = sysUserService.getUserByName(loginParm.getUsername());
        if (user != null) {
            return ResultUtils.error("该账户已经被注册!");
        }
        SysUser sysUser = new SysUser();
        BeanUtils.copyProperties(loginParm, sysUser);
        sysUser.setStatus(1);
        boolean b = sysUserService.addUser(sysUser);
        if (b) {
            return ResultUtils.success("注册成功!");
        }
        return ResultUtils.error("注册失败！");
    }

    /**
     * 用户登录
     */
    @PostMapping("/loginCommit")
	@ResponseBody
    public ResultVo loginCommit(LoginParm loginParm, HttpServletRequest request) {
        //获取session
        HttpSession session = request.getSession();
        //从session获取验证码
        String code = (String) session.getAttribute(Constants.KAPTCHA_SESSION_KEY);
        //验证验证码是否正确
        if (!loginParm.getCode().equals(code)) {
            return ResultUtils.error("验证码不正确!");
        }
        //查询数据库账户是否存在
        SysUser sysUser = new SysUser();
        BeanUtils.copyProperties(loginParm, sysUser);
        SysUser user = sysUserService.login(sysUser);
        if (user == null) {
            return ResultUtils.error("用户名或密码不正确!");
        }
        session.setAttribute("user",user);
        return ResultUtils.success("登录成功!");
    }
```



#### 第63讲 用户登录、注册接口对接

##### 1、login.jsp

```js
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8">
    <title>调查问卷-登录</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta http-equiv="Access-Control-Allow-Origin" content="*">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="format-detection" content="telephone=no">
    <link rel="stylesheet" href="../../lib/layui-v2.6.3/css/layui.css" media="all">
    <!--[if lt IE 9]>
    <script src="https://cdn.staticfile.org/html5shiv/r29/html5.min.js"></script>
    <script src="https://cdn.staticfile.org/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
    <style>
      .main-body {
        top: 50%;
        left: 50%;
        position: absolute;
        -webkit-transform: translate(-50%, -50%);
        -moz-transform: translate(-50%, -50%);
        -ms-transform: translate(-50%, -50%);
        -o-transform: translate(-50%, -50%);
        transform: translate(-50%, -50%);
        overflow: hidden;
      }
      
      .login-main .login-bottom .center .item input {
        display: inline-block;
        width: 227px;
        height: 22px;
        padding: 0;
        position: absolute;
        border: 0;
        outline: 0;
        font-size: 14px;
        letter-spacing: 0;
      }
      
      .login-main .login-bottom .center .item .icon-1 {
        background: url(/images/icon-login.png) no-repeat 1px 0;
      }
      
      .login-main .login-bottom .center .item .icon-2 {
        background: url(/images/icon-login.png) no-repeat -54px 0;
      }
      
      .login-main .login-bottom .center .item .icon-3 {
        background: url(/images/icon-login.png) no-repeat -106px 0;
      }
      
      .login-main .login-bottom .center .item .icon-4 {
        background: url(/images/icon-login.png) no-repeat 0 -43px;
        position: absolute;
        right: -10px;
        cursor: pointer;
      }
      
      .login-main .login-bottom .center .item .icon-5 {
        background: url(/images/icon-login.png) no-repeat -55px -43px;
      }
      
      .login-main .login-bottom .center .item .icon-6 {
        background: url(/images/icon-login.png) no-repeat 0 -93px;
        position: absolute;
        right: -10px;
        margin-top: 8px;
        cursor: pointer;
      }
      
      .login-main .login-bottom .tip .icon-nocheck {
        display: inline-block;
        width: 10px;
        height: 10px;
        border-radius: 2px;
        border: solid 1px #9abcda;
        position: relative;
        top: 2px;
        margin: 1px 8px 1px 1px;
        cursor: pointer;
      }
      
      .login-main .login-bottom .tip .icon-check {
        margin: 0 7px 0 0;
        width: 14px;
        height: 14px;
        border: none;
        background: url(/images/icon-login.png) no-repeat -111px -48px;
      }
      
      .login-main .login-bottom .center .item .icon {
        display: inline-block;
        width: 33px;
        height: 22px;
      }
      
      .login-main .login-bottom .center .item {
        width: 288px;
        height: 35px;
        border-bottom: 1px solid #dae1e6;
        margin-bottom: 35px;
      }
      
      .login-main {
        width: 428px;
        position: relative;
        float: left;
      }
      
      .login-main .login-top {
        height: 117px;
        background-color: #148be4;
        border-radius: 12px 12px 0 0;
        font-family: SourceHanSansCN-Regular;
        font-size: 30px;
        font-weight: 400;
        font-stretch: normal;
        letter-spacing: 0;
        color: #fff;
        line-height: 117px;
        text-align: center;
        overflow: hidden;
        -webkit-transform: rotate(0);
        -moz-transform: rotate(0);
        -ms-transform: rotate(0);
        -o-transform: rotate(0);
        transform: rotate(0);
      }
      
      .login-main .login-top .bg1 {
        display: inline-block;
        width: 74px;
        height: 74px;
        background: #fff;
        opacity: .1;
        border-radius: 0 74px 0 0;
        position: absolute;
        left: 0;
        top: 43px;
      }
      
      .login-main .login-top .bg2 {
        display: inline-block;
        width: 94px;
        height: 94px;
        background: #fff;
        opacity: .1;
        border-radius: 50%;
        position: absolute;
        right: -16px;
        top: -16px;
      }
      
      .login-main .login-bottom {
        width: 428px;
        background: #fff;
        border-radius: 0 0 12px 12px;
        padding-bottom: 53px;
      }
      
      .login-main .login-bottom .center {
        width: 288px;
        margin: 0 auto;
        padding-top: 40px;
        padding-bottom: 15px;
        position: relative;
      }
      
      .login-main .login-bottom .tip {
        clear: both;
        height: 16px;
        line-height: 16px;
        width: 288px;
        margin: 0 auto;
      }
      
      body {
        background: url(/images/loginbg.png) 0% 0% / cover no-repeat;
        position: static;
        font-size: 12px;
      }
      
      input::-webkit-input-placeholder {
        color: #a6aebf;
      }
      
      input::-moz-placeholder { /* Mozilla Firefox 19+ */
        color: #a6aebf;
      }
      
      input:-moz-placeholder { /* Mozilla Firefox 4 to 18 */
        color: #a6aebf;
      }
      
      input:-ms-input-placeholder { /* Internet Explorer 10-11 */
        color: #a6aebf;
      }
      
      input:-webkit-autofill { /* 取消Chrome记住密码的背景颜色 */
        -webkit-box-shadow: 0 0 0 1000px white inset !important;
      }
      
      html {
        height: 100%;
      }
      
      .login-main .login-bottom .tip {
        clear: both;
        height: 16px;
        line-height: 16px;
        width: 288px;
        margin: 0 auto;
      }
      
      .login-main .login-bottom .tip .login-tip {
        font-family: MicrosoftYaHei;
        font-size: 12px;
        font-weight: 400;
        font-stretch: normal;
        letter-spacing: 0;
        color: #9abcda;
        cursor: pointer;
      }
      
      .login-main .login-bottom .tip .forget-password {
        font-stretch: normal;
        letter-spacing: 0;
        color: #1391ff;
        text-decoration: none;
        position: absolute;
        right: 62px;
      }
      
      .login-main .login-bottom .login-btn {
        width: 288px;
        height: 40px;
        background-color: #1E9FFF;
        border-radius: 16px;
        margin: 24px auto 0;
        text-align: center;
        line-height: 40px;
        color: #fff;
        font-size: 14px;
        letter-spacing: 0;
        cursor: pointer;
        border: none;
      }
      
      .login-main .login-bottom .center .item .validateImg {
        position: absolute;
        right: 1px;
        cursor: pointer;
        height: 36px;
        border: 1px solid #e6e6e6;
      }
      
      .footer {
        left: 0;
        bottom: 0;
        color: #fff;
        width: 100%;
        position: absolute;
        text-align: center;
        line-height: 30px;
        padding-bottom: 10px;
        text-shadow: #000 0.1em 0.1em 0.1em;
        font-size: 14px;
      }
      
      .padding-5 {
        padding: 5px !important;
      }
      
      .footer a, .footer span {
        color: #fff;
      }
      
      @media screen and (max-width: 428px) {
        .login-main {
          width: 360px !important;
        }
        
        .login-main .login-top {
          width: 360px !important;
        }
        
        .login-main .login-bottom {
          width: 360px !important;
        }
      }
    </style>
  </head>
  <body>
    <div class="main-body">
      <div class="login-main">
        <div class="login-top">
          <span>调查问卷系统</span>
          <span class="bg1"></span>
          <span class="bg2"></span>
        </div>
        <form class="layui-form login-bottom">
          <div class="center">
            <div class="item">
              <span class="icon icon-2"></span>
              <input type="text" id="username" name="username" lay-verify="required" placeholder="请输入登录账号" maxlength="24"/>
            </div>
            
            <div class="item">
              <span class="icon icon-3"></span>
              <input type="password" id="password" name="password" lay-verify="required" placeholder="请输入密码" maxlength="20">
              <span class="bind-password icon icon-4"></span>
            </div>
            
            <div id="validatePanel" class="item" style="width: 137px;">
              <input type="text" id="code" name="code" placeholder="请输入验证码" maxlength="4">
              <img class="validateImg" onclick="this.src='/api/sys/captcha?d='+Math.random()" src="/api/sys/captcha">
            </div>
            <div class="layui-form-item">
              <input type="radio" value="1" name="userType" title="普通用户"/>
              <input type="radio" value="2" name="userType" title="管理员"/>
            </div>
          </div>
          <div class="tip">
            <%--                <span class="icon-nocheck"></span>--%>
            <%--                <span class="login-tip">保持登录</span>--%>
            <a href="/api/sysUser/register" class="forget-password">新用户注册账号</a>
          </div>
          <div class="layui-form-item" style="text-align:center; width:100%;height:100%;margin:0px;">
            <button class="login-btn" type="button" id="loginBtn">立即登录</button>
          </div>
        </form>
      </div>
    </div>
    <%--<div class="footer">--%>
    <%--    ©版权所有 2014-2018 叁贰柒工作室<span class="padding-5">|</span><a target="_blank" href="http://www.miitbeian.gov.cn">粤ICP备16006642号-2</a>--%>
    <%--</div>--%>
    <script src="../../lib/jquery-3.4.1/jquery-3.4.1.min.js" charset="utf-8"></script>
    <script src="../../lib/layui-v2.6.3/layui.js" charset="utf-8"></script>
    <script src="../../js/http.js" charset="utf-8"></script>
    <script>
        layui.use(['form', 'jquery'], function () {
            var $ = layui.jquery;
            var form = layui.form;
            var layer = layui.layer;

            // 登录过期的时候，跳出ifram框架
            if (top.location != self.location) top.location = self.location;

            $('.bind-password').on('click', function () {
                if ($(this).hasClass('icon-5')) {
                    $(this).removeClass('icon-5');
                    $("input[name='password']").attr('type', 'password');
                } else {
                    $(this).addClass('icon-5');
                    $("input[name='password']").attr('type', 'text');
                }
            });

            $('.icon-nocheck').on('click', function () {
                if ($(this).hasClass('icon-check')) {
                    $(this).removeClass('icon-check');
                } else {
                    $(this).addClass('icon-check');
                }
            });
            $("#loginBtn").click(function () {
                var userType = $("input[name='userType']:checked").val();
                if (!userType) {
                    layer.msg('请选择用户类型');
                    return false;
                }
                console.log(userType)
                if (!$("#username").val()) {
                    layer.msg('用户名不能为空');
                    return false;
                }
                if (!$("#password").val()) {
                    layer.msg('密码不能为空');
                    return false;
                }
                if (!$("#code").val()) {
                    layer.msg('验证码不能为空');
                    return false;
                }
                var parm = {
                    username: $("#username").val(),
                    password: $("#password").val(),
                    code: $("#code").val(),
                }
                http.post("/api/sysUser/loginCommit", parm, function (res) {
                    console.log(res)
                    if (res.code == 200) {
                        //注册成功，跳转到登录
                        window.location = '/home/index?userType='+userType;
                    }
                })
            })
            // 进行登录操作
            // form.on('submit(login)', function (data) {
            //     data = data.field;
            //     console.log(data)
            //     if (data.username == '') {
            //         layer.msg('用户名不能为空');
            //         return false;
            //     }
            //     if (data.password == '') {
            //         layer.msg('密码不能为空');
            //         return false;
            //     }
            //     if (data.captcha == '') {
            //         layer.msg('验证码不能为空');
            //         return false;
            //     }
            //     if (!data.userType) {
            //         layer.msg('请选择用户类型');
            //         return false;
            //     }
            //     layer.msg('登录成功', function () {
            //         // window.location = '../index.html';
            //         window.location = '/home/index?userType='+data.userType;
            //     });
            //     return false;
            // });
        });
    </script>
  </body>
</html>
```

##### 2、register.jsp

```js
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8">
    <title>调查问卷-注册</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta http-equiv="Access-Control-Allow-Origin" content="*">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="format-detection" content="telephone=no">
    <link rel="stylesheet" href="../../lib/layui-v2.6.3/css/layui.css" media="all">
    <!--[if lt IE 9]>
    <script src="https://cdn.staticfile.org/html5shiv/r29/html5.min.js"></script>
    <script src="https://cdn.staticfile.org/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
    <style>
      .main-body {
        top: 50%;
        left: 50%;
        position: absolute;
        -webkit-transform: translate(-50%, -50%);
        -moz-transform: translate(-50%, -50%);
        -ms-transform: translate(-50%, -50%);
        -o-transform: translate(-50%, -50%);
        transform: translate(-50%, -50%);
        overflow: hidden;
      }
      
      .login-main .login-bottom .center .item input {
        display: inline-block;
        width: 227px;
        height: 22px;
        padding: 0;
        position: absolute;
        border: 0;
        outline: 0;
        font-size: 14px;
        letter-spacing: 0;
      }
      
      .login-main .login-bottom .center .item .icon-1 {
        background: url(/images/icon-login.png) no-repeat 1px 0;
      }
      
      .login-main .login-bottom .center .item .icon-2 {
        background: url(/images/icon-login.png) no-repeat -54px 0;
      }
      
      .login-main .login-bottom .center .item .icon-3 {
        background: url(/images/icon-login.png) no-repeat -106px 0;
      }
      
      .login-main .login-bottom .center .item .icon-4 {
        background: url(/images/icon-login.png) no-repeat 0 -43px;
        position: absolute;
        right: -10px;
        cursor: pointer;
      }
      
      .login-main .login-bottom .center .item .icon-5 {
        background: url(/images/icon-login.png) no-repeat -55px -43px;
      }
      
      .login-main .login-bottom .center .item .icon-6 {
        background: url(/images/icon-login.png) no-repeat 0 -93px;
        position: absolute;
        right: -10px;
        margin-top: 8px;
        cursor: pointer;
      }
      
      .login-main .login-bottom .tip .icon-nocheck {
        display: inline-block;
        width: 10px;
        height: 10px;
        border-radius: 2px;
        border: solid 1px #9abcda;
        position: relative;
        top: 2px;
        margin: 1px 8px 1px 1px;
        cursor: pointer;
      }
      
      .login-main .login-bottom .tip .icon-check {
        margin: 0 7px 0 0;
        width: 14px;
        height: 14px;
        border: none;
        background: url(/images/icon-login.png) no-repeat -111px -48px;
      }
      
      .login-main .login-bottom .center .item .icon {
        display: inline-block;
        width: 33px;
        height: 22px;
      }
      
      .login-main .login-bottom .center .item {
        width: 288px;
        height: 35px;
        border-bottom: 1px solid #dae1e6;
        margin-bottom: 35px;
      }
      
      .login-main {
        width: 428px;
        position: relative;
        float: left;
      }
      
      .login-main .login-top {
        height: 117px;
        background-color: #148be4;
        border-radius: 12px 12px 0 0;
        font-family: SourceHanSansCN-Regular;
        font-size: 30px;
        font-weight: 400;
        font-stretch: normal;
        letter-spacing: 0;
        color: #fff;
        line-height: 117px;
        text-align: center;
        overflow: hidden;
        -webkit-transform: rotate(0);
        -moz-transform: rotate(0);
        -ms-transform: rotate(0);
        -o-transform: rotate(0);
        transform: rotate(0);
      }
      
      .login-main .login-top .bg1 {
        display: inline-block;
        width: 74px;
        height: 74px;
        background: #fff;
        opacity: .1;
        border-radius: 0 74px 0 0;
        position: absolute;
        left: 0;
        top: 43px;
      }
      
      .login-main .login-top .bg2 {
        display: inline-block;
        width: 94px;
        height: 94px;
        background: #fff;
        opacity: .1;
        border-radius: 50%;
        position: absolute;
        right: -16px;
        top: -16px;
      }
      
      .login-main .login-bottom {
        width: 428px;
        background: #fff;
        border-radius: 0 0 12px 12px;
        padding-bottom: 53px;
      }
      
      .login-main .login-bottom .center {
        width: 288px;
        margin: 0 auto;
        padding-top: 40px;
        padding-bottom: 15px;
        position: relative;
      }
      
      .login-main .login-bottom .tip {
        clear: both;
        height: 16px;
        line-height: 16px;
        width: 288px;
        margin: 0 auto;
      }
      
      body {
        background: url(/images/loginbg.png) 0% 0% / cover no-repeat;
        position: static;
        font-size: 12px;
      }
      
      input::-webkit-input-placeholder {
        color: #a6aebf;
      }
      
      input::-moz-placeholder { /* Mozilla Firefox 19+ */
        color: #a6aebf;
      }
      
      input:-moz-placeholder { /* Mozilla Firefox 4 to 18 */
        color: #a6aebf;
      }
      
      input:-ms-input-placeholder { /* Internet Explorer 10-11 */
        color: #a6aebf;
      }
      
      input:-webkit-autofill { /* 取消Chrome记住密码的背景颜色 */
        -webkit-box-shadow: 0 0 0 1000px white inset !important;
      }
      
      html {
        height: 100%;
      }
      
      .login-main .login-bottom .tip {
        clear: both;
        height: 16px;
        line-height: 16px;
        width: 288px;
        margin: 0 auto;
      }
      
      .login-main .login-bottom .tip .login-tip {
        font-family: MicrosoftYaHei;
        font-size: 12px;
        font-weight: 400;
        font-stretch: normal;
        letter-spacing: 0;
        color: #9abcda;
        cursor: pointer;
      }
      
      .login-main .login-bottom .tip .forget-password {
        font-stretch: normal;
        letter-spacing: 0;
        color: #1391ff;
        text-decoration: none;
        position: absolute;
        right: 62px;
      }
      
      .login-main .login-bottom .login-btn {
        width: 288px;
        height: 40px;
        background-color: #1E9FFF;
        border-radius: 16px;
        margin: 24px auto 0;
        text-align: center;
        line-height: 40px;
        color: #fff;
        font-size: 14px;
        letter-spacing: 0;
        cursor: pointer;
        border: none;
      }
      
      .login-main .login-bottom .center .item .validateImg {
        position: absolute;
        right: 1px;
        cursor: pointer;
        height: 36px;
        border: 1px solid #e6e6e6;
      }
      
      .footer {
        left: 0;
        bottom: 0;
        color: #fff;
        width: 100%;
        position: absolute;
        text-align: center;
        line-height: 30px;
        padding-bottom: 10px;
        text-shadow: #000 0.1em 0.1em 0.1em;
        font-size: 14px;
      }
      
      .padding-5 {
        padding: 5px !important;
      }
      
      .footer a, .footer span {
        color: #fff;
      }
      
      @media screen and (max-width: 428px) {
        .login-main {
          width: 360px !important;
        }
        
        .login-main .login-top {
          width: 360px !important;
        }
        
        .login-main .login-bottom {
          width: 360px !important;
        }
      }
    </style>
  </head>
  <body>
    <div class="main-body">
      <div class="login-main">
        <div class="login-top">
          <span>用户注册</span>
          <span class="bg1"></span>
          <span class="bg2"></span>
        </div>
        <form class="layui-form login-bottom">
          <div class="center">
            <div class="item">
              <span class="icon icon-2"></span>
              <input type="text" id="username" name="username" lay-verify="required" placeholder="请输入登录账号"
                     maxlength="24"/>
            </div>
            
            <div class="item">
              <span class="icon icon-3"></span>
              <input type="password" id="password" name="password" lay-verify="required" placeholder="请输入密码" maxlength="20">
              <span class="bind-password icon icon-4"></span>
            </div>
            
            <div id="validatePanel" class="item" style="width: 137px;">
              <input type="text" id="code" name="code" placeholder="请输入验证码" maxlength="4">
              <img class="validateImg" onclick="this.src='/api/sys/captcha?d='+Math.random()" src="/api/sys/captcha">
            </div>
          </div>
          <div class="tip">
            <%--                <span class="icon-nocheck"></span>--%>
            <%--                <span class="login-tip">保持登录</span>--%>
            <a href="/api/sysUser/login" class="forget-password">已有账号，立即登录</a>
          </div>
          <div class="layui-form-item" style="text-align:center; width:100%;height:100%;margin:0px;">
            <button class="login-btn" id="registerBtn" type="button">立即注册</button>
          </div>
        </form>
      </div>
    </div>
    <%--<div class="footer">--%>
    <%--    ©版权所有 2014-2018 叁贰柒工作室<span class="padding-5">|</span><a target="_blank" href="http://www.miitbeian.gov.cn">粤ICP备16006642号-2</a>--%>
    <%--</div>--%>
    <script src="../../lib/jquery-3.4.1/jquery-3.4.1.min.js" charset="utf-8"></script>
    <script src="../../lib/layui-v2.6.3/layui.js" charset="utf-8"></script>
    <script src="../../js/http.js" charset="utf-8"></script>
    <script>
        layui.use(['form', 'jquery'], function () {
            var $ = layui.jquery;
            var form = layui.form;
            var layer = layui.layer;

            // 登录过期的时候，跳出ifram框架
            if (top.location != self.location) top.location = self.location;

            $('.bind-password').on('click', function () {
                if ($(this).hasClass('icon-5')) {
                    $(this).removeClass('icon-5');
                    $("input[name='password']").attr('type', 'password');
                } else {
                    $(this).addClass('icon-5');
                    $("input[name='password']").attr('type', 'text');
                }
            });

            $('.icon-nocheck').on('click', function () {
                if ($(this).hasClass('icon-check')) {
                    $(this).removeClass('icon-check');
                } else {
                    $(this).addClass('icon-check');
                }
            });
            $("#registerBtn").click(function () {

                if (!$("#username").val()) {
                    layer.msg('用户名不能为空');
                    return false;
                }
                if (!$("#password").val()) {
                    layer.msg('密码不能为空');
                    return false;
                }
                if (!$("#code").val()) {
                    layer.msg('验证码不能为空');
                    return false;
                }
                var parm = {
                    username: $("#username").val(),
                    password: $("#password").val(),
                    code: $("#code").val(),
                }
                http.post("/api/sysUser/registerCommit", parm, function (res) {
                    console.log(res)
                    if(res.code == 200){
                        //注册成功，跳转到登录
                         window.location = '/api/sysUser/login'
                    }
                })
            })
            // 进行登录操作
            // form.on('submit(login)', function (data) {
            //     data = data.field;
            //     console.log(data)
            //     if (data.username == '') {
            //         layer.msg('用户名不能为空');
            //         return false;
            //     }
            //     if (data.password == '') {
            //         layer.msg('密码不能为空');
            //         return false;
            //     }
            //     if (data.code == '') {
            //         layer.msg('验证码不能为空');
            //         return false;
            //     }
            //     http.post("/api/sysUser/registerCommit", data, function (res) {
            //         console.log(res)
            //     })
            //     // if (!data.userType) {
            //     //     layer.msg('请选择用户类型');
            //     //     return false;
            //     // }
            //     // layer.msg('登录成功', function () {
            //     //     // window.location = '../index.html';
            //     //     window.location = '/home/index?userType=' + data.userType;
            //     // });
            //     return false;
            // });
        });
    </script>
  </body>
</html>
```



#### 第64讲  客户答卷表设计

##### 1、答卷表(answer_question)：存放用户答了哪些卷

| 字段名称    | 数据类型 | 字段大小 | 是否主键 | 是否为空 | 备注     |
| ----------- | -------- | -------- | -------- | -------- | -------- |
| answer_id   | int      | 11       | 是       | 否       | 答卷表   |
| question_id | int      | 11       | 否       | 是       | 问卷id   |
| user_id     | int      | 11       | 否       | 是       | 答卷人id |
| create_time | datetime | 默认     | 否       | 是       | 答卷时间 |



##### 2、答案表(answer_paper):答卷对应的试题

| 字段名称        | 数据类型 | 字段大小 | 是否主键 | 是否为空 | 备注     |
| --------------- | -------- | -------- | -------- | -------- | -------- |
| answer_paper_id | int      | 11       | 是       | 否       | 主键     |
| paper_id        | int      | 11       | 否       | 是       | 试题id   |
| user_id         | int      | 11       | 否       | 是       | 答题人   |
| paper_type      | varchar  | 2        | 否       | 是       | 试题类型 |
| paper_value     | text     | 默认     | 否       | 是       | 答案     |

##### 3、答案选项表(answer_paper_choice):（答卷对应的选项）

| 字段名称         | 数据类型 | 字段大小 | 是否主键 | 是否为空 | 备注   |
| ---------------- | -------- | -------- | -------- | -------- | ------ |
| answer_choice_id | int      | 11       | 是       | 否       | 主键   |
| chioce_id        | int      | 11       | 否       | 是       | 选项id |
| paper_id         | int      | 11       | 否       | 是       | 试题id |
| user_id          | int      | 11       | 否       | 是       | 答题人 |



#### 第65讲 用户提交问卷接口开发思路

##### 1、前端提交，保存思路

```js
1、存储答卷表，对应answer_question表
2、把答案存储到答案表，对应 answer_paper表，采用批量保存的形式
3、题目类型为单选和多选题时，需要存储到答题选项表，对应 answer_paper_choice表，采用批量保存的形式保存；
```

##### 2、接口提取：

```js
1、存储答卷接口:
2、存储答案接口: 批量保存
3、存储答案选项接口：批量保存
```



##### 3、新建对应AnswerQuestion实体类

```js
package com.itmk.web.answer_question.entity;

import lombok.Data;

import java.io.Serializable;
import java.util.Date;

@Data
public class AnswerQuestion implements Serializable {
    private Long answerId;
    private Long questionId;
    private Long userId;
    private Date createTime;
}

```

##### 4、新建AnswerQuestionMapper层

```js
package com.itmk.web.answer_question.mapper;

import com.itmk.web.answer_question.entity.AnswerQuestion;
import org.apache.ibatis.annotations.Param;

public interface AnswerQuestionMapper {
    //保存用户做的问卷
    boolean save(@Param("answerQuestion") AnswerQuestion answerQuestion);
}

```

##### 5、新建AnswerQuestionMapper映射文件

```js
<?xml version="1.0" encoding="utf-8" ?>
<!DOCTYPE mapper
        PUBLIC "-//mybatis.org//DTD Mapper 3.0//EN"
        "http://mybatis.org/dtd/mybatis-3-mapper.dtd">
<mapper namespace="com.itmk.web.answer_question.mapper.AnswerQuestionMapper">
    <!--    解决数据库字段和实体类字段不一样的问题-->
    <resultMap id="answerQuestion" type="com.itmk.web.answer_question.entity.AnswerQuestion">
        <id property="answerId" column="answer_id"></id>
        <result property="questionId" column="question_id"></result>
        <result property="userId" column="user_id"></result>
        <result property="createTime" column="create_time"></result>
    </resultMap>
    <insert id="save" parameterType="com.itmk.web.answer_question.entity.AnswerQuestion">
        insert  into answer_question(question_id,user_id,create_time)
        values
        (#{answerQuestion.questionId},#{answerQuestion.userId},#{answerQuestion.createTime})
    </insert>
</mapper>
```



#### 第66讲 答案保存接口开发

##### 1、新建实体类

```js
package com.itmk.web.answer_paper.entity;

import lombok.Data;

import java.io.Serializable;
@Data
public class AnswerPaper implements Serializable {
    private Long answerPaperId;
    private Long paperId;
    private Long userId;
    private String paperType;
    private String paperValue;
}

```

##### 2、mapper接口

```js
package com.itmk.web.answer_paper.mapper;

import com.itmk.web.answer_paper.entity.AnswerPaper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface AnswerPaperMapper {
    //批量保存
    boolean saveBatch(@Param("list") List<AnswerPaper> list);
}

```

##### 3、映射文件

```js
<?xml version="1.0" encoding="utf-8" ?>
<!DOCTYPE mapper
        PUBLIC "-//mybatis.org//DTD Mapper 3.0//EN"
        "http://mybatis.org/dtd/mybatis-3-mapper.dtd">
<mapper namespace="com.itmk.web.answer_paper.mapper.AnswerPaperMapper">
    <!--    解决数据库字段和实体类字段不一样的问题-->
    <resultMap id="answerPaperMap" type="com.itmk.web.answer_paper.entity.AnswerPaper">
        <id property="answerPaperId" column="answerPaperId"></id>
        <result property="paperId" column="paper_id"></result>
        <result property="userId" column="user_id"></result>
        <result property="paperType" column="paper_type"></result>
        <result property="paperValue" column="paper_value"></result>
    </resultMap>
    <insert id="saveBatch" parameterType="java.util.List">
        insert into answer_paper(paper_id,user_id,paper_type,paper_value)
        <foreach collection="list" item="paper" separator=",">
            (#{paper.paperId},#{paper.userId},#{paper.paperType},#{paper.paperValue})
        </foreach>
    </insert>
</mapper>
```



#### 第67讲 选项保存接口开发

##### 1、新建实体类

```js
package com.itmk.web.answer_paper_choice.entity;

import lombok.Data;

import java.io.Serializable;

@Data
public class AnswerPaperChoice implements Serializable {
    private Long answerChoiceId;
    private Long chioceId;
    private Long paperId;
    private Long userId;
}

```

##### 2、mapper接口

```js
package com.itmk.web.answer_paper_choice.mapper;

import com.itmk.web.answer_paper_choice.entity.AnswerPaperChoice;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface AnswerPaperChoiceMapper {
    boolean save(@Param("list") List<AnswerPaperChoice> list);
}

```

##### 3、映射文件

```js
<?xml version="1.0" encoding="utf-8" ?>
<!DOCTYPE mapper
        PUBLIC "-//mybatis.org//DTD Mapper 3.0//EN"
        "http://mybatis.org/dtd/mybatis-3-mapper.dtd">
<mapper namespace="com.itmk.web.answer_paper_choice.mapper.AnswerPaperChoiceMapper">
    <!--    解决数据库字段和实体类字段不一样的问题-->
    <resultMap id="answerPaperMap" type="com.itmk.web.answer_paper_choice.entity.AnswerPaperChoice">
        <id property="answerChoiceId" column="answer_choice_id"></id>
        <result property="chioceId" column="chioce_id"></result>
        <result property="paperId" column="paper_id"></result>
        <result property="userId" column="user_id"></result>
    </resultMap>
    <insert id="save" parameterType="java.util.List">
        insert into answer_paper_choice(chioce_id,paper_id,user_id)
        <foreach collection="list" item="paper" separator=",">
            (#{paper.chioceId},#{paper.paperId},#{paper.userId})
        </foreach>
    </insert>
</mapper>
```



#### 第68讲 用户问卷提交保存

##### 1、前端参数接受实体类定义

```js
package com.itmk.web.answer_paper.entity;

import lombok.Data;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

@Data
public class CommitParm implements Serializable {
    private Long userId;
    private Long questionId;
    private List<PaperPrm> paperList = new ArrayList<>();
}

```

**答案实体类**

```js
package com.itmk.web.answer_paper.entity;


import lombok.Data;

import java.io.Serializable;

@Data
public class PaperPrm implements Serializable {
    private Long paperId;
    private String paperType;
    private String paperValue;
    private Long questionId;
}
```

##### 2、控制器

新建AnswerPaperController控制器

```js
package com.itmk.web.answer_paper.controller;

import com.itmk.common.ResultUtils;
import com.itmk.common.ResultVo;
import com.itmk.web.answer_paper.entity.CommitParm;
import com.itmk.web.answer_paper.service.AnswerPaperService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/api/answerPaper")
public class AnswerPaperController {
    @Autowired
    private AnswerPaperService answerPaperService;

    @RequestMapping("/saveCommit")
    @ResponseBody
    public ResultVo saveCommit(@RequestBody CommitParm parm){
        answerPaperService.saveCommit(parm);
        return ResultUtils.success("提交成功!");
    }
}

```

##### 3、service层

新建AnswerPaperService接口

```js
package com.itmk.web.answer_paper.service;

import com.itmk.web.answer_paper.entity.CommitParm;

public interface AnswerPaperService {
    void saveCommit(CommitParm parm);
}

```

##### 4、实现类

```js
package com.itmk.web.answer_paper.service.impl;

import com.itmk.web.answer_paper.entity.AnswerPaper;
import com.itmk.web.answer_paper.entity.CommitParm;
import com.itmk.web.answer_paper.entity.PaperPrm;
import com.itmk.web.answer_paper.mapper.AnswerPaperMapper;
import com.itmk.web.answer_paper.service.AnswerPaperService;
import com.itmk.web.answer_paper_choice.entity.AnswerPaperChoice;
import com.itmk.web.answer_paper_choice.mapper.AnswerPaperChoiceMapper;
import com.itmk.web.answer_question.entity.AnswerQuestion;
import com.itmk.web.answer_question.mapper.AnswerQuestionMapper;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@Service
public class AnswerPaperServiceImpl implements AnswerPaperService {
    @Resource
    private AnswerQuestionMapper answerQuestionMapper;
    @Resource
    private AnswerPaperChoiceMapper answerPaperChoiceMapper;
    @Resource
    private AnswerPaperMapper answerPaperMapper;

    @Override
    @Transactional
    public void saveCommit(CommitParm parm) {
        //1.保存答卷表
        AnswerQuestion question = new AnswerQuestion();
        question.setCreateTime(new Date());
        question.setQuestionId(parm.getQuestionId());
        question.setUserId(parm.getUserId());
        answerQuestionMapper.add(question);
        //保存试题答案
        //前端传来的答案
        List<PaperPrm> paperList = parm.getPaperList();
        List<AnswerPaper> papers = new ArrayList<>();
        for (int i = 0; i < paperList.size(); i++) {
            AnswerPaper paper = new AnswerPaper();
            BeanUtils.copyProperties(paperList.get(i), paper);
            paper.setUserId(parm.getUserId());
            papers.add(paper);
            //保存单选
            if (paperList.get(i).getPaperType().equals("1")) {
                List<AnswerPaperChoice> choiceList = new ArrayList<>();
                AnswerPaperChoice choice = new AnswerPaperChoice();
                choice.setUserId(parm.getUserId());
                choice.setPaperId(paperList.get(i).getPaperId());
                choice.setChioceId(Long.valueOf(paperList.get(i).getPaperValue()));
                choiceList.add(choice);
                answerPaperChoiceMapper.saveBatch(choiceList);
            }
            //如果是多选题
            if (paperList.get(i).getPaperType().equals("2")) {
                List<AnswerPaperChoice> choiceList = new ArrayList<>();
                String regx = ",";
                String[] strings = paperList.get(i).getPaperValue().split(regx);
                for (int j = 0; j < strings.length; j++) {
                    AnswerPaperChoice choice = new AnswerPaperChoice();
                    choice.setUserId(parm.getUserId());
                    choice.setPaperId(paperList.get(i).getPaperId());
                    choice.setChioceId(Long.valueOf(strings[j]));
                    choiceList.add(choice);
                }
                answerPaperChoiceMapper.saveBatch(choiceList);
            }
        }
        answerPaperMapper.saveBatch(papers);
    }
}

```



##### 5、spring 事务失效的解决

applicationContext.xml添加如下代码

```js
	<!-- 用注解来实现事务管理 -->
    <tx:annotation-driven transaction-manager="transactionManager" proxy-target-class="true"/>
```

##### 6、页面代码

```js
//编辑、删除点击事件
            table.on('tool(questiontable)', function (obj) {
                console.log(obj)
                if (obj.event == 'edit') {
                    // layer.msg('编辑')
                    layer.open({
                        skin: 'layui-layer-molv', //皮肤
                        offset: '0px',
                        title: obj.data.questionTitle,
                        type: 2,
                        area: ['1100px', '800px'],
                        content: '/api/sysPaper/answer?questionId='+obj.data.questionId,
                        btn: ['确定', '取消'],
                        btn1: function (index) {
                            var parms = window["layui-layer-iframe" + index].commitdata();
                            console.log('111111111')
                            console.log(parms)
                            var parm = {
                                userId:$("#userId").val(),
                                questionId:obj.data.questionId,
                                paperList:parms
                            }
                            http.post("/api/answerPaper/saveCommit",JSON.stringify(parm),function (data) {
                              if(data.code == 200){
                                  layer.msg(data.msg)
                                  //关闭弹框
                                  layer.close(index);
                              }
                            },"application/json")
                            // layer.close(index);
                        },
                        btn2: function (index) {

                        }
                    })
                }
            });
```



#### 第69讲  解决重复答卷的问题



#### 第70讲  我的问卷

##### 1、列表参数分析

```js
package com.itmk.web.sys_question.entity;

import lombok.Data;

import java.io.Serializable;
@Data
public class QuestionParm implements Serializable {
    private Integer page;
    private Integer limit;
    private String questionTitle;
    private Long userId;
}

```

**返回值分析**

layui表格需要的数据格式，可以根据官网得知  https://www.layui.com/doc/modules/table.html#async

```js
{
  "code": 0,
  "msg": "",
  "count": 1000,
  "data": [{}, {}]
}


注意事项：格式一定要跟上面的字段对应，并且code返回的值必须是 0 
```



##### 2、SysQuestionMapper新建如下方法

```js
	//查询我的问卷列表
    List<SysQuestion> getMyQuestionList(@Param("questionTitle") String questionTitle,@Param("userId") Long userId);
```

##### 3、SysQuestionMapper.xml映射文件

```js
<!--    查询我的表格查询-->
    <select id="getMyQuestionList" resultMap="sysQuestionMap">
        select sq.* from sys_question as sq,answer_question as aq
        where aq.question_id = sq.question_id
        <if test="questionTitle != null and questionTitle !=''">
            and sq.question_title like concat('%',#{questionTitle},'%')
        </if>
        and aq.user_id = #{userId}
    </select>
```

##### 4、SysQuestionService添加getMyQuestionList()方法

```js
	//查询我的问卷列表
    List<SysQuestion> getMyQuestionList(QuestionParm parm);
```

**实现类**

```js
@Override
    public List<SysQuestion> getMyQuestionList(QuestionParm parm) {
        //设置分页参数，一定要放在查询之前
        PageHelper.startPage(parm.getPage(),parm.getLimit());
        return sysQuestionMapper.getMyQuestionList(parm.getQuestionTitle(),parm.getUserId());
    }
```

##### 5、SysQuestionController控制器添加如下方法

```js
/**
     * 我的问卷页面
     * @return
     */
    @RequestMapping("/myListUI")
    public String myListUI(){
        return "system/question/mylist";
    }
     /**
     * 查询我的问卷
     */
    @GetMapping("/mylist")
    @ResponseBody
    public ResultMap mylist(QuestionParm parm){
        List<SysQuestion> list = sysQuestionService.getMyQuestionList(parm);
        PageInfo<SysQuestion> pageInfo = new PageInfo<>(list);
        //返回code = 0  返回的数据需要从pageIfo里面获取
        return ResultUtils.pageResult(StatusCode.SUCCESS_LAYUI_CODE,"查询成功",pageInfo.getList(),pageInfo.getTotal());
    }
```

##### 6、mylist.jsp页面

```js
{
  "homeInfo": {
    "title": "首页",
    "href": "/home/commonwelcome"
  },
  "logoInfo": {
    "title": "调查问卷系统",
    "image": "/images/logo.png",
    "href": ""
  },
  "menuInfo": [
    {
      "title": "系统管理",
      "icon": "fa fa-address-book",
      "href": "",
      "target": "_self",
      "child": [
        {
          "title": "问卷列表",
          "href": "/api/sysQuestion/commonlist",
          "icon": "fa fa-window-maximize",
          "target": "_self"
        },
        {
          "title": "我的问卷",
          "href": "/api/sysQuestion/myListUI",
          "icon": "fa fa-gears",
          "target": "_self"
        }
      ]
    }
  ]
}
```



```js
<%--
  Created by IntelliJ IDEA.
  User: lcy
  Date: 2021-08-25
  Time: 12:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>Title</title>
    <link rel="stylesheet" href="../../lib/layui-v2.6.3/css/layui.css" media="all">
    <link rel="stylesheet" href="../../lib/bootstrap/bootstrap.min.css" media="all">
    <style>
      .layui-table-cell {
        text-align: center;
        height: auto;
        white-space: normal;
      }
    </style>
  </head>
  <body style="font-size: 0.8rem;">
    <%--    搜索框--%>
    <div class="d-flex m-3 align-items-center">
      <div class="d-flex">
        <label style="width: 100px;margin: 0px;" class="d-flex align-items-center">问卷标题:</label>
        <input id="questionTitle" class="form-control form-control-sm" value="" placeholder="请输入问卷标题"/>
      </div>
      <button id="searchBtn" style="margin-left: 0.6rem;" class="layui-btn layui-btn-sm layui-btn-normal"><i
        class="layui-icon layui-icon-search"></i>
        搜索
      </button>
      <button id="resetBtn" style="border-color: #FF7670;color: #FF7670;" type="button"
              class="layui-btn layui-btn-primary layui-btn-sm"><i
        class="layui-icon layui-icon-close"></i>重置
      </button>
    </div>
    <%--      表格布局--%>
    <table id="questiontable" lay-filter="questiontable"></table>
    <script type="text/html" id="headertool">
    
    </script>
<%--    <script type="text/html" id="linetool">--%>
<%--      <a lay-event="edit" class="layui-btn layui-btn-sm"><i class="layui-icon layui-icon-edit"></i>编辑</a>--%>
<%--      <a lay-event="delete" class="layui-btn layui-btn-danger layui-btn-sm"><i--%>
<%--        class="layui-icon layui-icon-close"></i>删除</a>--%>
<%--    </script>--%>
    <script src="../../lib/jquery-3.4.1/jquery-3.4.1.min.js" charset="utf-8"></script>
    <script src="../../lib/layui-v2.6.3/layui.js" charset="utf-8"></script>
    <script src="../../js/http.js" charset="utf-8"></script>
    <script>

        layui.use(['table', 'layer'], function () {
            var table = layui.table;
            var layer = layui.layer;
            var $ = layui.jquery;
            //表格渲染
            table.render({
                elem: '#questiontable',
                url: '/api/sysQuestion/mylist',
                height: 'full-100',
                toolbar: '#headertool',//表格头部的工具栏
                cols: [[
                    {
                        field: 'questionImg', title: '问卷图片', width: 200, align: 'center', templet: function (d) {
                            // return "<img src=" + d.questionImg + "width='80px' height='80px' class='layui-circle' />";
                            // 注意：结束符之前，不能有空格
                            return "<img src=" + d.questionImg + " width='80px' height='80px' class='layui-circle'/>";
                        }
                    },
                    {field: 'questionTitle', title: '问卷标题', align: 'center', width: 180},
                    {field: 'questionDesc', title: '问卷简介', align: 'center'},
                    {field: 'questionOrder', title: '问卷序号', align: 'center', width: 180},
                    {
                        field: 'questionStatus', title: '问卷状态', align: 'center', width: 180, templet: function (d) {
                            if (d.questionStatus == '0') {
                                return '停用'
                            } else {
                                return '启用'
                            }
                        }
                    }

                ]],
                page: true,
                limit: 10,
                limits: [10, 20, 30, 50],
                where: {
                    userId:sessionStorage.getItem("userId")
                }
            })
            
            //刷新表格
            function reload() {
                table.reload('questiontable', {
                    page: {
                        curr: 1
                    },
                    where: {
                        questionTitle: $("#questionTitle").val(),
                        userId:sessionStorage.getItem("userId")
                    }
                })
            };
            //搜索按钮
            $("#searchBtn").click(function () {
                reload();
            });
            //重置按钮
            $("#resetBtn").click(function () {
                //清空搜索框数据
                $("#questionTitle").val('');
                //重新加载表格
                reload();
            })
        })
    </script>
  </body>
</html>

```



#### 第71讲 统计管理

##### 1、新建统计管理页面

在WEB-INF/jsp/system/question下新建countList.jsp页面

```js
<%--
  Created by IntelliJ IDEA.
  User: lcy
  Date: 2021-08-25
  Time: 12:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>Title</title>
    <link rel="stylesheet" href="../../lib/layui-v2.6.3/css/layui.css" media="all">
    <link rel="stylesheet" href="../../lib/bootstrap/bootstrap.min.css" media="all">
    <style>
      .layui-table-cell {
        text-align: center;
        height: auto;
        white-space: normal;
      }
    </style>
  </head>
  <body style="font-size: 0.8rem;">
    <%--    搜索框--%>
    <div class="d-flex m-3 align-items-center">
      <div class="d-flex">
        <label style="width: 100px;margin: 0px;" class="d-flex align-items-center">问卷标题:</label>
        <input id="questionTitle" class="form-control form-control-sm" value="" placeholder="请输入问卷标题"/>
      </div>
      <button id="searchBtn" style="margin-left: 0.6rem;" class="layui-btn layui-btn-sm layui-btn-normal"><i
        class="layui-icon layui-icon-search"></i>
        搜索
      </button>
      <button id="resetBtn" style="border-color: #FF7670;color: #FF7670;" type="button"
              class="layui-btn layui-btn-primary layui-btn-sm"><i
        class="layui-icon layui-icon-close"></i>重置
      </button>
    </div>
    <%--      表格布局--%>
    <table id="questiontable" lay-filter="questiontable"></table>
    <script type="text/html" id="headertool">
    
    </script>
    <script type="text/html" id="linetool">
      <a lay-event="look" class="layui-btn layui-btn-sm layui-btn-normal"><i class="layui-icon layui-icon-edit"></i>查看统计</a>
      <a lay-event="edit" class="layui-btn layui-btn-sm"><i class="layui-icon layui-icon-edit"></i>打印投票</a>
    </script>
    <script src="../../lib/jquery-3.4.1/jquery-3.4.1.min.js" charset="utf-8"></script>
    <script src="../../lib/layui-v2.6.3/layui.js" charset="utf-8"></script>
    <script src="../../js/http.js" charset="utf-8"></script>
    <script>

        layui.use(['table', 'layer'], function () {
            var table = layui.table;
            var layer = layui.layer;
            var $ = layui.jquery;
            //表格渲染
            table.render({
                elem: '#questiontable',
                url: '/api/sysQuestion/list',
                height: 'full-100',
                toolbar: '#headertool',//表格头部的工具栏
                cols: [[
                    {
                        field: 'questionImg', title: '问卷图片', width: 200, align: 'center', templet: function (d) {
                            // return "<img src=" + d.questionImg + "width='80px' height='80px' class='layui-circle' />";
                            // 注意：结束符之前，不能有空格
                            return "<img src=" + d.questionImg + " width='80px' height='80px' class='layui-circle'/>";
                        }
                    },
                    {field: 'questionTitle', title: '问卷标题', align: 'center', width: 180},
                    {field: 'questionDesc', title: '问卷简介', align: 'center'},
                    {field: 'questionOrder', title: '问卷序号', align: 'center', width: 180},
                    {
                        field: 'questionStatus', title: '问卷状态', align: 'center', width: 180, templet: function (d) {
                            if (d.questionStatus == '0') {
                                return '停用'
                            } else {
                                return '启用'
                            }
                        }
                    },
                    {field: 'username', title: '操作', align: 'center', width: 230, toolbar: '#linetool'},

                ]],
                page: true,
                limit: 10,
                limits: [10, 20, 30, 50]
            })
            //编辑、删除点击事件
            table.on('tool(questiontable)', function (obj) {
                console.log(obj)
                if (obj.event == 'look') {
                    // layer.msg('编辑')
                    layer.open({
                        skin: 'layui-layer-molv', //皮肤
                        offset: '0px',
                        title: '【'+obj.data.questionTitle+'】---统计图分析',
                        type: 2,
                        area: ['1100px', '800px'],
                        content: '/api/sysQuestion/lookList?questionId=' + obj.data.questionId + "&questionTitle=" + obj.data.questionTitle,
                        // btn: ['打印', '取消'],
                        // btn1: function (index) {
                        //     window["layui-layer-iframe" + index].printCount();
                        // },
                        btn2: function (index) {

                        }
                    })
                }
                if (obj.event == 'edit') {
                    // layer.msg('编辑')
                    layer.open({
                        skin: 'layui-layer-molv', //皮肤
                        offset: '0px',
                        title: obj.data.questionTitle,
                        type: 2,
                        area: ['1100px', '800px'],
                        content: '/api/sysQuestion/count?questionId=' + obj.data.questionId + "&questionTitle=" + obj.data.questionTitle,
                        btn: ['打印', '取消'],
                        btn1: function (index) {
                            window["layui-layer-iframe" + index].printCount();
                        },
                        btn2: function (index) {

                        }
                    })
                }
            });

            //刷新表格
            function reload() {
                table.reload('questiontable', {
                    page: {
                        curr: 1
                    },
                    where: {
                        questionTitle: $("#questionTitle").val()
                    }
                })
            };
            //搜索按钮
            $("#searchBtn").click(function () {
                reload();
            });
            //重置按钮
            $("#resetBtn").click(function () {
                //清空搜索框数据
                $("#questionTitle").val('');
                //重新加载表格
                reload();
            })
        })
    </script>
  </body>
</html>

```

##### 2、配置菜单

在api/init.json下的  统计管理  菜单添加href属性为  /api/sysQuestion/countList

```js
{
  "homeInfo": {
    "title": "首页",
    "href": "/home/welcome"
  },
  "logoInfo": {
    "title": "调查问卷系统",
    "image": "/images/logo.png",
    "href": ""
  },
  "menuInfo": [
    {
      "title": "系统管理",
      "icon": "fa fa-address-book",
      "href": "",
      "target": "_self",
      "child": [
        {
          "title": "用户管理",
          "href": "/api/sysUser/index",
          "icon": "fa fa-window-maximize",
          "target": "_self"
        },
        {
          "title": "问卷管理",
          "href": "/api/sysQuestion/index",
          "icon": "fa fa-gears",
          "target": "_self"
        },
        {
          "title": "设计试题",
          "href": "/api/sysPaper/index",
          "icon": "fa fa-file-text",
          "target": "_self"
        },
        {
          "title": "统计管理",
          "href": "/api/sysQuestion/countList",
          "icon": "fa fa-file-text",
          "target": "_self"
        },
        {
          "title": "弹性盒子",
          "href": "/home/box",
          "icon": "fa fa-file-text",
          "target": "_self"
        },
        {
          "title": "bootstrap盒子",
          "href": "/home/bootstrap",
          "icon": "fa fa-file-text",
          "target": "_self"
        }
      ]
    }
  ]
}
```

##### 3、创建控制器返回视图

在SysQuestionController控制器添加 countList()方法，返回视图

```js
 /**
     * 统计管理
     */
    @RequestMapping("/countList")
    public String countList() {
        return "system/question/countList";
    }
```

##### 4、统计分析页面创建

在WEB-INF/jsp/system/question下新建lookList.jsp页面

```js

```

##### 5、控制器返回统计分析视图

在SysQuestionController控制器添加lookList()方法，返回统计分析视图页面

```js
 /**
     * 统计分析
     */
    @RequestMapping("/lookList")
    public String lookList(Long questionId, String questionTitle, ModelMap map) {
        map.put("questionId", questionId);
        map.put("questionTitle", questionTitle);
        return "system/question/lookList";
    }
```

##### 6、打印投票页面创建

在WEB-INF/jsp/system/question下新建count.jsp页面

```js

```

##### 7、控制器返回打印投票视图

在SysQuestionController控制器添加count()方法，返回统打印投票视图页面

```js
 /**
     * 打印统计页面
     */
    @RequestMapping("/count")
    public String count(Long questionId, String questionTitle, ModelMap map) {
        map.put("questionId", questionId);
        map.put("questionTitle", questionTitle);
        return "system/question/count";
    }
```



#### 第72讲  统计分析接口开发

##### 1、需求分析

```
统计出每个试题中，每个选项的投票人数
```

##### 2、sql语句: 根据答卷人id进行统计

```js
select  sp.question_id,spc.*,count(ac.user_id) as total
        from  sys_paper as sp
        right join sys_paper_choice as spc  on sp.paper_id = spc.paper_id
        left join answer_paper_choice as ac on ac.chioce_id = spc.chioce_id
        GROUP BY spc.chioce_id
		order by spc.chioce_id asc
```



##### 3、新建返回值类型

在包 com.itmk.web.sys_paper_choice.entity下新建 ResultPaperChoice 类

```js
package com.itmk.web.sys_paper_choice.entity;

import lombok.Data;

import java.io.Serializable;
@Data
public class ResultPaperChoice implements Serializable {
    private Long chioceId;
    //试题id
    private Long paperId;
    //选项标题
    private String choiceText;
    //序号
    private Integer choiceOrder;
    //总条数
    private Long total;
    //问卷id
    private Long questionId;
}
```



##### 4、SysPaperChoiceMapper接口添加统计的方法

```js
 List<ResultPaperChoice> getListPaperChoice(@Param("questionId") Long questionId);
```



##### 5、SysPaperChoiceMapper.xml映射文件实现sql查询

```js
<resultMap id="resultCountMap" type="com.itmk.web.sys_paper_choice.entity.ResultPaperChoice">
        <id property="chioceId" column="chioce_id"></id>
        <result property="paperId" column="paper_id"></result>
        <result property="choiceText" column="choice_text"></result>
        <result property="choiceOrder" column="choice_order"></result>
        <result property="questionId" column="question_id"></result>
        <result property="total" column="total"></result>
    </resultMap>


  <select id="getListPaperChoice" resultMap="resultCountMap">
        select  sp.question_id,spc.*,count(ac.chioce_id) as total
        from  sys_paper as sp
        right join sys_paper_choice as spc  on sp.paper_id = spc.paper_id
        left join answer_paper_choice as ac on ac.chioce_id = spc.chioce_id
        where sp.question_id =#{questionId}
        GROUP BY spc.chioce_id
    </select>
```



##### 6、SysPaperChoiceService接口添加getListPaperChoice()方法

```js
List<ResultPaperChoice> getListPaperChoice(Long questionId);
```



##### 7、实现类

```js
	@Override
    public List<ResultPaperChoice> getListPaperChoice(Long questionId) {
        return sysPaperChoiceMapper.getListPaperChoice(questionId);
    }
```



##### 8、返回前端数据定义

```js
package com.itmk.web.sys_question.entity;

import com.itmk.web.sys_paper_choice.entity.ResultPaperChoice;
import lombok.Data;

import java.io.Serializable;
import java.util.List;
@Data
public class ResultPaper implements Serializable {
    //试题id
    private Long paperId;
    //问卷id
    private Long questionId;
    //标题
    private String paperTitle;
    //试题类型
    private String paperType;
    private Long paperOrder;
    private List<ResultPaperChoice> paperChoice;
}

```



##### 9、SysQuestionController控制器添加统计方法

```java
 /**
     * 问卷统计查询
     */
    @GetMapping("/getTotalList")
    @ResponseBody
    public ResultVo getTotalList(Long questionId) {
        //1、查询问卷的所有试题
        List<SysPaperParm> paperList = sysPaperService.getPaperList(questionId);
        List<ResultPaper> resultList = new ArrayList<>();
        //2、查询试题对应的选项统计
        List<ResultPaperChoice> choiceList = sysPaperChoiceService.getListPaperChoice(questionId);
        for (int i = 0; i < paperList.size(); i++) {
            ResultPaper parm = new ResultPaper();
            List<ResultPaperChoice> paperChoice = new ArrayList<>();
            Long paperId = paperList.get(i).getPaperId();
            choiceList.stream().filter(item -> item.getPaperId().equals(paperId)).forEach(item -> {
                ResultPaperChoice choice = new ResultPaperChoice();
                BeanUtils.copyProperties(item, choice);
                paperChoice.add(choice);
            });
            BeanUtils.copyProperties(paperList.get(i), parm);
            //设置单选、多选的选项
            parm.setPaperChoice(paperChoice);
            resultList.add(parm);
        }
        return ResultUtils.success("查询成功", resultList);
    }
```



#### 第73讲 echarts图形统计分析对接



##### 1、使用技术: echarts饼状图和柱状图



##### 2、echarts使用 ：

```js
 <script src="../../js/echarts.min.js"></script>
```



##### 3、页面源码

```js
<%--
  Created by IntelliJ IDEA.
  User: lcy
  Date: 2021-08-25
  Time: 12:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>Title</title>
    <link rel="stylesheet" href="../../lib/layui-v2.6.3/css/layui.css" media="all">
    <link rel="stylesheet" href="../../lib/bootstrap/bootstrap.min.css" media="all">
    <style>
      .layui-table-cell {
        text-align: center;
        height: auto;
        white-space: normal;
      }
    </style>
  </head>
  <body style="font-size: 0.8rem;">
    <input id="questionId" type="hidden" value="${questionId}"/>
    <input id="questionTitle" type="hidden" value="${questionTitle}"/>
    <div id="template" style="display: none;">
      <div id="chartitem" class="mb-5"
           style="width: 800px;height:400px;background-color: #EEEEEE;padding: 20px;border:1px solid #E5E5E5;"></div>
    </div>
    <!-- 为 ECharts 准备一个定义了宽高的 DOM -->
    <div id="chartList" class="d-flex align-items-center justify-content-center flex-column" style="padding-top: 30px;">
    
    </div>
    <script src="../../lib/jquery-3.4.1/jquery-3.4.1.min.js" charset="utf-8"></script>
    <script src="../../js/echarts.min.js"></script>
    <script src="../../lib/layui-v2.6.3/layui.js" charset="utf-8"></script>
    <script src="../../js/http.js" charset="utf-8"></script>
    <script>
        $(document).ready(function () {
            getPaperList();
        })

        function getPaperList() {
            var parm = {
                questionId: $("#questionId").val()
            }
            http.get("/api/sysQuestion/getTotalList", parm, function (res) {
                if (res.code == 200) {
                    var result = res.data;
                    if (result) {
                        $("#chartList").empty();
                        var list = $("#chartList");
                        console.log(list)
                        for (var i = 0; i < result.length; i++) {
                            //生成chart容器
                            var clonechart = $("#template").find('#chartitem').clone();
                            clonechart.attr("id", "main" + i);
                            list.append(clonechart);
                            var myChart = echarts.init(document.getElementById('main' + i));
                            var option = null;
                            if (result[i].paperType == '1') {
                                option = {
                                    title: {
                                        text: '',
                                        left: 'left'
                                    },
                                    tooltip: {
                                        trigger: 'item'
                                    },
                                    legend: {
                                        orient: 'vertical',
                                        left: 'left',
                                        top: '10%'
                                    },
                                    series: [
                                        {
                                            name: '访问来源',
                                            type: 'pie',
                                            radius: '50%',
                                            data: [],
                                            emphasis: {
                                                itemStyle: {
                                                    shadowBlur: 10,
                                                    shadowOffsetX: 0,
                                                    shadowColor: 'rgba(0, 0, 0, 0.5)'
                                                }
                                            }
                                        }
                                    ]
                                };
                                if (result[i].paperChoice && result[i].paperChoice.length > 0) {
                                    for (var j = 0; j < result[i].paperChoice.length; j++) {
                                        console.log('进入克隆')

                                        //给optios赋值
                                        option.title.text = i + 1 + "、" + result[i].paperTitle;
                                        var obj = {
                                            value: 0,
                                            name: ''
                                        }
                                        obj.value = result[i].paperChoice[j].total
                                        obj.name = result[i].paperChoice[j].choiceText
                                        option.series[0].data.push(obj)
                                    }
                                }
                            } else {
                                option = {
                                    title: {
                                        text: ''
                                    },
                                    xAxis: {
                                        type: 'category',
                                        data: []
                                    },
                                    yAxis: {
                                        type: 'value'
                                    },
                                    series: [{
                                        data: [],
                                        type: 'bar'
                                    }]
                                };
                                //给optios赋值
                                option.title.text = i + 1 + "、" + result[i].paperTitle;
                                if (result[i].paperChoice && result[i].paperChoice.length > 0) {
                                    for (var j = 0; j < result[i].paperChoice.length; j++) {
                                        option.xAxis.data.push(result[i].paperChoice[j].choiceText)
                                        option.series[0].data.push(result[i].paperChoice[j].total)
                                    }
                                }
                            }
                            myChart.setOption(option);
                        }
                    }
                }
            })
        }

        // 基于准备好的dom，初始化echarts实例
        // var myChart = echarts.init(document.getElementById('main'));
        // var option = {
        //     title: {
        //         text: '某站点用户访问来源',
        //         left: 'center',
        //         top:'5%'
        //     },
        //     tooltip: {
        //         trigger: 'item'
        //     },
        //     legend: {
        //         orient: 'vertical',
        //         left: 'left',
        //         top:'10%'
        //     },
        //     series: [
        //         {
        //             name: '访问来源',
        //             type: 'pie',
        //             radius: '50%',
        //             data: [
        //                 {value: 1000, name: '搜索引擎'},
        //                 {value: 735, name: '直接访问'},
        //                 {value: 580, name: '邮件营销'},
        //                 {value: 484, name: '联盟广告'},
        //                 {value: 300, name: '视频广告'}
        //             ],
        //             emphasis: {
        //                 itemStyle: {
        //                     shadowBlur: 10,
        //                     shadowOffsetX: 0,
        //                     shadowColor: 'rgba(0, 0, 0, 0.5)'
        //                 }
        //             }
        //         }
        //     ]
        // };
        // myChart.setOption(option);
    </script>
  </body>
</html>

```



#### 第74讲 投票统计打印讲解

##### 1、原理：jquery模板克隆原理

##### 2、代码实现

```js
<%--
  Created by IntelliJ IDEA.
  User: lcy
  Date: 2021-09-02
  Time: 22:10

--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>Title</title>
    <style>
      table {
        text-align: center;
        border-collapse: collapse; /* 为table设置这个属性 */
      }
    </style>
  </head>
  <body>
    <input id="questionId" type="hidden" value="${questionId}"/>
    <table id="tables" style="display: none;" class="tables">
      <tr>
        <td class="paperTitle" style="width:30%;text-align:center;"></td>
        <td class="choiceText"></td>
        <td class="total"></td>
      </tr>
    </table>
    <!--printstart-->
    <table style="width: 100%;font-size: 0.9rem;" border="1">
      <h3 style="text-align: center">${questionTitle}</h3>
      <thead>
        <th>题目</th>
        <th>选项</th>
        <th>票数</th>
      </thead>
      <tbody class="tableList">
      </tbody>
    </table>
    <!--printend-->
    <script src="../../lib/jquery-3.4.1/jquery-3.4.1.min.js" charset="utf-8"></script>
    <script src="../../lib/layui-v2.6.3/layui.js" charset="utf-8"></script>
    <script src="../../js/http.js" charset="utf-8"></script>
    <script>
        $(document).ready(function () {
            getPaperList();
        })

        function getPaperList() {
            var parm = {
                questionId: $("#questionId").val()
            }
            http.get("/api/sysQuestion/getTotalList", parm, function (res) {
                if (res.code == 200) {
                    var result = res.data;
                    if (result) {
                        $(".tableList").empty();
                        var list = $(".tableList");
                        console.log(list)
                        for (var i = 0; i < result.length; i++) {
                            if (result[i].paperChoice && result[i].paperChoice.length > 0) {
                                for (var j = 0; j < result[i].paperChoice.length; j++) {
                                    console.log('进入克隆')
                                    var clonedom = $("#tables").find("tbody").find("tr").clone();
                                    if (j == 0) {
                                        clonedom.find(".paperTitle").attr("rowspan", result[i].paperChoice.length)
                                        clonedom.find(".paperTitle").text(result[i].paperTitle)
                                    } else {
                                        clonedom.find(".paperTitle").remove();
                                    }
                                    clonedom.find(".choiceText").text(result[i].paperChoice[j].choiceText);
                                    clonedom.find(".total").text(result[i].paperChoice[j].total);
                                    console.log($(clonedom).html())
                                    list.append(clonedom)
                                }
                            }
                        }
                    }
                }
            })
        }
        function printCount() {
        var bdhtml = window.document.body.innerHTML;
        var printstart = "<!--printstart-->";
        var printend = "<!--printend-->";
        prnhtml = bdhtml.substr(bdhtml.indexOf(printstart), bdhtml.indexOf(printend));
        window.document.body.innerHTML = prnhtml;
        window.print();
        // 还原界面
        window.document.body.innerHTML = bdhtml;
        window.location.reload();
    }
    </script>
  </body>
</html>

```



#### 第75讲 用户登录拦截配置

##### 1、存在的问题

```js
1、session过期时，系统并未跳转到登录页面
2、用户未登录，也能访问系统的接口
```

##### 2、解决方式

```java
拦截器解决
```

##### 3、新建拦截器

在包com.itmk.interceptor下新建拦截器

```js
package com.itmk.interceptor;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * 登录拦截器
 */
public class LoginInterceptor implements HandlerInterceptor {
private static final String LOGIN_URL = "/api/sysUser/login";

	@Override
	public boolean preHandle(HttpServletRequest req, HttpServletResponse res, Object handler) throws Exception {
		HttpSession session = req.getSession(true);
		// 从session 里面获取用户名的信息
		Object obj = session.getAttribute("user");
		// 判断如果没有取到用户信息，就跳转到登陆页面，提示用户进行登陆
		if (obj == null || "".equals(obj.toString())) {
			res.sendRedirect(LOGIN_URL);
		}
		return true;
	}

	@Override
	public void postHandle(HttpServletRequest req, HttpServletResponse res, Object arg2, ModelAndView arg3) throws Exception {
	}

	@Override
	public void afterCompletion(HttpServletRequest req, HttpServletResponse res, Object arg2, Exception arg3) throws Exception {
	}
}

```

##### 4、springmvc.xml配置拦截器

```js
<mvc:interceptors>
		<mvc:interceptor>
			<!-- 需拦截的地址 -->
			<mvc:mapping path="/api/**" />
			<!-- 需排除拦截的地址 -->
			<mvc:exclude-mapping path="/api/sysUser/register"/>
			<mvc:exclude-mapping path="/api/sysUser/login"/>
			<mvc:exclude-mapping path="/api/sys/captcha"/>
			<mvc:exclude-mapping path="/api/sysUser/loginCommit"/>
			<bean class="com.itmk.interceptor.LoginInterceptor" />
		</mvc:interceptor>
</mvc:interceptors>
```



#### 第76讲 用户修改密码

##### 1、新建修改密码的页面editPassword.jsp

```js
<%--
  Created by IntelliJ IDEA.
  User: lcy
  Date: 2021-08-23
  Time: 13:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>Title</title>
    <link rel="stylesheet" href="../../lib/layui-v2.6.3/css/layui.css" media="all">
    <link rel="stylesheet" href="../../lib/bootstrap/bootstrap.min.css" media="all">
  </head>
  <body class="m-3" style="font-size: 0.8rem;">
    <form class="layui-form">
      <div class="row mb-3 flex-column">
        <div class="col d-flex align-items-center mb-3">
          <label style="width: 80px;margin: 0px;" class="d-flex align-items-center"><span style="color: #FF7670;">*
          </span>原密码:</label>
          <input id="userId" value="${user.userId}" type="hidden" class="form-control form-control-sm"/>
          <input id="oldPassword" value="" type="text" class="form-control form-control-sm"/>
        </div>
        <div class="col d-flex align-items-center">
          <label style="width: 80px;margin: 0px;" class="d-flex align-items-center"><span style="color: #FF7670;">*
          </span>新密码:</label>
          <input id="password" value="" type="text" class="form-control form-control-sm"/>
        </div>
      </div>
      <div class="row mb-3">
        <div class="col d-flex align-items-center">
          <label style="width: 80px;margin: 0px;" class="d-flex align-items-center"><span style="color: #FF7670;">*
          </span>确认密码:</label>
          <input id="confirmPassword" value="" type="text" class="form-control form-control-sm"/>
        </div>
      </div>
      <div class="d-flex justify-content-center align-items-center mt-5">
        <button onclick="adddata()" type="button" class="layui-btn layui-btn-normal layui-btn-sm"><i
          class="layui-icon layui-icon-edit"></i>确定
        </button>
        <button type="button" onclick="cancelBtn()" class="layui-btn layui-btn-primary layui-btn-sm"><i
          class="layui-icon layui-icon-close"></i>
          取消
        </button>
      </div>
    </form>
    <script src="../../lib/jquery-3.4.1/jquery-3.4.1.min.js" charset="utf-8"></script>
    <script src="../../lib/layui-v2.6.3/layui.js" charset="utf-8"></script>
    <script src="../../js/lay-config.js?v=1.0.4" charset="utf-8"></script>
    <script src="../../js/http.js" charset="utf-8"></script>
    <script>
        var layer = null;
        var miniTab = null;
        //加载layui的layer模块
        layui.use(['layer', 'miniTab'], function () {
            //获取layer
            layer = layui.layer;
            miniTab = layui.miniTab;
        })

        function adddata() {
            //原密码验证
            if (!$("#oldPassword").val()) {
                layer.msg("请输入原密码");
                return;
            }
            //新密码
            if (!$("#password").val()) {
                layer.msg("请输入账户");
                return;
            }
            //确定密码
            if (!$("#confirmPassword").val()) {
                layer.msg("请输入确定密码");
                return;
            }
            var password = $("#password").val();
            var confirmPassword = $("#confirmPassword").val();
            //用户状态
            if (password != confirmPassword) {
                layer.msg("新密码和确定密码不一致！");
                return;
            }
            var parm = {
                userId: $("#userId").val(),
                oldPassword: $("#oldPassword").val(),
                password: $("#password").val()
            }
            http.post("/api/sysUser/updatePassword", parm, function (res) {
                if (res.code == 200) {
                    window.location = '/api/sysUser/login';
                }
            })
        }

        function cancelBtn() {
            console.log(miniTab)
            miniTab.deleteCurrentByIframe();
        }
    
    </script>
  </body>
</html>

```

##### 2、新建修改密码的视图控制器

在SysUserController控制器添加editPassword()方法，用于返回修改密码的页面

```js
 /**
     * 修改密码
     */
    @GetMapping("/editPassword")
    public String editPassword(Integer userId, ModelMap map) {
       map.put("userId",userId);
        return "system/user/editPassword";
    }
```

##### 3、修改home.jsp和common_home.jsp页面修改密码的请求路径

把<a>标签的href属性修改为如下所示

```java
<a href="javascript:;" layuimini-content-href="/api/sysUser/editPassword" data-title="修改密码"
                               data-icon="fa fa-gears">修改密码</a>
```



##### 4、新建修改密码参数接收类

```java
package com.itmk.web.sys_user.entity;

import lombok.Data;

import java.io.Serializable;

@Data
public class UpdatePasswordParm implements Serializable {
    private Integer userId;
    private String password;
    private String oldPassword;

}

```



##### 5、修改密码保存

```java
/**
     * 修改密码保存
     */
    @PostMapping("/updatePassword")
    @ResponseBody
    public ResultVo updatePassword(UpdatePasswordParm sysUser) {
        //1、验证账户是否被占用
        //根据用户账户查询该账户是否被占用
        SysUser user = sysUserService.getUserById(sysUser.getUserId());
        if (!user.getPassword().equals(sysUser.getOldPassword())) {
            return ResultUtils.error("原密码错误!");
        }
        //更新
        SysUser updateUser = new SysUser();
       updateUser.setUserId(user.getUserId());
       updateUser.setPassword(sysUser.getPassword());
        boolean b = sysUserService.updateById(updateUser);
        if (b) {
            return ResultUtils.success("修改成功!");
        }
        return ResultUtils.error("修改失败!");
    }
```



