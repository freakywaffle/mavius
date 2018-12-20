function id_chk(){
	
	var idchk = document.querySelector("#idchk");
	var btnDuplCheck = idchk.querySelector('input[name="dupl-check"]');
	var txtUid = idchk.querySelector('input[name="uid"]');

	btnDuplCheck.onclick = function(){
		
		alert("중복체크 클릭");
		console.log(btnDuplChek);
	};

};
// 회원가입창 아이디 입력란 값 가져오기
function pValue(){
	document.getElementById("userId").value = 
			opener.document.userInfo.uid.value;
}

var httpRequest= null;
//httpRequest 객체 생성
function getXMLHttpRequest(){
	var httpRequest = null;

	if(window.ActiveXObject){
		try{
			httpRequest = new ActiveXObject("Msxml2.XMLHTTP");    
		} catch(e) {
			try{
				httpRequest = new ActiveXObject("Microsoft.XMLHTTP");
			} catch (e2) { httpRequest = null; }
		}
	}
	else if(window.XMLHttpRequest){
		httpRequest = new window.XMLHttpRequest();
	}
	return httpRequest;    
}

// 중복확인
function idCheck(){
	
	var id = document.getElementById("userId").value;
	console.log(id);
	if(!id) {
		swal({
  		  title: "ㅋㅋ!",
  		  text: "아이디를 입력구하라",
  		  icon: "warning"
		})
      return false;
	} else if((id < "0" || id > "9") 
			&& (id < "A" || id > "Z") 
			&& (id < "a" || id > "z")) {
		swal({
	  		  title: "바보아냐?",
	  		  text: "정상적인 아이디를 사용하라고",
	  		  icon: "error"
			})
			return false;
	} else {
		var param="id=" + id;
		httpRequest = getXMLHttpRequest();
		httpRequest.onreadystatechange = callback;
		httpRequest.open("POST", "/member/idchk", true);    
		httpRequest.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded'); 
		httpRequest.send(param);
	}
}

function callback(){
	if(httpRequest.readyState == 4){
		var reseultText = httpRequest.responseText;
		console.log("resultText : " + reseultText)
		if(reseultText == "true"){
			swal({
				title: "Holy Shit!!!!",
				text: "이미 사용중인 아이디네요!",
				icon: "error"
			});
			document.getElementById("cancelBtn").style.visibility='visible';
			document.getElementById("useBtn").style.visibility='hidden';
			document.getElementById("msg").innerHTML = "";
		} else if (reseultText == "false"){
			swal({
				title: "Good job!",
				text: "쓸만한 아이디에요!",
				icon: "success",
			});
			document.getElementById("cancelBtn").style.visibility='hidden';
			document.getElementById("useBtn").style.visibility='visible';
			document.getElementById("msg").innerHTML = "사용 가능합니다.";
		}
	}
}

//클릭시 부모창으로 값 배달
function sendCheckValue(){
	// 중복체크 결과 idCheck 값에 배달 
	//(부모창에 있는 input type="hidden"에 배달하고 배달되면 중복체크 한것으로 판단.)
	opener.document.userInfo.idDuplication.value = "idCheck";
	// login.jsp의 회원가입 화면 id입력란에 값 배달
	//(현재 중복체크 창에 입력된 아이디를 부모창의 아이디 입력란에 삽입)
	opener.document.userInfo.id.value = document.getElementById("userId").value;
	
	//값 전달 후 중복체크창(idchk.jsp) 아가리닫쳐!!!
	if(opener != null){
		opener.chkForm = null;
		self.close();
	}

}
/*
function joinCheck(obj){
	if(!obj.uid.value || obj.uid.value.trim().length == 0){
		alert("아이디가 입력되지 않았네요");
		obj.uid.value="";
		obj.uid.focus();
		return false;
	}
	if(!obj.unick.value || obj.unick.trim().length == 0){
		alert("닉네임 입력해주세요");
		obj.unick.value="";
		obj.unick.focus();
		return false;
	}
	if(!obj.pwd.value || obj.pwd.trim().length == 0){
		alert("비밀번호 입력해주세요");
		obj.pwd.value="";
		obj.pwd.focus();
		return false;
	}
	
	return true;
}*/