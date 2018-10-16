var value; //记录读取的session值
var userresult; //记录读取的验证结果
function GetSessionValue() {
    $.ajax({
        type: "get",
        url: "GetSessiovalue.aspx",
        dataType: "text",
        data: { Action: "GetSession" },
        async: false,
        cache: false,
        success: function (sessionValue) {
            value = sessionValue;
        }
    });
}
function SerialCheck(source, arguments) {
    GetSessionValue();
    var code = $("#ctl00_TextBoxCheck").attr("value");
    if (value != null && code != null) {
        if (code.toString().toLowerCase() == value.toString().toLowerCase()) {
            arguments.IsValid = true;
        }
        else {
            $("#ctl00_TextBoxCheck").attr("value", "");
            arguments.IsValid = false;
            $("#imgSerial").attr("src", "Management/Common/VerifyImage.ashx?" + Math.random());
            $("#ctl00_TextBoxCheck").focus();

        }
    }
    else { arguments.IsValid = false; }
}

function GetUserCkeck(uid, pwd) {
    $.ajax({
        type: "get",
        url: "GetSessiovalue.aspx",
        dataType: "text",
        data: { Action: "GetUser", Uid: uid, Pwd: pwd },
        async: false,
        cache: false,
        success: function (sessionValue) {
            userresult = sessionValue;
        }
    });
}
function CheckLogIn(source, arguments) {

    var uid = $("#ctl00_TextBoxLoginName").attr("value");
    var pwd = $("#ctl00_TextBoxLogPwd").attr("value");
    GetUserCkeck(uid, pwd);
    alert(userresult);
    if (userresult != "1") {
        arguments.IsValid = false;
    }
    else {
        arguments.IsValid = true;
    }
}
function checkcss(e) {

    e.style.border = "1px solid #6E7A56";
}
function clearcss(e) {
    e.style.borderWidth = 0;
}