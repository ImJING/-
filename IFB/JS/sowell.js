var sowell = sowell || {};

sowell.config = {
    maxUploadSize: 51200 * 1024
    , maxImageSize: 200
}

sowell.postCallback = function(clientId, eventArg, postData, callback, isSync) {
    if (isSync == undefined)
        isSync = false;
    var data = {
        ClientID: clientId
		, EVENTARGUMENT: eventArg
        , CALLBACK: "true"
    };   
    $.extend(data, postData);
    var postUrl = location.href;
    if (postUrl.indexOf("#") > -1) {
        postUrl = postUrl.substr(0, postUrl.indexOf("#"));
    }  
    $.ajax({
        url: postUrl
		, type: "post"
		, data: data
		, async: !isSync
		, success: function(data) {      
        if (callback) {
            callback(data);           
		    }
		}
		, error: function(request, status) {
		    sowell.traceError(request.responseText);
		}
    });
}

sowell.traceError = function(error) {
    var errContainer = $("<div class=\"error\"><ul></ul></div>");
    var errors = error.split(',');
    for (var i = 0; i < errors.length; i++) {
        var errItem = $("<li>" + errors[i] + "</li>");
        errContainer.append(errItem);
    }

    if (document.getElementById('ErrorMessage') != null) {
        $("#ErrorMessage").append(errContainer);
    }
    else {
        sowell.alert(errContainer.html());
    }
}

sowell.bindData = function(ddl, data, textField, valueField, addEmptyItem) {
    var dataSource = eval(data);
    ddl.options.length = 0;
    if (addEmptyItem) {
        ddl.options[ddl.options.length] = new Option("请选择", "");
    }
    if (dataSource != null) {
        for (var i = 0; i < dataSource.length; i++) {
            var dataItem = dataSource[i];
            ddl.options[ddl.options.length] = new Option(dataItem[textField], dataItem[valueField]);
        }
    }
}

sowell.showDialog = function(href, width, height, isModal, name, showScroll) {
    var scroll = "no";
    if (showScroll) {
        scroll = "yes";
    }
    if (isModal) {
        if (href.indexOf("?") > -1) {
            href = href + "&" + Math.random();
        }
        else {
            href = href + "?" + Math.random();
        }
        window.showModalDialog(href, window, 'help:no;scroll:' + scroll + ';resizable:no;status:0;dialogWidth:' + width + 'px;dialogHeight:' + height + 'px;center:yes');
    }
    else {
        // name 网页名称，可为空;
        var iWidth = width;                          //弹出窗口的宽度;
        var iHeight = height;                        //弹出窗口的高度;
        var iTop = (window.screen.availHeight - 30 - iHeight) / 2;       //获得窗口的垂直位置;
        var iLeft = (window.screen.availWidth - 10 - iWidth) / 2;           //获得窗口的水平位置;
        window.open(href, name, 'height=' + iHeight + ',,innerHeight=' + iHeight + ',width=' + iWidth + ',innerWidth=' + iWidth + ',top=' + iTop + ',left=' + iLeft + ',toolbar=no,menubar=no,scrollbars=' + scroll + ',resizeable=no,location=no,status=no');
    }
    return false;
}

sowell.closeWindow = function() {
    window.opener = null;
    window.open("", "_self");
    window.close();
}

sowell.setCheckState = function(container, isChecked) {
    $("input[type=checkbox]", $(container)).attr("checked", isChecked);
}

