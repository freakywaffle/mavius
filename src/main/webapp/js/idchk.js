/*window.addEventListner("click", function(){
	
	var idchk = document.querySelector("#idchk");
	var btnDuplCheck = idchk.querySelector('input[name="dupl-check"]');
	var txtUid = idchk.querySelector('input[name="uid"]');

	btnDuplCheck.onclick = function(){
		
		alert("중복체크 클릭");
		console.log(btnDuplChek);
	};

});*/

/*function id_chk(){
	
	var idchk = document.querySelector("#idchk");
	var btnDuplCheck = idchk.querySelector('input[name="dupl-check"]');
	var txtUid = idchk.querySelector('input[name="uid"]');

	btnDuplCheck.onclick = function(){
		
		alert("중복체크 클릭");
		console.log(btnDuplChek);
	};

};*/

function joinCheck(obj){
	if(!obj.uid.value || obj.uid.value.trim().length == 0){
		alert("아이디가 입력되지 않았네요");
		obj.uid.value="";
		obj.uid.focus();
		return false;
	}
	if(!obj.unick.value || obj.unick.trim().length == 0){
		alert("비밀번호 입력해주세요");
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
}