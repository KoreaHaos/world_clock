function startTime() {

    var callers_time = new Date();
    var callers_time_string = callers_time.toLocaleString();
    var utc_time_string = callers_time.toUTCString();
//    var today = new Date();

    document.getElementById('algo_data').innerHTML =
                "<br>Data, Data, Data!<br>" +
                "<br>var callers_time = " + callers_time +
                "<br>var callers_time_string = " + callers_time_string +
                "<br>var utc_time_string = " + utc_time_string +
                "<br>"
}
    


/*
    var h = today.getHours();
    var m = today.getMinutes();
    var s = today.getSeconds();
    m = checkTime(m);
    s = checkTime(s);

    var h1 = today.getHours();
    var h2 = Math.abs((h1 - 7)%24);


    document.getElementById('algo_data').innerHTML 
                = "<br>Data, Data, Data!<br>" +
                "<br>today = " + today +  
                "<br>today.getTimezoneOffset()/60 = " + today.getTimezoneOffset()/60 +  
                "<br>today = " + today +  
                "<br>h = " + h +  
                "<br>m = " + m +  
                "<br>s = " + s +
                "<br>"

    document.getElementById('cur_loc_time').innerHTML = "Current Location<br> Time = " + h1 + ":" + m + ":" + s;
    document.getElementById('2nd_loc_time').innerHTML = "Second Location<br> Time = " + h2 + ":" + m + ":" + s;
    var t = setTimeout(startTime, 500);
}

function checkTime(i) {
    if (i < 10) {
        i = "0" + i
    }; // add zero in front of numbers < 10
    return i;
}
*/
