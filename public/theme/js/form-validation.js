var MSGTIMER = 20;
var MSGSPEED = 5;
var MSGOFFSET = 3;
var MSGHIDE = 3;

// build out the divs, set attributes and call the fade function //
function inlineMsg(target,string,autohide)
{
  var msg;
  var msgcontent;
  if(!document.getElementById('msg'))
  {
    msg = document.createElemchkValident('div');
    msg.id = 'msg';
    msgcontent = document.createElement('div');
    msgcontent.id = 'msgcontent';
    document.body.appendChild(msg);
    msg.appendChild(msgcontent);
    msg.style.filter = 'alpha(opacity=0)';
    msg.style.opacity = 0;
    msg.alpha = 0;
  }
  else
  {
    msg = document.getElementById('msg');
    msgcontent = document.getElementById('msgcontent');
  }

  msgcontent.innerHTML = string;
  msg.style.display = 'block';
  var msgheight = msg.offsetHeight;
  var targetdiv = document.getElementById(target);
  targetdiv.focus();
  var targetheight = targetdiv.offsetHeight;
  var targetwidth = targetdiv.offsetWidth;
  var topposition = $(targetdiv).offset().top-15;//topPosition(targetdiv) - ((msgheight - targetheight) / 2);
 // alert(topposition);
  
  //alert(topposition +"=="+ $(targetdiv).offset().top)
  var leftposition = leftPosition(targetdiv) + targetwidth + MSGOFFSET; 
  msg.style.top = topposition + 'px';
  msg.style.left = leftposition + 'px';
  clearInterval(msg.timer);
  msg.timer = setInterval("fadeMsg(1)", MSGTIMER);
  if(!autohide)
  {
    autohide = MSGHIDE;
  }
  window.setTimeout("hideMsg()", (autohide * 1000));
}

// hide the form alert //
function hideMsg(msg)
{
  var msg = document.getElementById('msg');
  if(!msg.timer)
  {
    msg.timer = setInterval("fadeMsg(0)", MSGTIMER);
  }
}



// build out the divs, set attributes and call the fade function //
function inlineMsgFornewsletter(target,string,autohide)
{
  var msg;
  var msgcontent;
  if(!document.getElementById('msg'))
  {
    msg = document.createElement('div');
    msg.id = 'msg';
    msgcontent = document.createElement('div');
    msgcontent.id = 'msgcontent';
    document.body.appendChild(msg);
    msg.appendChild(msgcontent);
    msg.style.filter = 'alpha(opacity=0)';
    msg.style.opacity = 0;
    msg.alpha = 0;
  }
  else
  {
    msg = document.getElementById('msg');
    msgcontent = document.getElementById('msgcontent');
  }

  msgcontent.innerHTML = string;
  msg.style.display = 'block';
  var msgheight = msg.offsetHeight;
  var targetdiv = document.getElementById(target);
  targetdiv.focus();
  var targetheight = targetdiv.offsetHeight;
  var targetwidth = targetdiv.offsetWidth;
  var topposition = ($(targetdiv).offset().top)-10;//topPosition(targetdiv) - ((msgheight - targetheight) / 2);
  //alert(topposition +"=="+ $(targetdiv).offset().top)
  var leftposition = leftPosition(targetdiv) +  50;
  
  
  
  
  msg.style.top = topposition + 'px';
  msg.style.left = leftposition + 'px';
  clearInterval(msg.timer);
  msg.timer = setInterval("fadeMsg(1)", MSGTIMER);
  if(!autohide)
  {
    autohide = MSGHIDE;
  }
  window.setTimeout("hideMsg()", (autohide * 1000));
}

// hide the form alert //
function hideMsg(msg)
{
  var msg = document.getElementById('msg');
  if(!msg.timer)
  {
    msg.timer = setInterval("fadeMsg(0)", MSGTIMER);
  }
}


// face the message box //
function fadeMsg(flag)
{
  if(flag == null)
  {
    flag = 1;
  }

  var msg = document.getElementById('msg');
  var value;
  if(flag == 1)
  {
    value = msg.alpha + MSGSPEED;
  }
  else
  {
    value = msg.alpha - MSGSPEED;
  }

  msg.alpha = value;
  msg.style.opacity = (value / 100);
  msg.style.filter = 'alpha(opacity=' + value + ')';
  if(value >= 99)
  {
    clearInterval(msg.timer);
    msg.timer = null;
  }
  else if(value <= 1)
  {
    msg.style.display = "none";
    clearInterval(msg.timer);
  }
}

// calculate the position of the element in relation to the left of the browser //
function leftPosition(target)
{
  var left = 0;
  if(target.offsetParent)
  {
    while(1)
    {
      left += target.offsetLeft;
      if(!target.offsetParent)
      {
        break;
      }
      target = target.offsetParent;
    }
  }
  else if(target.x)
  {
    left += target.x;
  }
  return left;
}

