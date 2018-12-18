window.addEventListener("load", function(){
	
//	-----ckeditor 적용 작업-----------
	
	var editor = CKEDITOR.instances.editor1;
	
    if (editor) {
        editor.destroy(true); 
    }   
  
    
    
    CKEDITOR.replace('editor1', {height: '600'});
});


















