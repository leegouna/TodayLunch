function loginCheck(){ //Login.jsp
	//document.폼객체명.입력양식객체명.속성명
	if(document.loginForm.id.value==""){
		alert("아이디를 입력해 주세요.");
		document.loginForm.id.focus();
		return false; //return false;
	}
	if(document.loginForm.passwd.value==""){
		alert("비밀번호를 입력해 주세요.");
		document.loginForm.passwd.focus();
		return false;
	}
	//document.폼객체명.submit()->전송하라
	document.loginForm.submit();
}
/* Login.jsp
 * <INPUT TYPE="button" value="회원가입" onclick="memberReg()">
 * <INPUT TYPE="button" value="회원가입" 
 *    onclick="document.location='Register.jsp' ">
 */
function memberReg(){  //버튼클릭->특정페이지로 이동
	//response.sendRedirect(~)->자바
	//document.location.href="경로포함해서 이동할 페이지명" (자바스크립트)
	//document.location="Register.jsp"
	document.location="agreement.jsp" //Register.jsp로 이동(동의하면)
}
//개인 회원가입 버튼을 클릭시 호출되는 함수
function inputCheck(){	
	
	if(document.regForm.idcheck.value!="idCheckOK"){
		alert("중복확인 부터 해주세요");
		document.regForm.p_id.focus();
		return;
	}
	
	
	if(document.regForm.p_id.value==""){
		alert("아이디를 입력해 주세요.");
		document.regForm.p_id.focus();
		return;//return false;
	}

	
	if(document.regForm.p_passwd.value==""){
		alert("비밀번호를 입력해 주세요.");
		document.regForm.p_passwd.focus();
		return;
	}

	
	if(document.regForm.p_passwd2.value==""){
		alert("비밀번호를 확인해 주세요");
		document.regForm.p_passwd2.focus();
		return;
	}
	
	
	if(document.regForm.p_email.value==""){
		alert("이메일을 입력해 주세요.");
		document.regForm.p_email.focus();
		return;
	}

	
	if(document.regForm.p_name.value==""){
		alert("이름을 입력해 주세요.");
		document.regForm.p_name.focus();
		return;
	}
	
	if(document.regForm.p_siknum.value==""){
		alert("식권인증번호를 입력해 주세요.");
		document.regForm.p_siknum.focus();
		return;
	}
	
	//중복체크 안할시 경고창
	if(document.regForm.idcheck.value!="idCheckOK"){
		alert("중복확인 부터 해주세요");
		document.regForm.p_id.focus();
		return;
	}
	
	//개인정보수집 동의 &  체크안하면 false 체크하면 true
	if(document.regForm.agree.checked != true){
		alert('개인정보수집에 동의해주세요!')
		return;
	}
	
	//id중복검사 미통과시 경고창
	alert(window.document.getElementById("chkMsg").firstChild.innerHTML);
	if(window.document.getElementById("chkMsg").firstChild.innerHTML =='사용불가'){		
		alert("[경고] 중복검사 미통과시 회원가입이 불가능합니다!!")
		return;
	}
	
	
	if(document.regForm.p_passwd.value != document.regForm.p_passwd2.value){
		alert("비밀번호가 일치하지 않습니다.");
		document.regForm.p_passwd2.focus();
		return;
	}
	
	else{
		$('#shoppingcart1').modal();
		return true;
	}//주의! 이 밑에 다른 구문쓰면 실행안됨 else는 모달을띄우고 끝내버리니까!
		
	
}//inputcheck()



//식당 회원가입시 호출함수
function inputCheck2(){
			
	if(document.regForm.r_id.value==""){
		alert("아이디를 입력해 주세요.");
		document.regForm.r_id.focus();
		return;//return false;
	}
	if(document.regForm.r_passwd.value==""){
		alert("비밀번호를 입력해 주세요.");
		document.regForm.r_passwd.focus();
		return;
	}
	if(document.regForm.r_passwd2.value==""){
		alert("비밀번호를 확인해 주세요");
		document.regForm.r_passwd2.focus();
		return;
	}
	
	if(document.regForm.r_email.value==""){
		alert("이메일을 입력해 주세요.");
		document.regForm.r_email.focus();
		return;
	}
	
	if(document.regForm.r_phone.value==""){
		alert("연락처를 입력해 주세요.");
		document.regForm.r_phone.focus();
		return;
	}
	
	if(document.regForm.r_name.value==""){
		alert("식당이름을 입력해 주세요.");
		document.regForm.r_name.focus();
		return;
	}	
	
	if(document.regForm.r_add.value==""){
		alert("식당주소를 입력해 주세요.");
		document.regForm.r_add.focus();
		return;
	}	
	
	if(document.regForm.r_info.value==""){
		alert("식당소개문을 입력해 주세요.");
		document.regForm.r_info.focus();
		return;
	}
	
	if(document.regForm.namecheck.value!="nameCheckOK"){
		alert("중복확인 부터 해주세요");
		document.regForm.r_id.focus();
		return;
	}
	
	if(document.regForm.idcheck.value!="idCheckOK"){
		alert("중복확인 부터 해주세요");
		document.regForm.r_id.focus();
		return;
	}


	//개인정보수집동의 & 체크안하면 false 체크하면 true
	if(document.regForm.agree.checked != true){
		alert('개인정보수집에 동의해주세요!')
		return;
	}
	
	//id중복검사 미통과시 경고창
	if(window.document.getElementById("chkMsg").firstChild.innerHTML !='사용가능'){
		
		alert("[경고] 중복검사 미통과시 회원가입이 불가능합니다!!")
		return;
	}
	 
	//식당이름 중복검사 미통과시 경고창
	if(window.document.getElementById("chkMsg2").firstChild.innerHTML !='사용가능'){		
		alert("[경고] 중복검사 미통과시 회원가입이 불가능합니다!!")
		return;
	}
	

if(document.regForm.r_passwd.value != document.regForm.r_passwd2.value){
	alert("비밀번호가 일치하지 않습니다.");
	document.regForm.r_passwd2.focus();
	return;
}
$('#shoppingcart1').modal();
return true;

}//inputcheck2()


//중복ID체크 해주는 자바스크립트함수 선언(공용_개인&식당)
function idCheck(id){ //mem_id.value
	
   if(id==""){
	   alert("아이디를 먼저 입력하세요");
	   document.regForm.r_id.focus();
	   document.regForm.p_id.focus();//document.폼객체명.입력양식.함수명(~)
   }else{ //IdCheck.jsp?매개변수명=전달할값->IdCheck.jsp->checkId(id)
	   //IdCheck.jsp를 요청->매개변수를 전달하는 이유->DB에 접근=>id확인
	   url="../Register/IdCheck.jsp?id="+id;
	   window.open(url,"post","left=450,top=150,width=300,height=150");
   }
}





