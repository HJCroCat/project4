$(function(){
	// 사용자의 자료 입력여부를 검사하는 함수
	$('#confirm').click(function(){
    	if( $.trim($("#usrID").val()) == '' ){
            alert("아이디를 입력해 주세요.");
            $("#usrID").focus();
            return;
        }
    	
    	if($.trim($('#passwd').val())==''){
    		alert("비번입력해주세요.");
    		$('#passwd').focus();
    		return;
    	}
    	
    	if($.trim($('#passwd').val()) != $.trim($('#passwd2').val())){
    		alert("비밀번호가 일치하지 않습니다..");
    		$('#passwd2').focus();
    		return;
    	}
    	
    	
    	if($.trim($('#usrNick').val())==''){
    		alert("닉네임을입력해주세요.");
    		$('#usrNick').focus();
    		return;
    	}
    	
    	if($.trim($('#usrEmail').val())==''){
    		alert("이메일을입력해주세요.");
    		$('#usrEmail').focus();
    		return;
    	}
    	
    	if($.trim($('#usrBirth').val())==''){
    		alert("생년월일을 20211206형식으로 입력해주세요.");
    		$('#usrBirth').focus();
    		return;
    	}

        // 자료를 전송합니다.
        // document.usrinput.submit();
	});
	
	//아이디 중복체크
	$('#usrID').keyup(function(){
        
        $.ajax({
        	type : 'get',
        	url : 'idCheck.do',
        	data : { usrID : $('#usrID').val() },
        	contentType: 'application/x-www-form-urlencoded; charset=UTF-8',
        	success : function(result){
        		$('#idCheckResult').text(result);
        	},
        	error : function(err){
        		alert('fail');
        	}
        })
	})
})
	
	
	
	
	
	
	
	
	