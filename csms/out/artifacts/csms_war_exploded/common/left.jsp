<%--
  Created by IntelliJ IDEA.
  User: zhuxiaolei
  Date: 2017/6/3
  Time: 18:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312">
    <title>无标题文档</title>
    <link rel="stylesheet" type="text/css" href="../css/frame.css">
    <script type="text/javascript" src="../js/common.js"></script>
    <script type="text/jscript" language="JavaScript" src="../js/qq_hidemenu.js"></script>
    <script type="text/jscript" language="JavaScript" src="../js/page.js"></script>
</head>


<body nLoad="widgets.ToggleWidget(hideTop2);widgets.ToggleWidget(hideBest);widgets.ToggleWidget(hideBoard);widgets.ToggleWidget(hideSearch);">
<FORM METHOD=POST ACTION="">
    <table width="180" height="100%" border="0" cellpadding="0" cellspacing="0">
        <tr>
            <td valign="top" class="left">
                <table width="98%" border="0" align="center" cellpadding="0" cellspacing="0">
                    <tr>
                        <td height="9"></td>
                    </tr>
                    <tr>
                        <td>
                            <table width="100%" cellspacing="0" cellpadding="0" border="0">
                                <tr>
                                    <td class="left1">
                                        <a id="exp52" title="折叠" href="javascript:widgets.ToggleWidget(hideTop1);"><img
                                                id="exp5" alt="折叠" src="../image/qq_minimize.gif" border="0"></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a
                                            id="exp51" title="折叠"
                                            href="javascript:widgets.ToggleWidget(hideTop1);">辅助管理</a></td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td class="left2">
                            <div id="hideTop1" class="hiderScroll" img="exp5" openAlt="折叠" closedAlt="展开">
                                <table width="100%" border="0" cellspacing="1" cellpadding="0">
                                    <!--begin个导航1-->
                                    <tr>
                                        <td>
                                            <div id="menuDiv2" class="menu"
                                                 onClick="javascript:setClass(menuDiv2);menuGoto('PASSWORD1001.jsp','main');">
                                                &nbsp;&nbsp;&nbsp;<img src="../image/right2.gif">&nbsp;&nbsp;修改密码
                                            </div>
                                        </td>
                                    </tr>
                                    <!--end导航1-->
                                    <tr>
                                        <td>&nbsp;</td>
                                    </tr>
                                </table>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</FORM>
</body>
</html>



