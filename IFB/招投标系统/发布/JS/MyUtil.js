function _$(objName) { return eval("document.getElementById('" + objName + "')"); }
function _s() {
    // 创建对象
    var creatediv = function() {
        var divobj = document.createElement("div");
        divobj.id = "_option";

        //divobj.style.width = "130px";
        divobj.style.width = (textSize(maxLengthHtml) + 32) + "px";
        divobj.style.border = "1px solid #666";
        divobj.style.borderTopWidth = "0px";
        divobj.style.position = "absolute";
        divobj.style.backgroundColor = "white";
        divobj.style.clear = "left";
        divobj.innerHTML = innerHtml;
        document.getElementById("div1").appendChild(divobj);

        var listCount = maxItemCount;   // 列表可显示多少项
        var listHeight = 15; // 每一项的高度 (px)
        if (_$("_option").firstChild.childNodes.length > listCount) _$("_option").firstChild.style.height = "" + parseInt(listCount * listHeight, 10) + "px";
        _$("s").setAttribute("className", "close");

        // 选中当前已选中项
        var s = _$("s").value;
        for (var i = 0; i < _$("_option").firstChild.childNodes.length; i++) {
            var reg = new RegExp("　", "g"); //创建正则RegExp对象
            if (s == _$("_option").firstChild.childNodes[i].innerHTML.replace(reg, "")) {
                _$("_option").firstChild.childNodes[i].style.backgroundColor = "#0065CA";
                _$("_option").firstChild.scrollTop = i * listHeight;
                break;
            }
        }
    }

    // 删除对象
    var closediv = function() {
        if (_$("_option")) {
            var _option = _$("_option");
            document.getElementById("div1").removeChild(_option);

            _$("s").setAttribute("className", "open");
        }
    }

    // 鼠标移动后使项背景变色
    _mouse = function(obj, act) {
        obj.style.backgroundColor = act == "over" ? "#0065CA" : "white";
    }

    // 单击取消下拉框
    document.onclick = function(e) {
        var event = document.all ? window.event : e;
        var srcelement = event.target ? event.target : event.srcElement;
        if (srcelement.id != "s") closediv();
    }

    // 选择
    sel = function(obj) {
        var _opt;
        if (typeof obj.textContent != "undefined")
            _opt = obj.textContent;
        else _opt = obj.innerText;
        var reg = new RegExp("　", "g"); //创建正则RegExp对象   
        _$("s").value = _opt.replace(reg, "");
        _$(hdnText).value = _opt.replace(reg, "");
        _$(hdnId).value = obj.id;
        closediv();
    }

    // 初始化
    {
        if (enable == "True") {
            if (_$("_option") == null) creatediv();
            else closediv();
        }
    }
}

$(function() {
    if (typeof hdnfSelectText != "undefined") {
        _$("s").value = hdnfSelectText = "" ? (_$(hdnText).value == "" ? (defaultSelectText == "" ? defaultText : defaultSelectText) : _$(hdnText).value) : hdnfSelectText;
    }
    else {
        _$("s").value = _$(hdnText).value == "" ? (defaultSelectText == "" ? defaultText : defaultSelectText) : _$(hdnText).value;
    }
    _$("s").style.width = (textSize(maxLengthHtml) + 30) + "px";
})

function textSize(text) {
    var span = document.createElement("span");
    var width = span.offsetWidth;
    span.style.visibility = "hidden";
    document.body.appendChild(span);
    if (typeof span.textContent != "undefined")
        span.textContent = text;
    else span.innerText = text;
    width = span.offsetWidth - width;
    span.parentNode.removeChild(span);
    return parseInt(width);
}
