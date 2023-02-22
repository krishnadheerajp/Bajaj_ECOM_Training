
function changeImg(source,number,color,cdids){
    document.getElementById("big-img").src=source;
    document.getElementById("car-number").innerHTML=number;
    let url=document.getElementById("booking_url").href;
    url=url.replace(url.split("?")[1],`cdid=${cdids}`);
    document.getElementById("booking_url").href=url;
}

function calculatePrice(price,discount){
    let st_dt=document.getElementById("start_date").value;
    let end_dt=document.getElementById("end_date").value;
    if(st_dt!=""){
        let days=(new Date(end_dt)-new Date(st_dt))/86400000;
        if(days<0)  alert("Start Date cannot be greater than end date");
        if(days==0) days=1;
        let finalamount=(price*days);
        let disc=(discount*finalamount)/100;
        finalamount=finalamount-disc;
        console.log(finalamount);
        document.getElementById("famt").innerText=finalamount;
    }
    else{
        alert("Start Date Cannot be empty");
    }

}