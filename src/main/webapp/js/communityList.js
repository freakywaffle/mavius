/**
 * 
 */
window.addEventListener("load", function(){
	var coordiList = document.querySelector("#coordi-list");
    //var viewList = coordiList.classList.contains("view-list");

    coordiList.onclick=function(e){
        var viewList= e.target.classList.contains("view-list");
        if(viewList){
            console.log("hello");
            var id =viewList.querySelector(".id");
            console.log(id);   
       }
    }

    // for (var i = 0; i < viewList.length; i++) {
    //     var id= viewList[i].classList.contains("id");
    //     console.log(id);
    //         viewList[i].onclick=function(e){
    //         //alert("hello");
    //         var request = new XMLHttpRequest();
    //         request.open("get", "detail", false);
    //         request.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
    //         request.send("detail?id="+id[i]);//"id=newlec&pwd=111"
    //     };
        
    // };
    
	
});