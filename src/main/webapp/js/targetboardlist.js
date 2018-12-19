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
	
	
	var nextBtn = document.querySelector(".next");
	var prevBtn = document.querySelector(".prev");

	var prevPage = document.querySelector("input[name='prev']");
	var nextPage = document.querySelector("input[name='next']");

	nextBtn.onclick = function(){
		
		hiddenPager.value = nextPage.value;
		form.submit();
		
	}

	prevBtn.onclick = function(){
		
		hiddenPager.value = prevPage.value;
		form.submit();
		
	}


	
});