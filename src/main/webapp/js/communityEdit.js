window.addEventListener("load", function(){
	
//	-----ckeditor 적용 작업-----------
    
    var title = document.querySelector("")








	var editor = CKEDITOR.instances.editor1;
	
    if (editor) {
        editor.destroy(true); 
    }   
  
    
    
    CKEDITOR.replace('editor1', {height: '600'});
});

function dataSubmit(){
	var regContent = document.querySelector(".set-form-div input[type='hidden']");
	regContent.value = CKEDITOR.instances.editor1.getData();
	return true;
};
















