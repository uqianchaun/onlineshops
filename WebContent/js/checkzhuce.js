var showError = document.getElementById("showError");
function checkzhuce(){
	if(checkpwd()&&checkou())
	{
		
		document.add.submit();
	}else{
		
	}
}

function setError(str){
	showError.innerHTML = str;
	showError.style.color = "red";
}

function checkjine(){
	var pwd = document.getElementsByName("client_money")[1].value;
	var reg = /^([1-9]\d{0,9}|0)([.]?|(\.\d{1,2})?)$/;
	if(pwd == null || pwd == "")
		{
			setError("充值金額不能為空");
		}else if(!reg.test(pwd)){
			setError("充值格式不對");
		}else{
			document.tee.submit();
		}
}

function checkpwd(){
	var pwd = document.getElementsByName("login_id")[0].value;
	var reg1 = /^[1][0-9]{9,}$/;
	var reg2 = /^[_a-z0-9]+@([_a-z0-9]+\.)+[a-z0-9]{2,3}$/;
	if(pwd == null || pwd == "")
	{
		setError("账号不能为空");
		/*alert("用户名不能为空");*/
		return false;
	}else if(!reg1.test(pwd))
	{
		
		setError("用户账号格式不正确");
		/*alert("用户名格式不正确")*/
		return false;
	}else{
		return true;
	}
}

function checkou1(){
	var psd1 = document.getElementsByName("login_password")[0].value;
	var psd2 = document.getElementsByName("Confirm_Password")[0].value;
	
	if(psd1 != psd2){
		/*alert("密码不能为空");*/
//		alert("确认密码与密码不一致");
		setError("确认密码与密码不一致");
		}else{
			
		document.att.submit();
	}
}


function checktel() {
	//验证用户名：1、不允许为空  2、字母数字_组成，不小于八位   正则表达式
	var reg1 = /^[1][0-9]{9,}$/;
	var username = document.getElementsByName("client_tel")[0].value;
	if(!reg1.test(username)) {
		setError("联系方式格式不正确");
	}else {
		document.dff.submit();
	}

}

function checkou(){
	var psd1 = document.getElementsByName("login_password")[0].value;
	var psd2 = document.getElementsByName("Confirm_Password")[0].value;
	if(psd1 == null || psd1 == ""){
		/*alert("密码不能为空");*/
		setError("密码不能为空");
		return false;
	}else if(psd2 == null || psd2 == ""){
		/*alert("确认密码不能为空");*/
		setError("确认密码不能为空");
		return false;
	}else if(psd1 != psd2){
		/*alert("确认密码与密码不一致");*/
		setError("确认密码与密码不一致");
		return false;
	}else{
		return true;
	}
}

function checkkk(){
	var kk = document.getElementsByName("client_rename")[0].value;
	var reg3 = /^[a-zA-Z]{1}([a-zA-Z0-9]|[._]){4,19}$/;
/*	var reg3 = /^\w{8,}$/;*/
	if(kk == null || kk == ""){
		/*alert("姓名不能为空");*/
		setError("姓名不能为空");
		return false;
	}else if(!reg3.test(kk)){
		/*alert("姓名格式不正确");*/
		setError("姓名格式不正确");
		return false;
	}else{
		return true;
	}
}
