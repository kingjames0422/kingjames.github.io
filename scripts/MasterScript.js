var $name = "#txtName"; var $email = "#txtEmail"; var $number = "#txtMobileNum"; var $projName = "#txtProjectName"; var $message = "#txtMessage"

$(document).ready(function () {
    $(".carousel").carousel({
        interval: 1000
    });
});

function sendInquiry() {
    var name = $("#txtName").val();
    var email = $("#txtEmail").val();
    var num = $("#txtMobileNum").val();
    var project = $("#txtProjectName").val();
    var message = $("#txtMessage").val();

    var isFormValid = hasError();

    if (isFormValid) {
        $.ajax({
            type: 'POST',
            url: 'Contact.aspx/submitInquiry',
            data: '{"clientName":"' + name + '", "clientEmail":"' + email + '", "mobileNum":"' + num + '", "projectName":"' + project + '", "inquiryMessage":"' + message + '"}',
            contentType: 'application/json; charset=utf-8',
            dataType: 'json',
            success: function (data) {
                window.alert(data.d);
                $($name).val("");
                $($email).val("");
                $($number).val("");
                $($projName).val("");
                $($message).val("");
            },
            error: function (error) {
                window.alert(error.d);
            }
        });
    }
}

function hasError() {
    var clientName = $("#txtName").val();
    var clientEmail = $("#txtEmail").val();
    var mobileNum = $("#txtMobileNum").val();
    var projectName = $("#txtProjectName").val();
    var inquiryMessage = $("#txtMessage").val();

    var emailPattern = new RegExp(/^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/i);
    var isValid = emailPattern.test(clientEmail);

    if (clientName.length <= 0) {
        $($name).addClass("validateInput");
        $($name).val("");
    }
    if (clientEmail.length <= 0) {
        $($email).addClass("validateInput");
        $($email).val("");
    }
    if (mobileNum.length <= 0) {
        $($number).addClass("validateInput");
        $($number).val("");
    }
    if (projectName.length <= 0) {
        $($projName).addClass("validateInput");
        $($projName).val("");
    }
    if (inquiryMessage.length <= 0) {
        $($message).addClass("validateInput");
        $($message).val("");
    }
    if (!$.isNumeric(mobileNum)) {
       $($number).addClass("validateInput");
       $($number).val("");
    }
    if (!isValid) {
        $($email).addClass("validateInput");
        $($email).val("");
    } 

    if ($("body").find(".validateInput").length) {
        return false;
    } else {
        return true;
    }
}

function removeErrorText(txtID) {
    var txtid = txtID.name;
    switch (txtid) {
        case "txtName":
            if ($($name).hasClass("validateInput")) {
                $($name).removeClass("validateInput");
            }
            break;

        case "txtEmail":
            if ($($email).hasClass("validateInput")) {
                $($email).removeClass("validateInput")
                $($email).attr("placeholder", "Enter Your Email")
            }
            break;

        case "txtMobileNum":
            if ($($number).hasClass("validateInput")) {
                $($number).removeClass("validateInput")
                $($number).attr("placeholder", "Enter Your Mobile Number")
            }
            break;

        case "txtProjectName":
            if ($($projName).hasClass("validateInput")) {
                $($projName).removeClass("validateInput")
            }
            break;

        case "txtMessage":
            if ($($message).hasClass("validateInput")) {
                $($message).removeClass("validateInput")
            }
            break;
    }
}