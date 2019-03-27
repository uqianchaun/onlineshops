<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head lang="en">
    <meta charset="UTF-8">
    <title>管理员系统</title>
    <link rel="stylesheet" href="../css1/public.css"/>
    <link rel="stylesheet" href="../css1/style.css"/>
    <script src="../js/time.js"></script>
    <script >
        function judgepassword()
        {
        	var str1=document.getElementsByName("login_password")[0].value;
        	var str2=document.getElementsByName("reNewPassword")[0].value;
           
        	if(str1!=str2)
        		{
        		   
        		   document.getElementById("showError").innerHTML="两次密码不一致";
        		   
        		}
        	else{
        		
        		   document.myform.submit();
        	}
        }
    
    </script>
</head>
<body>
<!--头部-->
    <header class="publicHeader">
        <h1>欢迎来到管理员系统</h1>
        <div class="publicHeaderR">
            <p><span id="hours"></span><span style="color: #fff21b"> Admin</span> , 欢迎你！</p>
            <a href="<%=pageContext.getServletContext().getContextPath() %>/judgelogin/delete.action">退出</a>
        </div>
    </header>
<!--时间-->
    <section class="publicTime">
        <span id="time"></span>
        <a href="#">温馨提示：为了能正常浏览，请使用高版本浏览器！（IE10+）</a>
    </section>
<!--主体内容-->
    <section class="publicMian ">
        <div class="left">
            <h2 class="leftH2"><span class="span1"></span>功能列表 <span></span></h2>
            <nav>
                <ul class="list">
                    <li ><a href="<%=pageContext.getServletContext().getContextPath() %>/jsp/admin_goodsList.jsp">商品信息管理</a></li>
                <li><a href="<%=pageContext.getServletContext().getContextPath() %>/jsp/admin_orderingList.jsp">订单信息管理</a></li>
                <li><a href="<%=pageContext.getServletContext().getContextPath() %>/jsp/admin_userList.jsp">用户信息管理</a></li>
                <li id="active"><a href="<%=pageContext.getServletContext().getContextPath() %>/jsp/admin_password.jsp">密码修改</a></li>
                <li><a href="<%=pageContext.getServletContext().getContextPath() %>/judge/cancel.action">退出系统</a></li>
                </ul>
            </nav>
        </div>
        <div class="right">
            <div class="location">
                <strong>你现在所在的位置是:</strong>
                <span>密码修改页面</span>
            </div>
            <div class="providerAdd">
                <form method="post" name="myform" action="<%=pageContext.getServletContext().getContextPath() %>/user/updateUser.action?sign=0">
                
                    <!--div的class 为error是验证错误，ok是验证成功-->
                    <div >
                    
                        <label for="oldPassword">旧密码：</label>
                        <input type="password" name="login_password2"  />
                        <span><font color="red">${error1 }</font></span>
                    </div>
          
                    <div>
                        <label for="newPassword">新密码：</label>
                        <input type="password" name="login_password"  />
                        
                    </div>
                    <font color="red"> <div id="showError"></div></font>
                    <div>
                        <label for="reNewPassword">确认新密码：</label>
                        <input type="password" name="reNewPassword"  />
                    </div>
                    <div class="providerAddBtn" >
                        <!--<a href="#">保存</a>-->
<%--                         onclick="javascript:judgepassword('<%=pageContext.getServletContext().getContextPath() %>/user/updateUserPswd.action')" --%>
         			   <input type="button" value="修改" onclick="javascript:judgepassword()" >
                    </div>
                    <div class="providerAddBtn">
                        <input type="submit" value="取消" onclick="history.back(-1)"/>
                    </div>
                </form>
            </div>
        </div>
    </section>
    <footer class="footer">
    </footer>
<script src="js/time.js"></script>

</body>
</html>