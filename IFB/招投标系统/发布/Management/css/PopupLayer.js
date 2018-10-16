var isIe = (document.all) ? true : false;
//弹出招标公告
function Populayer(proid) {
    closeWindow();
    var bWidth = parseInt(document.documentElement.scrollWidth);
    var bHeight = parseInt(document.documentElement.scrollHeight);
    var back = document.createElement("div");
    back.id = "back";
    var styleStr = "top:0px;left:0px;position:absolute;background:#666;width:" + bWidth + "px;height:" + bHeight + "px;";
    styleStr += (isIe) ? "filter:alpha(opacity=40);" : "opacity:0.40;";
    back.style.cssText = styleStr;
    document.body.appendChild(back);
    var mesW = document.createElement("div");
    mesW.id = "mesWindow";
    mesW.className = "mesWindow";
    mesW.innerHTML = "<div class='mesWindowTop'><table width='100%' height='100%'><tr><td style=' width:85%;color:#1044BA;font-size:15px; 'align='center'> 公告详情 </td><td align='right'><input type='button' onclick='closeWindow();' title='关闭窗口' class='close' value='关闭' /></td></tr></table></div><div class='mesWindowContent' id='mesWindowContent'><iframe src='../../ProjectDetail.aspx?proid=" + proid + "' frameborder='0'  width='830px' height='380px'></iframe></div><div class='mesWindowBottom'></div>";
    styleStr = "top:5px;left:10%;position:absolute";
    mesW.style.cssText = styleStr;
    document.body.appendChild(mesW);
}
//弹出中标公告
function PopulayerPulic(proid) {

    closeWindow();

    var bWidth = parseInt(document.documentElement.scrollWidth);
    var bHeight = parseInt(document.documentElement.scrollHeight);
    var back = document.createElement("div");
    back.id = "back";
    var styleStr = "top:0px;left:0px;position:absolute;background:#666;width:" + bWidth + "px;height:" + bHeight + "px;";
    styleStr += (isIe) ? "filter:alpha(opacity=40);" : "opacity:0.40;";
    back.style.cssText = styleStr;
    document.body.appendChild(back);
    var mesW = document.createElement("div");
    mesW.id = "mesWindow";
    mesW.className = "mesWindow";
    mesW.innerHTML = "<div class='mesWindowTop'><table width='100%' height='100%'><tr><td style=' width:85%;color:#1044BA;font-size:15px; 'align='center'> 中标公告 </td><td align='right'><input type='button' onclick='closeWindow();' title='关闭窗口' class='close' value='关闭' /></td></tr></table></div><div class='mesWindowContent' id='mesWindowContent'><iframe src='../../Publicity.aspx?proid=" + proid + "' frameborder='0'  width='830px' height='380px'></iframe></div><div class='mesWindowBottom'></div>";
    styleStr = "top:5px;left:10%;position:absolute";
    mesW.style.cssText = styleStr;
    document.body.appendChild(mesW);
}
//关闭窗口
function closeWindow() {
    if (document.getElementById('back') != null) {
        document.getElementById('back').parentNode.removeChild(document.getElementById('back'));
    }
    if (document.getElementById('mesWindow') != null) {
        document.getElementById('mesWindow').parentNode.removeChild(document.getElementById('mesWindow'));
    }
}