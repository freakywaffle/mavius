window.addEventListener("load", function(){
    
    
    var replyBtn = document.querySelector("input[name='submit']");

    var hiddenNo = document.querySelector("input[name='no']");
    var ta = document.querySelector("textarea");
    
    var replySection = document.querySelector(".target-replys");
    
    var detailReplyPager = document.querySelector(".detail-reply-pager");
    var replypager = detailReplyPager.querySelector(".inline-list");

    replypager.addEventListener("click",function(e){
       
        alert(e.target.innerText);
        var obj = new Object();

        obj.no = hiddenNo.value;
        obj.page = e.target.innerText;

        var jsonData = JSON.stringify(obj);

        var request = new XMLHttpRequest();
			request.open("POST", "/reply-pager", true);
		
			request.onload = function(){
                returnData = JSON.parse(request.responseText);     
                   
                print(returnData);
               
			}
			request.send(jsonData);
    });
    
    var prev = detailReplyPager.querySelector(".prev");
    var next = detailReplyPager.querySelector(".next");

    prev.addEventListener("click", function(e){
        var hiddenPrev = detailReplyPager.querySelector("input[name='prev']");
        alert(hiddenPrev.value);
        var obj = new Object();

        obj.no = hiddenNo.value;
        obj.page = hiddenPrev.value;

        var jsonData = JSON.stringify(obj);

        var request = new XMLHttpRequest();
			request.open("POST", "/reply-pager", true);
		
			request.onload = function(){
                returnData = JSON.parse(request.responseText);     
                   
                print(returnData);
               
			}
			request.send(jsonData);
    });

    next.addEventListener("click", function(e){
        
        var hiddenNext = detailReplyPager.querySelector("input[name='next']");
        var obj = new Object();

        obj.no = hiddenNo.value;
        obj.page = hiddenNext.value;

        var jsonData = JSON.stringify(obj);

        var request = new XMLHttpRequest();
			request.open("POST", "/reply-pager", true);
		
			request.onload = function(){
                returnData = JSON.parse(request.responseText);     
                   
                print(returnData);
               
			}
			request.send(jsonData);
    });



    var print = function(json){

        var replyCnt = json.rowCnt;
        var replyList = json.list;
        var replyPager = json.pager;
        

        replySection.innerHTML = '<h1>COMMENTS&nbsp;<span>'+replyCnt +'</span></h1>';
        for(var i=0;i<replyList.length;i++){
            var div = document.createElement("DIV");
            div.classList.add("detail-reply");
            div.innerHTML += '<div class="reply-writer"><i class="fas fa-user"></i>&nbsp;'+replyList[i].writerId+ '</div>'
                    +'<div class="write-time"><i class="far fa-clock"></i>&nbsp;'+replyList[i].regDate+ '</div>'
                    +'<div class="reply-text">'+replyList[i].content +'</div>'
                    +'<div class="report"><a href="#">신고</a></div>';

            replySection.appendChild(div);

        }
        detailReplyPager.innerHTML = '<h1 class="hidden">페이저</h1>';  
        var prevP = document.createElement("P");
        prevP.classList.add("inline");
        prevP.classList.add("prev");
        
        if(replyPager.startPage-replyPager.pagerCnt <= 0)
            prevP.innerHTML += '<i class="fas fa-caret-left hidden"></i>';    
        else
            prevP.innerHTML += '<i class="fas fa-caret-left"></i>';
        prevP.innerHTML += '<input type="hidden" value="'+(replyPager.startPage-replyPager.pagerCnt)+'" name="prev"/>';
        
        var ul = document.createElement("UL");
        ul.classList.add("inline-list");
        for(var i=replyPager.startPage; i<=replyPager.endPage; i++){
           
            if(i == replyPager.page)
                ul.innerHTML += '<li class="font-bold underline"><a class="page">'+i+'</a></li>';
            else
                ul.innerHTML += '<li><a class="page">'+i+'</a></li>';
            
        }
        var nextP = document.createElement("P");
        nextP.classList.add("inline");
        nextP.classList.add("next");

        
        if(replyPager.endPage == replyPager.maxPage)
            nextP.innerHTML += '<i class="fas fa-caret-right hidden"></i>';    
        else
            nextP.innerHTML += '<i class="fas fa-caret-right"></i>';

        nextP.innerHTML += '<input type="hidden" value="'+(replyPager.endPage+1)+'" name="next"/>';

        detailReplyPager.appendChild(prevP);
        detailReplyPager.appendChild(ul);
        detailReplyPager.appendChild(nextP);

        alert("다썻다");

        replypager = detailReplyPager.querySelector(".inline-list");

        replypager.addEventListener("click",function(e){
        
            alert(e.target.innerText);
            var obj = new Object();

            obj.no = hiddenNo.value;
            obj.page = e.target.innerText;

            var jsonData = JSON.stringify(obj);

            var request = new XMLHttpRequest();
                request.open("POST", "/reply-pager", true);
            
                request.onload = function(){
                    returnData = JSON.parse(request.responseText);     
                    
                    print(returnData);
                
                }
                request.send(jsonData);
        });



        prev = detailReplyPager.querySelector(".prev");
        next = detailReplyPager.querySelector(".next");
        prev.addEventListener("click", function(e){
            var hiddenPrev = detailReplyPager.querySelector("input[name='prev']");
            alert(hiddenPrev.value);
            var obj = new Object();
    
            obj.no = hiddenNo.value;
            obj.page = hiddenPrev.value;
    
            var jsonData = JSON.stringify(obj);
    
            var request = new XMLHttpRequest();
                request.open("POST", "/reply-pager", true);
            
                request.onload = function(){
                    returnData = JSON.parse(request.responseText);     
                       
                    print(returnData);
                   
                }
                request.send(jsonData);
        });
    
        next.addEventListener("click", function(e){
            
            var hiddenNext = detailReplyPager.querySelector("input[name='next']");
            var obj = new Object();
    
            obj.no = hiddenNo.value;
            obj.page = hiddenNext.value;
    
            var jsonData = JSON.stringify(obj);
    
            var request = new XMLHttpRequest();
                request.open("POST", "/reply-pager", true);
            
                request.onload = function(){
                    returnData = JSON.parse(request.responseText);     
                       
                    print(returnData);
                   
                }
                request.send(jsonData);
        });
    };


    var returnData = null;
    
    replyBtn.onclick = function(){
    	
    	var obj = new Object();

        obj.no = hiddenNo.value;
        obj.content = ta.value;
        
        
        var jsonData = JSON.stringify(obj);
        
    	
    	
        var request = new XMLHttpRequest();
			request.open("POST", "/reply", true);
		
			request.onload = function(){
                returnData = JSON.parse(request.responseText);              
                print(returnData);
                
			}
			request.send(jsonData);
    };

   
});    