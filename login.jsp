<%--
  Created by IntelliJ IDEA.
  User: 王俊豪
  Date: 2024/3/25
  Time: 21:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>登录</title>
    <link rel="stylesheet" type="text/css" href="keli.css">
</head>
<script>
    function refreshCode(){
        document.getElementById("codeimg").src="CreateCode?t="+new Date();
    }
</script>
<body>
<div class="container">
    <!--登录-->
    <div class="container-form container-signin" id="signin-container">
        <form action="../服装购物系统/main.jsp" method="post" class="form" id="form2">
            <h2 class="form-title">登录服装订购系统</h2>
            <input type="text" placeholder="用户名" class="input"/>
            <input type="password" placeholder="密码" class="input"/>
            <input type="text" placeholder="验证码" class="input" name="code"><img id="codeimg" src="CreateCode" width="80" title="点击刷新" style="cursor: pointer" onclick="refreshCode()"/>
            <input type="submit" value="登录" class="btn"></input>
        </form>
    </div>
    <!--注册-->
    <div class="container">
        <!--注册-->
        <div class="container-form container-signup" id="signup-container">
            <form action="register success.jsp" method="post" class="form" id="form1">
                <h2 class="form-title">注册账号</h2>
                <input type="text" placeholder="用户名" name="user" class="input"/>
                <input type="password" placeholder="密码" name="pw" class="input"/>

                <input type="submit" value="点击注册" class="btn"></input>
            </form>
        </div>
    </div>
    <!--叠加部分-->
    <div class="container-overlay">
        <div class="overlay">
            <div class="overlay-panel overlay-left">
                <button class="btn" id="signIn">已有账号</button>
            </div>
            <div class="overlay-panel overlay-right">
                <button class="btn" id="signUp">没有账号，去注册</button>
            </div>
        </div>
    </div>
</div>

<!-- js代码 -->
<script>
    document.addEventListener("DOMContentLoaded", function() {
        const signInBtn = document.querySelector("#signIn");
        const signUpBtn = document.querySelector("#signUp");
        const container = document.querySelector(".container");
        signInBtn.addEventListener("click", () => {
            container.classList.remove("panel-active");
        });
        signUpBtn.addEventListener("click", () => {
            container.classList.add("panel-active");
        });
    });
</script>
</body>
</html>
