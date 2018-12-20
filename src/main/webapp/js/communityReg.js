// window.addEventListener("load", function(){
	
// //	-----ckeditor 적용 작업-----------
	
// 	var editor = CKEDITOR.instances.editor1;
	
//     if (editor) {
//         editor.destroy(true); 
//     }   
  
    
    
//     CKEDITOR.replace('editor1', {height: '600'});
// });

// function dataSubmit(){
// 	var regContent = document.querySelector(".set-form-div input[type='hidden']");
// 	regContent.value = CKEDITOR.instances.editor1.getData();
// 	return true;
// };




window.addEventListener("load", function(){
	
    //	-----ckeditor 적용 작업-----------
        
        var editor = CKEDITOR.instances.editor1;
     
        if (editor) {
            editor.destroy(true); 
        }   
    
        
        CKEDITOR.replace('editor1', {height: '600'});
        CKEDITOR.editorConfig = function( config ) {
            config.enterMode = CKEDITOR.ENTER_BR

        };
    
    //    ------modal 띄우기 ----------------
      
    //	-----글 등록작업--------------------------------------------------------
});   
    function dataSubmit(){
        var regContent = document.querySelector(".set-form-div input[type='hidden']");
        regContent.value = CKEDITOR.instances.editor1.getData();
        return true;
    };
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    











