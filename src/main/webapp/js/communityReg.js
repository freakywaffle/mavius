window.addEventListener("load", function(){
		
	var editor = CKEDITOR.instances.editor1;
	if (editor) {
        editor.destroy(true); 
    }   
    CKEDITOR.replace('editor1', {height: '600'});
});