var showError = document.getElementById("showError");
function checkLogin() {
	if(checkUsername() && checkPassword()) {
		document.logined.submit();
	} else {
		//登录验证不通过
	}
}

function setError(str){
	showError.innerHTML = str;
	showError.style.color = "red";
}

function checkUsername() {
	//验证用户名：1、不允许为空  2、字母数字_组成，不小于八位   正则表达式
	var reg1 = /^[1][0-9]{9,}$/;
	var reg2 = /^[_a-z0-9]+@([_a-z0-9]+\.)+[a-z0-9]{2,3}$/;
	var username = document.getElementsByName("client_name")[0]
	if(!reg1.test(username)||!reg2.test(username))
	{
		
			setError("用户账号格式不正确");
			/*alert("用户名格式不正确")*/
			return false;
		}else{
			return true;
		}

}

function checkPassword() {
	//验证密码
	var pwd = document.getElementsByName("login_password")[0].value;
	if(pwd == null || pwd == "") {
		setError("密码不能为空")
		return false;
	} else {
		return true;
	}
}