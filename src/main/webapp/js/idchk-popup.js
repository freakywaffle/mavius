function idchkPopup(){
	
	window.name = "parentForm";
	window.open("../member/idchk", "chkForm", 
			"width=700, height=500, resizable=no, " +
			"scrollbars=no"
			);
}

function inputIdChk(){
    document.userInfo.idDuplication.value ="idUncheck";
}

function checkValue()
{
    var form = document.userInfo;

    if(!form.uid.value){
    	swal({
    		  title: "이런!",
    		  text: "아이디를 입력해야죠!",
    		  icon: "warning"
    	})
        return false;
    }
    
    if(form.idDuplication.value != "idCheck"){
    	swal({
  		  title: "이보시오~",
  		  text: "아이디 중복체크!",
  		  icon: "warning"
    	})
        return false;
    }
    
    if(!form.unick.value){
    	swal({
    		  title: "닉네임~",
    		  text: "닉네임 쓰자고",
    		  icon: "warning"
      	})
        return false;
    }
    
    if(!form.pwd.value){
    	swal({
  		  title: "비밀번호!",
  		  text: "비밀번호 없이 어떻게 회원가입하려고?",
  		  icon: "warning"
    	})
      return false;
    }
    
    // 비밀번호와 비밀번호 확인에 입력된 값이 동일한지 확인
    if(form.pwd.value != form.pwdChk.value ){
    	swal({
    		  title: "똑같이 입력해야지",
    		  text: "으이구~ ㅆ바라",
    		  icon: "info"
      	})
        return false;
    }    
    
}


