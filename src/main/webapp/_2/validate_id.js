$(document).ready(function() {
	let idcheck_value = null;
  $('#myform').submit(function() {
    let inputId = $('#id').val();
    let inputPw = $('#pass').val();

    if (inputId.trim() === '') {
        alert('ID를 입력하세요.');
        $('#id').focus();
        return false;
    } else {
        let pattern = 'java'
        if (pattern.test(idValue)) {
        idcheck_value = idValue;
//      const ref = `jQ_login.html?id=${idValue}`;
      } else {
        alert('아이디는 첫 글자는 대문자이고 두 번째부터는 대소문자, 숫자, _로 총 4개 이상이어야 합니다.');
        id.val('').focus();
      }
    }

    if (inputPw.trim() === '') {
      alert('비밀번호를 입력하세요.');
      $('#pass').focus();
      return false;
    }

 });
});
