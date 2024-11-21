let i = 5;
let myin = setInterval(function(){
    if (i > 0){
        console.log (i);
        i = i - 1;
    } else { 
        clearInterval(myin);
        console.log (i);
        location.href = "../index.html";
    }
},1000);