sowell.validation = {
    isUsername: function(value) {
        return /^[a-zA-Z0-9_]{6,20}$/.test(value);
    },
    isEmail: function(value) {
        return /^((([a-z]|\d|[!#\$%&'\*\+\-\/=\?\^_`{\|}~]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])+(\.([a-z]|\d|[!#\$%&'\*\+\-\/=\?\^_`{\|}~]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])+)*)|((\x22)((((\x20|\x09)*(\x0d\x0a))?(\x20|\x09)+)?(([\x01-\x08\x0b\x0c\x0e-\x1f\x7f]|\x21|[\x23-\x5b]|[\x5d-\x7e]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(\\([\x01-\x09\x0b\x0c\x0d-\x7f]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF]))))*(((\x20|\x09)*(\x0d\x0a))?(\x20|\x09)+)?(\x22)))@((([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])*([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])))\.)+(([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])*([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])))\.?$/i.test(value);
    },
    isPassword: function(value) {
        return /^[\S]{6,32}$/.test(value);
    },
    isTelephone: function(value) {
        return /(^(\d{11})$|^((\d{7,8})|(\d{4}|\d{3})-(\d{7,8})|(\d{4}|\d{3})-(\d{7,8})-(\d{4}|\d{3}|\d{2}|\d{1})|(\d{7,8})-(\d{4}|\d{3}|\d{2}|\d{1}))$)/.test(value);
    },
    isIdCard: function(value) {
        return (/^(\d{15,15}|\d{18,18}|\d{17,17}x)$/i).test(value);
    },
    isDate: function(value) {
        return /^((((1[6-9]|[2-9]\d)\d{2})-(0?[13578]|1[02])-(0?[1-9]|[12]\d|3[01]))|(((1[6-9]|[2-9]\d)\d{2})-(0?[13456789]|1[012])-(0?[1-9]|[12]\d|30))|(((1[6-9]|[2-9]\d)\d{2})-0?2-(0?[1-9]|1\d|2[0-8]))|(((1[6-9]|[2-9]\d)(0[48]|[2468][048]|[13579][26])|((16|[2468][048]|[3579][26])00))-0?2-29-))$/.test(value)
            || /^((((1[6-9]|[2-9]\d)\d{2})-(0?[13578]|1[02])-(0?[1-9]|[12]\d|3[01]))|(((1[6-9]|[2-9]\d)\d{2})-(0?[13456789]|1[012])-(0?[1-9]|[12]\d|30))|(((1[6-9]|[2-9]\d)\d{2})-0?2-(0?[1-9]|1\d|2[0-8]))|(((1[6-9]|[2-9]\d)(0[48]|[2468][048]|[13579][26])|((16|[2468][048]|[3579][26])00))-0?2-29-)) (20|21|22|23|[0-1]?\d):[0-5]?\d:[0-5]?\d$/.test(value);
    }
}

//表单验证方法
jQuery.extend(jQuery.validator.messages, {
    required: "该字段不允许为空",
    remote: "请修正该字段",
    email: "请输入正确格式的电子邮件",
    url: "请输入合法的网址",
    date: "请输入合法的日期",
    dateISO: "请输入合法的日期 (ISO).",
    number: "请输入合法的数字",
    digits: "只能输入整数",
    creditcard: "请输入合法的信用卡号",
    equalTo: "请再次输入相同的值",
    accept: "请输入拥有合法后缀名的字符串",
    maxlength: jQuery.validator.format("请输入一个长度最多是 {0} 的字符串"),
    minlength: jQuery.validator.format("请输入一个长度最少是 {0} 的字符串"),
    rangelength: jQuery.validator.format("请输入一个长度介于 {0} 和 {1} 之间的字符串"),
    range: jQuery.validator.format("请输入一个介于 {0} 和 {1} 之间的值"),
    max: jQuery.validator.format("请输入一个最大为 {0} 的值"),
    min: jQuery.validator.format("请输入一个最小为 {0} 的值")

    //扩展消息
    , username: "请输入6到20个字符的字母、数字和下划线的组合"
    , datetime: "请输入一个有效日期格式的内容（年-月-日 时:分:秒）"
    , telephone: "电话号码格式 如：15945272400或025-6645763"
});

$.validator.addMethod("username", function(value, element) {
    return sowell.validation.isUsername(value) || sowell.validation.isEmail(value);
});

$.validator.addMethod("datetime", function(value) {
    return sowell.validation.isDate(value);
});
$.validator.addMethod("telephone", function(value) {
    if (value && value != '') {
        return sowell.validation.isTelephone(value);
    }
    return true;
});
$.validator.addMethod("uploadfile", function(value, element) {
    var fileName = value;
    if (fileName == "") {
        return true;
    }
    else {
        var validExt = false;
        var validSize = false;
        var allowExts = $(element).attr("ext");
        if (allowExts) {
            var ext = "," + fileName.substr(fileName.lastIndexOf(".")).toLowerCase() + ",";
            validExt = allowExts.indexOf(ext) > -1;
        }
        else {
            validExt = true;
        }

        //验证文件大小
        var maxSize = sowell.config.maxUploadSize;
        if ($(element).attr("uploadsize")) {
            maxSize = parseInt($(element).attr("uploadsize"), 10);
        }
        if (maxSize > sowell.config.maxUploadSize) {
            maxSize = sowell.config.maxUploadSize;
        }

        var fileSize = 0;
        if (element.files && element.files[0]) {
            fileSize = element.files[0].fileSize;
        }
        else {
            fileSize = -1;
        }

        validSize = fileSize < maxSize;

        return validExt && validSize;
    }
}, "请检查文件类型和文件大小是否正确");

$.validator.addMethod("password", function(value) {
    return sowell.validation.isPassword(value);
}, "密码不符合规范，请输入6-32位字母、数字、特殊字符的组合");

$.validator.addMethod("confirmpass", function(value, element) {
    if (value != $("input[name$=tbPassword]").val()) {
        return false;
    }
    else {
        return true;
    }
}, "确认密码不匹配，请重新输入");

sowell.popup = function(title, source, width, height, options) {
    var dialogContent;
    if (source.indexOf("#") > -1) {
        dialogContent = $(source);
    }
    else {
        dialogContent = $('<div class=\"dialog\">' + source + '</div>');
        $(document).append(dialogContent);
    }
    options = $.extend(options, {
        autoOpen: true
        , title: title
        , width: width
        , height: height
        , open: function(event, ui) {
            var dialog = $(this).parent();
            var formEl = $("#aspnetForm, #form1");
            if (formEl.length > 0) {
                formEl.append(dialog);
            }
        }
    });
    return dialogContent.dialog(options);
}

sowell.getFilePath = function(element) {
    var path = "";

    if (element.files && element.files[0]) {
        path = this.files[0].getAsDataURL();
    }
    else {
        element.select();
        path = document.selection.createRange().text;
        element.blur();
    }

    return path;
}

sowell.setPreview = function(uploadId, imgId, callback) {
    var imgPreview = $("#" + imgId);

    var previewFaker = $("<div></div>");
    if (document.all) {
        imgPreview.parent().append(previewFaker);
        imgPreview.appendTo(previewFaker);
        previewFaker.addClass("none");
        previewFaker.css({
            filter: 'progid:DXImageTransform.Microsoft.AlphaImageLoader(sizingMethod=scale)'
            , width: imgPreview.width()
            , height: imgPreview.height()
            , display: 'inline-block'
        });
    }

    if (imgPreview.attr("src") == "") {
        imgPreview.hide();
        previewFaker.hide();
    }

    $("#" + uploadId).change(function() {
        var filename = this.value;
        if (filename == "") {
            return;
        }
        var ext = filename.substr(filename.lastIndexOf("."));
        if (",.jpg,.jpeg,.gif,.bmp,.png,".indexOf(',' + ext.toLowerCase() + ',') == -1) {
            alert('请选择图片格式的文件');
            imgPreview.hide();
            previewFaker.hide();
            return;
        }
        if (this.files && this.files[0]) {
            imgPreview.attr("src", this.files[0].getAsDataURL());
            imgPreview.show();
        }
        else if (previewFaker[0].filters) {
            this.select();
            var imgSrc = document.selection.createRange().text;
            imgPreview.attr("src", imgSrc).hide();
            previewFaker[0].filters.item('DXImageTransform.Microsoft.AlphaImageLoader').src = imgSrc;
            previewFaker.css("display", "inline-block");
        }

        if (callback) {
            callback(imgPreview);
        }
    });
}

/*重载系统方法*/
sowell.alert = function(message) {
    sowell.popup('警告', message, 380, 230, { buttons: { "确定": function() { $(this).dialog("close"); } } });
}

sowell.cookie = function(name, value, options) {
    if (typeof value != 'undefined') { // name and value given, set cookie
        options = options || {};
        if (value === null) {
            value = '';
            options.expires = -1;
        }
        var expires = '';
        if (options.expires && (typeof options.expires == 'number' || options.expires.toUTCString)) {
            var date;
            if (typeof options.expires == 'number') {
                date = new Date();
                date.setTime(date.getTime() + (options.expires * 24 * 60 * 60 * 1000));
            } else {
                date = options.expires;
            }
            expires = '; expires=' + date.toUTCString(); // use expires attribute, max-age is not supported by IE
        }
        // CAUTION: Needed to parenthesize options.path and options.domain
        // in the following expressions, otherwise they evaluate to undefined
        // in the packed version for some reason...
        var path = options.path ? '; path=' + (options.path) : '';
        var domain = options.domain ? '; domain=' + (options.domain) : '';
        var secure = options.secure ? '; secure' : '';
        document.cookie = [name, '=', encodeURIComponent(value), expires, path, domain, secure].join('');
    } else { // only name given, get cookie
        var cookieValue = null;
        if (document.cookie && document.cookie != '') {
            var cookies = document.cookie.split(';');
            for (var i = 0; i < cookies.length; i++) {
                var cookie = jQuery.trim(cookies[i]);
                // Does this cookie string begin with the name we want?
                if (cookie.substring(0, name.length + 1) == (name + '=')) {
                    cookieValue = decodeURIComponent(cookie.substring(name.length + 1));
                    break;
                }
            }
        }
        return cookieValue;
    }
};

sowell.htmlEncode = function(source) {
    var s = "";
    if (source.length == 0) return "";
    s = source.replace(/&/g, "&gt;");
    s = s.replace(/</g, "&lt;");
    s = s.replace(/>/g, "&gt;");
    s = s.replace(/\'/g, "&#39;");
    s = s.replace(/\"/g, "&quot;");
    s = s.replace(/\n/g, "<br>");
    return s;
}

sowell.htmlDecode = function(source) {
    var s = "";
    if (source.length == 0) return "";
    s = source.replace(/&gt;/g, "&");
    s = s.replace(/&lt;/g, "<");
    s = s.replace(/&gt;/g, ">");
    s = s.replace(/&#39;/g, "\'");
    s = s.replace(/&quot;/g, "\"");
    s = s.replace(/<br>/g, "\n");
    return s;
}

sowell.reload = function() {
    var url = location.href;
    if (url.indexOf("?") > -1) {
        url += "&" + Math.random();
    }
    else {
        url += "?" + Math.random();
    }

    location.href = url;
}

//预加载方法
$(document).ready(function() {
    //绑定弹出层的按钮事件
    $("a.selbutton").click(function() {
        var targetId = $(this).attr("targetid");
        if (!targetId) {
            targetId = '#' + $(this).next().attr('id');
            $(this).attr("targetid", targetId);
        }
        var thisPtr = $(this);
        var options = {
            buttons: {
                "保存": function() {
                    $(this).dialog('close');
                }
            }
                , close: function(event, ui) {
                    var selContent = [];
                    $("input[type=checkbox], input[type=radio]", $(this)).each(function(index, item) {
                        if (item.checked) {
                            var lbl = $(item).next("label");
                            if (lbl.length > 0) {
                                selContent.push($.trim(lbl.html()));
                            }
                        }
                    });

                    if (selContent.length > 0) {
                        thisPtr.text(selContent.join(','));
                    }
                    else {
                        thisPtr.text("请选择");
                    }
                }
        };
        var dialog = sowell.popup($(this).attr("title"), targetId, 700, 400, options);

    }).each(function(index, item) {
        var selContent = [];
        $("input[type=checkbox], input[type=radio]", $(this).next()).each(function(index, item) {
            if (item.checked) {
                var lbl = $(item).next("label");
                if (lbl.length > 0) {
                    selContent.push($.trim(lbl.html()));
                }
            }
        });
        if (selContent.length > 0) {
            $(this).text(selContent.join(','));
        }
        else {
            $(this).text("请选择");
        }
    });
    //检查是否有需要验证的checkboxlist, radiobuttonlist
    $("table[class*=required]").each(function(index, item) {
        var hiddenField = $("<input id=\"" + $(this).attr("id") + "_selvalue\" name=\"" + $(this).attr("id") + "_selvalue\" style=\"display: none\" class=\"required\"/>");
        $(this).after(hiddenField);
        var thisPtr = $(this);

        $("input[type=checkbox], input[type=radio]", $(this)).click(function() {
            var selContent = [];
            $("input[type=checkbox], input[type=radio]", thisPtr).each(function(index, item) {
                if (item.checked) {
                    var lbl = $(item).next("label");
                    if (lbl.length > 0) {
                        selContent.push($.trim(lbl.html()));
                    }
                }
            });
            hiddenField.val(selContent.join(','));
            hiddenField.valid();
        });

        var selContent = [];
        $("input[type=checkbox], input[type=radio]", thisPtr).each(function(index, item) {
            if (item.checked) {
                var lbl = $(item).next("label");
                if (lbl.length > 0) {
                    selContent.push($.trim(lbl.html()));
                }
            }
        });
        hiddenField.val(selContent.join(','));
    });
    $("#aspnetForm, #form1").validate({
        ignore: ".ignore"
        , errorPlacement: function(error, element) {
            if (sowell.errorPlace) {
                sowell.errorPlace(error, element);
            }
            else {
                var lbl = element.next("label");
                if (lbl.length > 0) {
                    lbl.html(error);
                }
                else {
                    lbl = $("<label></label>");
                    element.after(lbl);
                    lbl.html(error);
                }
            }
        }
        , success: function(label) {
            label.removeClass("error").addClass("valid").text("");
        }
    });

    //设置搜索框的显示
    if (location.href.indexOf("search=1") > -1) {
        setTimeout(function() {
            $("#imgshow").click();
        }, 0);
    }

    //表单限制输入
    $("input[type=text][limit]").each(function(index, item) {
        $(item).keyup(function(event) {
            switch (event.keyCode) {
                case 8:
                case 9:
                case 12:
                case 13:
                case 16:
                case 17:
                case 18:
                case 19:
                case 20:
                case 27:
                case 33:
                case 34:
                case 35:
                case 36:
                case 37:
                case 38:
                case 39:
                case 40:
                case 41:
                case 42:
                case 43:
                case 44:
                case 45:
                case 46:
                case 47:
                    return true;
                default:
                    var re = new RegExp($(this).attr("limit"), "gi");
                    $(this).val($(this).val().replace(re, ""));
                    break;
            }
        });
    });

    //select内容加上title属性
    $("select").each(function(index, item) {
        for (var i = 0; i < item.options.length; i++) {
            item.options[i].title = item.options[i].text;
        }
    });
});