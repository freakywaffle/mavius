window.addEventListener("load", function(){
	
//	-----ckeditor 적용 작업-----------
	
	var editor = CKEDITOR.instances.editor1;
	var editor2 = CKEDITOR.instances.editor2;
    if (editor) {
        editor.destroy(true); 
    }   
    if (editor2) {
    	editor2.destroy(true); 
    }
    
    
    CKEDITOR.replace('editor1', {height: '600'});
    CKEDITOR.replace('editor2', {height: '550'});

//    ------modal 띄우기 ----------------
	var modalBtns = document.querySelectorAll(".modalBtn");
	
	var modalSave = document.querySelector("#modalSave");	
	
	for (var i = 0; i < modalBtns.length; i++) {
		modalBtns[i].onclick = function(){
			$("#regModal").modal("show");
			CKEDITOR.instances.editor2.setData(CKEDITOR.instances.editor1.getData());
		};
	}
//	
//	modalBtn.onclick = function(){
//		$("#regModal").modal("show");
//		CKEDITOR.instances.editor2.setData(CKEDITOR.instances.editor1.getData());
//	};
	modalBtn2.onclick = function(){
		$("#regModal").modal("show");
		CKEDITOR.instances.editor2.setData(CKEDITOR.instances.editor1.getData());
	};
	
	modalSave.onclick = function(){
		$("#regModal").modal("hide");
		CKEDITOR.instances.editor1.setData(CKEDITOR.instances.editor2.getData());
	};
	
	
//	-------아이콘 옵션 선택작업------------
	
	var skillOption1 = document.querySelector(".skill-option1");
	var itemOption1 = document.querySelector(".item-option1");
	var skillOption2List = document.querySelectorAll(".skill-option2");
	var itemOption2 = document.querySelector(".item-option2");

	var skillIdx = null;
	skillOption1.onchange = function(){
		
		if(skillIdx != null){
			skillOption2List[skillIdx-1].classList.add("hidden");
		
			modalBtns[0].classList.add("hidden");
		}
		skillIdx = skillOption1.selectedIndex;
		if(skillIdx == 0){
			skillIdx = null;
			return;
		}
			console.log(skillOption2List[skillIdx-1]);
		skillOption2List[skillIdx-1].classList.remove("hidden");

	};

	var itemIdx = null;

	itemOption1.onchange = function(){
		
		if(itemIdx != null){
			itemOption2.classList.add("hidden");
			modalBtns[1].classList.add("hidden");

		}
		itemIdx = itemOption1.selectedIndex;
		if(itemIdx == 0){
			itemIdx = null;
			return;
		}
		
		itemOption2.classList.remove("hidden");

	};

	

	for (var i = 0; i < skillOption2List.length; i++) {
		
		var option2 = skillOption2List[i];
		option2.onchange = function(e){

			if(e.target.options[e.target.selectedIndex].text != "세부직업")
				modalBtns[0].classList.remove("hidden");
			else	
				modalBtns[0].classList.add("hidden");
			
		}
	}
	
	itemOption2.onchange = function(e){
			
		if(e.target.options[e.target.selectedIndex].text != "직업군")
			modalBtns[1].classList.remove("hidden");
		else	
			modalBtns[1].classList.add("hidden");
		
	}
	
	
	
	// ------파일 업로드 트리거-----------
	
	var inputFile = document.querySelector('input[type="file"]');
	var btnFile = document.querySelector(".set-form-div .btn-info");
	var fileText = document.querySelector('.set-form-div .file-names');
	btnFile.onclick = function(){
		var evt = new MouseEvent("click",{
			"view":window,
			"bubbles":true,
			"cancelable":true
		});
		inputFile.dispatchEvent(evt);
	};

	inputFile.onchange = function(){
		var fileList = inputFile.files;

		for(var i=0; i< fileList.length;i++ ){
			fileText.value += fileList[i].name;
			if(i < fileList.length-1)
				fileText.value += ",";
		}
	}
	
	
	
	
});
//	-----글 등록작업--------------------------------------------------------

function dataSubmit(){
	var regContent = document.querySelector(".set-form-div input[name='content']");
	regContent.value = CKEDITOR.instances.editor1.getData();
	console.log("!!"+regContent.value);
	return true;
};
















