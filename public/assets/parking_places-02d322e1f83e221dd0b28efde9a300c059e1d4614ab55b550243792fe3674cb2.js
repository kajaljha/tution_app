function validatePhone(e){var t=document.getElementById(e).value,n=/^((\+[1-9]{1,4}[ \-]*)|(\([0-9]{2,3}\)[ \-]*)|([0-9]{2,4})[ \-]*)*?[0-9]{3,4}?[ \-]*[0-9]{3,4}?$/;return!!n.test(t)}$(".icheck-me").on("ifChecked",function(){$(this).attr("value","true")}),$(".icheck-me").on("ifUnchecked",function(){$(this).attr("value","false")}),$(".icheck-me").iCheck({checkboxClass:"icheckbox_square-orange",increaseArea:"30%"}),$(window).keydown(function(e){if(13==e.keyCode)return e.preventDefault(),!1}),$("#txtPhone").blur(function(){validatePhone("txtPhone")?($("#spnPhoneStatus").html("Valid"),$("#spnPhoneStatus").css("color","green")):($("#spnPhoneStatus").html("Invalid"),$("#spnPhoneStatus").css("color","red"))}),$(".timepicker").clockpicker({autoclose:!0,placement:"top",twelvehour:!0});