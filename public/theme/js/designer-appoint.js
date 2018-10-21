$(document).ready(function(){
	if($('#appoint-designer').length>0){
		$('#appoint-designer').attr("onsubmit","return designer_form_validate()");
	}
	if($('#become-partner').length>0){
		$('#become-partner').attr("onsubmit","return partner_form_validate()");
	}
});



function partner_form_validate(){
	var weburl = $.trim($('#weburl').val());
	var errCntr = 0;
	var nameRegex =  /^[A-Za-z0-9 ]{1,100}$/;
	var emailRegex = /^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$/;
	var messageRegex = new RegExp(/<\/?\w+((\s+\w+(\s*=\s*(?:".*?"|'.*?'|[^'">\s]+))?)+\s*|\s*)\/?>/gim);
	var phoneRegex =  /^((\+\d{1,3}(-| )?\(?\d\)?(-| )?\d{1,5})|(\(?\d{1,6}\)?))(-| )?(\d{3,4})(-| )?(\d{4})(( x| ext)\d{1,5}){0,1}$/;
	var urlRegex = /^((http|ftp):\/)?\/?([^:\/\s]+)((\/\w+)*\/)([\w\-\.]+\.[^#?\s]+)(#[\w\-]+)?/;	
	var nameRegexOnlyName = /^[a-zA-Z]+(([\'\,\.\- ][a-zA-Z ])?[a-zA-Z]*)*$/;
	var err = 0;
	$('#become-partner .form-control').each(function(){
		var mandatory = $(this).attr("mandatory");
		if(mandatory!=undefined && mandatory == 1){
			var current_value = $.trim($(this).val());
			var id = $(this).attr("id");	
			var msg = $(this).attr("msg");
			if(current_value == ''){
				err++;
				inlineMsgFornewsletter(id,msg,2);
				return false;
			}
		}

	});
	if(err>0){
		return false;
	}
	else{
		var current_data = $('#become-partner').serialize();
		$.ajax({
			url:weburl+'pages/becomepartnersub',
			type:'post',
			data:current_data,
			beforeSend:function(){
				$('#loader-msg-designer').html('<img src='+weburl+'/img/ajax-loader2.gif>')
			},
			success:function(responseObj){
					$('#loader-msg-designer').html('<br><br><b>Thanks for contacting.We will soon contact with you!</b>');
					$('#become-partner')[0].reset();
			}			
		})		
		return false;
	}
	
}





function designer_form_validate(){
	var weburl = $.trim($('#weburl').val());
	var errCntr = 0;
	var nameRegex =  /^[A-Za-z0-9 ]{1,100}$/;
	var emailRegex = /^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$/;
	var messageRegex = new RegExp(/<\/?\w+((\s+\w+(\s*=\s*(?:".*?"|'.*?'|[^'">\s]+))?)+\s*|\s*)\/?>/gim);
	var phoneRegex =  /^((\+\d{1,3}(-| )?\(?\d\)?(-| )?\d{1,5})|(\(?\d{1,6}\)?))(-| )?(\d{3,4})(-| )?(\d{4})(( x| ext)\d{1,5}){0,1}$/;
	var urlRegex = /^((http|ftp):\/)?\/?([^:\/\s]+)((\/\w+)*\/)([\w\-\.]+\.[^#?\s]+)(#[\w\-]+)?/;	
	var nameRegexOnlyName = /^[a-zA-Z]+(([\'\,\.\- ][a-zA-Z ])?[a-zA-Z]*)*$/;
	var err = 0;
	$('#appoint-designer .form-control').each(function(){
		var mandatory = $(this).attr("mandatory");
		if(mandatory!=undefined && mandatory == 1){
			var current_value = $.trim($(this).val());
			var id = $(this).attr("id");	
			var msg = $(this).attr("msg");
			if(current_value == ''){
				err++;
				inlineMsgFornewsletter(id,msg,2);
				return false;
			}
		}

	});
	if(err>0){
		return false;
	}
	else{
		var current_data = $('#appoint-designer').serialize();
		$.ajax({
			url:weburl+'pages/designerappointsubmit',
			type:'post',
			data:current_data,
			beforeSend:function(){
				$('#loader-msg-designer').html('<img src='+weburl+'/img/ajax-loader2.gif>')
			},
			success:function(responseObj){
					$('#loader-msg-designer').html('<br><br><b>Thanks for contacting.Once approved designer will contact with you!</b>');
					$('#appoint-designer')[0].reset();
			}			
		})		
		return false;
	}
	
}






