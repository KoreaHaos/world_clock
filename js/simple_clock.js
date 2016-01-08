function startTime() {
    var today = new Date();
    var h1 = today.getHours();
    var h2 = (h1 - 11)%24;
    var m = today.getMinutes();
    var s = today.getSeconds();
    m = checkTime(m);
    s = checkTime(s);
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
