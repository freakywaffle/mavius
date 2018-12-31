window.addEventListener("load", function(){
	var regContent = document.querySelector(".set-form-div #hidden");
	
	CKEDITOR.instances.editor1.setData(regContent.innerHTML);
});