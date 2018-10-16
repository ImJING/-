﻿function tick() {
    var hours, minutes, seconds, xfile;
    var intHours, intMinutes, intSeconds;
    var today;
    today = new Date();
    intHours = today.getHours();
    intMinutes = today.getMinutes();
    intSeconds = today.getSeconds();
    if (intHours == 0) {
        hours = "12:";
        xfile = "当前时间： 上午 ";
    } else if (intHours < 12) {
        hours = intHours + ":";
        xfile = "当前时间： 上午 ";
    } else if (intHours == 12) {
        hours = "12:";
        xfile = "当前时间：下午 ";
    } else {
        intHours = intHours - 12
        hours = intHours + ":";
        xfile = "当前时间：下午 ";
    }
    if (intMinutes < 10) {
        minutes = "0" + intMinutes + ":";
    } else {
        minutes = intMinutes + ":";
    }
    if (intSeconds < 10) {
        seconds = "0" + intSeconds + " ";
    } else {
        seconds = intSeconds + " ";
    }
    timeString = xfile + hours + minutes + seconds;
    Clock.innerHTML = timeString;
    window.setTimeout("tick();", 100);
}
window.onload = tick;