// calculate the position of the element in relation to the top of the browser window //
function topPosition(target)
{
  var top = 0;
  if(target.offsetParent)
  {
    while(1)
    {
      top += target.offsetTop;
      if(!target.offsetParent)
      {
        break;
      }
      target = target.offsetParent;
    }
  }
  else if(target.y)
  {
    top += target.y;
  }
  return top;
}

function validateString(val) {
  return (val.match(/[^a-zA-Z ]/g) == null);
}


function addErrorClass(id,action){
	if(id && action =='add'){
		$('#'+id).attr('style','border:1px solid #ff0000');
	}
	if(id && action =='remove'){
		$('#'+id).removeAttr('style');		
	}
}


function subscribe(){
    var email = $.trim($('#newsletter_subscribe').val());
    var emailRegex = /^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$/;
    if(!email.match(emailRegex)) {  
		errCntr++;     
		inlineMsgFornewsletter('newsletter_subscribe','Please enter a valid email id.',2);
		return false;
	}

}


function checkvalidform(){
			var name = $.trim($('#name').val());
			var email = $.trim($('#email').val());
			var message = $.trim($('#message').val());
			var captchavaluegenerate = $('#captchavaluegenerate').val();
			var captchavalue = $('#captchavalue').val();
			var errCntr = 0;
			var nameRegex =  /^[A-Za-z0-9 ]{1,100}$/;
			var emailRegex = /^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$/;
			var messageRegex = new RegExp(/<\/?\w+((\s+\w+(\s*=\s*(?:".*?"|'.*?'|[^'">\s]+))?)+\s*|\s*)\/?>/gim);
			var phoneRegex =  /^((\+\d{1,3}(-| )?\(?\d\)?(-| )?\d{1,5})|(\(?\d{1,6}\)?))(-| )?(\d{3,4})(-| )?(\d{4})(( x| ext)\d{1,5}){0,1}$/;
			var urlRegex = /^((http|ftp):\/)?\/?([^:\/\s]+)((\/\w+)*\/)([\w\-\.]+\.[^#?\s]+)(#[\w\-]+)?/;	
			var nameRegexOnlyName = /^[a-zA-Z]+(([\'\,\.\- ][a-zA-Z ])?[a-zA-Z]*)*$/;
			
			if(!name.match(nameRegexOnlyName)) {
				inlineMsgFornewsletter('name','Invalid name.',2);
				errCntr++;
				return false;
			}	
			
			if(!email.match(emailRegex)) {  
				errCntr++;     
				inlineMsgFornewsletter('email','Please enter a valid email id.',2);
				return false;
			}
			if(message == ''){
				errCntr++;     
				inlineMsgFornewsletter('message','Please write some message.',2);
				return false;				
			}
			if(captchavalue!=captchavaluegenerate){
				inlineMsgFornewsletter('captchavalue','Invalid captcha code.',2);
				errCntr++;
				return false;				
			}
			var sendnotification = 'N';
			if($('#sendnotification').is(':checked')){
					sendnotification = 'Y';
			}
			
			if(errCntr == 0) {			
				$.ajax({ 
					url: 'sendmail.php', 
					type: "POST",
					cache: false,
					data: "name="+name+"&email="+email+"&message="+message+"&sendnotification="+sendnotification,
					beforeSend:function(){
							$('#messagedisplay').html('<img src="img/loader.gif"+ alt="">');			
					},
					success: function( data, textStatus, jQxhr ){				
						$("#myModal").modal("show");	
						$('#messagedisplay').html('');
						$.trim($('#name').val(''));
						$.trim($('#email').val(''));
						$.trim($('#message').val(''));
						$('#captchavalue').val('');
						$('#sendnotification').removeAttr('checked');
					}, 
					error: function( jqXhr, textStatus, errorThrown ){ 
						console.log( errorThrown ); 
					} 
				});	
			}
			
	return false;	
}



function validate1(){
	var errCntr = 0;
	var nameRegex =  /^[A-Za-z0-9 ]{1,100}$/;
	var emailRegex = /^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$/;
	var messageRegex = new RegExp(/<\/?\w+((\s+\w+(\s*=\s*(?:".*?"|'.*?'|[^'">\s]+))?)+\s*|\s*)\/?>/gim);
	var phoneRegex =  /^((\+\d{1,3}(-| )?\(?\d\)?(-| )?\d{1,5})|(\(?\d{1,6}\)?))(-| )?(\d{3,4})(-| )?(\d{4})(( x| ext)\d{1,5}){0,1}$/;
	var urlRegex = /^((http|ftp):\/)?\/?([^:\/\s]+)((\/\w+)*\/)([\w\-\.]+\.[^#?\s]+)(#[\w\-]+)?/;	
	var nameRegexOnlyName = /^[a-zA-Z]+(([\'\,\.\- ][a-zA-Z ])?[a-zA-Z]*)*$/;
	
	
	var firstname = $.trim($('#firstname').val());
	var lastname = $.trim($('#lastname').val());
	var email = $.trim($('#email').val());
	var zipcode = $.trim($('#zipcode').val());
	var message = $.trim($('#message').val());
	
	if(!firstname.match(nameRegexOnlyName)) {
		inlineMsgFornewsletter('firstname','Invalid first name.',2);
		errCntr++;
		return false;
	}	
	if(!lastname.match(nameRegexOnlyName)) {
		inlineMsgFornewsletter('lastname','Invalid last name.',2);
		errCntr++;
		return false;
	}
	if(!email.match(emailRegex)) {  
		errCntr++;     
		inlineMsgFornewsletter('email','Please enter a valid email id.',2);
		return false;
	}
	if(zipcode == ''){
		errCntr++;     
		inlineMsgFornewsletter('zipcode','Please enter zipcode.',2);
		return false;				
	}
	if(message == ''){
		errCntr++;     
		inlineMsgFornewsletter('message','Please enter message.',2);
		return false;				
	}
	var postData = $('#form1data').serialize();
	$.ajax({ 
		url: 'sendmail.php', 
		type: "POST",
		cache: false,
		data: postData,
		beforeSend:function(){
				$('#form1msg').html('Please wait....');			
		},
		success: function( data, textStatus, jQxhr ){				
			$('#form1msg').html('<strong>Thanks we will get back to you soon!.</strong>');		
			$('#form1data')[0].reset();	
		}, 
		error: function( jqXhr, textStatus, errorThrown ){ 
			console.log( errorThrown ); 
		} 
	});	
	
	return false;	
	
	
}


function validate2(){
	var errCntr = 0;
	var nameRegex =  /^[A-Za-z0-9 ]{1,100}$/;
	var emailRegex = /^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$/;
	var messageRegex = new RegExp(/<\/?\w+((\s+\w+(\s*=\s*(?:".*?"|'.*?'|[^'">\s]+))?)+\s*|\s*)\/?>/gim);
	var phoneRegex =  /^((\+\d{1,3}(-| )?\(?\d\)?(-| )?\d{1,5})|(\(?\d{1,6}\)?))(-| )?(\d{3,4})(-| )?(\d{4})(( x| ext)\d{1,5}){0,1}$/;
	var urlRegex = /^((http|ftp):\/)?\/?([^:\/\s]+)((\/\w+)*\/)([\w\-\.]+\.[^#?\s]+)(#[\w\-]+)?/;	
	var nameRegexOnlyName = /^[a-zA-Z]+(([\'\,\.\- ][a-zA-Z ])?[a-zA-Z]*)*$/;
	
	
	var firstname2 = $.trim($('#firstname2').val());
	var lastname2 = $.trim($('#lastname2').val());
	var email2 = $.trim($('#email2').val());
	var state = $.trim($('#state').val());
	var city = $.trim($('#city').val());
	var school = $.trim($('#school').val());
	var city = $.trim($('#city').val());
	var child = $.trim($('#child').val());
	
	
	
	if(!firstname2.match(nameRegexOnlyName)) {
		inlineMsgFornewsletter('firstname2','Invalid first name.',2);
		errCntr++;
		return false;
	}	
	if(!lastname2.match(nameRegexOnlyName)) {
		inlineMsgFornewsletter('lastname2','Invalid last name.',2);
		errCntr++;
		return false;
	}
	if(!email2.match(emailRegex)) {  
		errCntr++;     
		inlineMsgFornewsletter('email2','Please enter a valid email id.',2);
		return false;
	}
	if(state == ''){
		errCntr++;     
		inlineMsgFornewsletter('state','Please enter state.',2);
		return false;				
	}
	if(school == ''){
		errCntr++;     
		inlineMsgFornewsletter('school','Please enter school.',2);
		return false;				
	}
	if(child == ''){
		errCntr++;     
		inlineMsgFornewsletter('child','Please enter child.',2);
		return false;				
	}
	var postData = $('#form2data').serialize();
	$.ajax({ 
		url: 'sendmail2.php', 
		type: "POST",
		cache: false,
		data: postData,
		beforeSend:function(){
				$('#form2msg').html('Please wait....');			
		},
		success: function( data, textStatus, jQxhr ){				
			$('#form2msg').html('<strong>Thanks we will get back to you soon!.</strong>');		
			$('#form2data')[0].reset();	
		}, 
		error: function( jqXhr, textStatus, errorThrown ){ 
			console.log( errorThrown ); 
		} 
	});	
	
	return false;	
	
	
}








