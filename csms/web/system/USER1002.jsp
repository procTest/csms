<%@ page import="com.csms.entity.User" %><%--
  Created by IntelliJ IDEA.
  User: zhuxiaolei
  Date: 2017/6/3
  Time: 18:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<HTML>
<head>
    <META HTTP-EQUIV="content-type" CONTENT="text/html; charset=gb2312">
    <META HTTP-EQUIV="content-script-type" CONTENT="text/JavaScript">
    <META HTTP-EQUIV="content-style-type" CONTENT="text/css">
    <title>用户详细</title>
    <link rel="stylesheet" href="../css/cjpm.css">

</head>

<SCRIPT LANGUAGE="javaScript">
    <!--
    function save(obj) {
        if (obj.password.value == "") {
            alert("密码不能为空");
            return false;
        }
        alert("保存成功！");
    }

    function back() {
        window.location.href="/csms/system/UserListServlet";
    }

    -->
</SCRIPT>
<BODY BACKGROUND="../image/bg.gif">
<%
    User user = (User) session.getAttribute("user");
%>
<FORM NAME="idFrmMain" ID="idmig0102" METHOD="POST" ACTION="/csms/system/UserModifyInfoServlet?id=<%=user.getId()%>" ONSUBMIT="return save(this)">
    <table border="0" width="100%" id="table1" cellspacing="0" cellpadding="2" bgcolor="gray">
        <tr>
            <td class="headerbar61" width="15%" colspan="1">用户详细</td>
            <td class="headerbar63" width="85%" colspan="1">
                <input type="submit" name="save70302002" value=" 保 存 ">&nbsp;
                <input type="button" name="back70302003" onClick="javascript:back()" value=" 返 回 ">
            </td>
        </tr>
    </table>

    <table border=0 cellspacing=0 cellpadding=2 width="100%" height="5">
        <tr>
            <td></td>
        </tr>
    </table>

    <table border="0" width="100%" id="table1" cellspacing="1" cellpadding="2" bgcolor="gray">

        <tr>
            <td class="textbar81" width="15%" colspan="1">用户登录号</td>
            <td class="textbar01" width="85%" colspan="1"><input name="userAccount" value="<%=user.getUserAccount()%>"
                                                                 size="20" disabled="true"></td>
        </tr>
        <tr>
            <td class="textbar81" width="15%" colspan="1">用户姓名</td>
            <td class="textbar01" width="85%" colspan="1"><input name="userName" value="<%=user.getUserName()%>"
                                                                 size="20"></td>
        </tr>
        <tr>
            <td class="textbar81" width="15%" colspan="1">用户密码</td>
            <td class="textbar01" width="85%" colspan="1"><input type="password" name="password"
                                                                 value="<%=user.getPassword()%>"
                                                                 size="21"></td>
        </tr>
        <tr>
            <td class="textbar81" width="15%" colspan="1">用户简介</td>
            <td class="textbar01" width="85%" colspan="1"><textarea name="profile"
                                                                    style="width:352px"><%=user.getUserProfile()%></textarea>
            </td>
        </tr>


    </table>

    <table border=0 cellspacing=0 cellpadding=0 width="100%" height=5>
        <tr>
            <td></td>
        </tr>
    </table>
</FORM>
</BODY>
</html>




