window.addEventListener("load", function(){
		
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
	
	
	var skillOption1 = document.querySelector(".skill-option1");
	var skillOption2List = document.querySelectorAll(".skill-option2");

	skillOption1.onchange = function(){
		var idx = skillOption1.selectedIndex;
		if(idx == 0)
			return;
		
		
		skillOption2List[idx-1].classList.remove("hidden");

	};

	

	for (var i = 0; i < skillOption2List.length; i++) {
		
		var option2 = skillOption2List[i];
		option2.onchange = function(){
			var selected = option2.options[option2.selectedIndex];
			
			if(selected.text == "세부직업"){
				modalBtns[0].classList.remove("hidden");
				
			}
		}
	}
	
	
});