window.addEventListener("load", function(){
	
	var pager = document.querySelectorAll(".target-pager li");
	var hiddenPager = document.querySelector('input[name="page"]');
	var submitBtn = document.querySelector("form button");
	var form = document.querySelector("form");
	
	for(var i=0; i< pager.length;i++){
		 pager[i].onclick = function(e){
		 	 hiddenPager.value = e.target.innerText;
		 	 form.submit();
		 };
	}
	
	
});