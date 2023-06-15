function addCheck(){
	if(frm.name.value.length==0){
		alert("환자이름이 입력되지 않았습니다");
		frm.name.value.focus();
		return false;
	}else if(frm.clinicdate.value.length==0){
		alert("입원일이 입력되지 않았습니다");
		frm.clinicdate.value.focus();
		return false;
	}else if(frm.reason.value.length==0){
		alert("병명이 입력되지 않았습니다");
		frm.reason.value.focus();
		return false;
	}else if(frm.birthday.value.length==0){
		alert("생년월일이 입력되지 않았습니다");
		frm.birthday.value.focus();
		return false;
	}else if(frm.doctornum.value.length ==0){
		alert("담당의사 번호가 입력되지 않았습니다.");
		frm.doctor.num.value.focus();
		return false
	}
	alert("등록되었습니다.");
	document.frm.submit();
	return true;
}

function res(){
	if(confirm("정보를 지우고 처음부터 다시시작합니까?")){
		document.frm.reset();
	}
}
