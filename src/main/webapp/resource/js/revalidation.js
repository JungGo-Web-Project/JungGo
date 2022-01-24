function checkLogin(form){
	const id = form.id.value;
	const pw = form.pw.value;
	
	if(id !== "" && pw !== ""){
		form.submit();
	}
	else{
		alert("로그인 정보를 모두 입력하세요");
	}
}

function checkJoin(form){
    const required = document.getElementsByClassName("required");
    const checkRequired = form.required;
	
	if(document.getElementById("pwCriteria_check").value === 'true'){
		let cnt = 0;
		for(let i=0; i<required.length; i++){
			if(required[i].value !== ""){
				cnt ++;
			}
	        else{
	            document.getElementById("alert"+(i+1)).style.display="block";
	        }
		}
	
	    let checked = 0;
	    for(let i=0; i<checkRequired.length; i++){
	        if(checkRequired[i].checked) checked ++;
	    }
	
		if(cnt === required.length && checked === checkRequired.length){
			if(form.pw.value === form.pwCheck.value){
				form.submit();
			}
			else{
				alert("비밀번호가 일치하지 않습니다");
			}
		}
		else if(checked !== checkRequired.length){
			alert("필수정보에 대해 동의가 필요합니다");
		}
	}
	else{
		alert("비밀번호 조건을 다시 한번 확인해주세요");
	}
}

function pwConfirm(password){
	const num = ['0','1','2','3','4','5','6','7','8','9'];
	const abc = ['a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z'];
	
	let numCheck = false;
	let abcCheck = false;
	
	if(password.value.length >= 6){
		for(let i=0; i<password.value.length; i++){
			const pw = password.value.charAt(i);
			
			for(let j=0; j<num.length; j++){
				if(pw === num[j]) numCheck = true;
			}
			for(let j=0; j<abc.length; j++){
				if(pw === abc[j]) abcCheck = true;
			}
			if(numCheck && abcCheck){
				document.getElementById("pwAlert").style.display = "none";
				document.getElementById("pwCriteria_check").value = "true";
				
				break;
			}
		}
	
		if(!numCheck || !abcCheck){
			document.getElementById("pwAlert").style.display = "block";
			document.getElementById("pwCriteria_check").value = "false";
		}
	}
	else{
		document.getElementById("pwAlert").style.display = "block";
		document.getElementById("pwCriteria_check").value = "false";	
	}
}

function checkPw(password){
    const pw = document.getElementById("pw").value;
    const alert = document.getElementById("checkPw");

    if(password.value === pw){
        alert.style.display = "none";
    }
    else{
        alert.style.display = "block";
    }
}

function allCheck(form){
    const options = form.option;

    for(let i=0; i<options.length; i++){
        options[i].checked = form.optionAll.checked;
    }
}

function sample6_execDaumPostcode() {
    new daum.Postcode({
        oncomplete: function(data) {
            var addr = ''; // 주소 변수
            var extraAddr = ''; // 참고항목 변수

            if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우(R)
                addr = data.roadAddress;
            } else { // 사용자가 지번 주소를 선택했을 경우(J)
                addr = data.jibunAddress;
            }

            if(data.userSelectedType === 'R'){
                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                    extraAddr += data.bname;
                }
                if(data.buildingName !== '' && data.apartment === 'Y'){
                    extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }
                if(extraAddr !== ''){
                    extraAddr = ' (' + extraAddr + ')';
                }
                document.getElementById("sample6_extraAddress").value = extraAddr;
            
            } else {
                document.getElementById("sample6_extraAddress").value = '';
            }
            document.getElementById('sample6_postcode').value = data.zonecode;
            document.getElementById("sample6_address").value = addr;
            document.getElementById("section").value = data.bname;

            document.getElementById("sample6_detailAddress").focus();
        }
    }).open();
}

function checkEdit(form){
	const required = document.getElementsByClassName("editInfoInput");
	
	let cnt = 0;
	for(let i=0; i<required.length; i++){
		if(required[i].value != "") cnt ++;
	}
	if(cnt === required.length){
		const pw = form.pw.value;
		const pwCheck = form.pwCheck.value;
		
		if(pw === pwCheck){
			form.submit();
		}
		else{
			alert("비밀번호가 일치하지 않습니다");
		}
	}
	else{
		alert("모든 항목을 작성해주세요");
	}
}