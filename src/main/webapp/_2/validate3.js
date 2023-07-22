$(document).ready(function() {
  let idcheck_value = null;

  $('#myform').submit(function() {
    let inputId = $('#id').val();
    let inputPw = $('#pass').val();

    if (inputId.trim() === '') {
      alert('ID를 입력하세요.');
      $('#id').focus();
      return false;
    }

    let submit_id_value = $.trim($('#id').val());
    if (submit_id_value != idcheck_value) {
      alert('ID 중복검사를 하세요.');
      return false;
    }

    if (inputPw.trim() === '') {
      alert('비밀번호를 입력하세요.');
      $('#pass').focus();
      return false;
    }

    let jumin1 = $('#jumin1').val();
    let jumin2 = $('#jumin2').val();

    if (jumin1.trim() === '') {
      alert('주민번호 앞자리를 입력하세요.');
      $('#jumin1').focus();
      return false;
    }
    if (jumin1.length !== 6) {
      alert('주민번호 앞자리 6자리를 입력하세요.');
      $('#jumin1').focus();
      return false;
    }

    if (jumin2.trim() === '') {
      alert('주민번호 뒷자리를 입력하세요.');
      $('#jumin2').focus();
      return false;
    }
    if (jumin2.length !== 7) {
      alert('주민번호 뒷자리 7자리를 입력하세요.');
      $('#jumin2').focus();
      return false;
    }

    let email = $('#email').val();
    if (email.trim() === '') {
      alert('이메일을 입력해주세요.');
      return false; // 제출을 중단합니다.
    }

    let domain = $('#domain').val();
    if (domain.trim() === '') {
      alert('도메인을 선택해주세요.');
      return false; // 제출을 중단합니다.
    }

    const selected = $('input:radio:checked').length;
    if (selected == 0) {
      alert('남자와 여자 둘 중 하나를 선택하세요.');
      return false;
    }

    const checked = $('input:checkbox[name="hobby"]:checked');
    if (checked.length < 2) {
      alert('취미는 최소 2개 이상 선택하십시오.');
      return false; // 제출을 중단합니다.
    }

    let post1 = $('#post1');
    if ($.trim(post1.val()) === '') {
      alert('우편번호를 입력해주세요.');
      return false; // 제출을 중단합니다.
    }

    if (!$.isNumeric(post1.val())) {
      alert('우편번호는 숫자만 입력 가능합니다.');
      post1.val('').focus();
      return false;
    }

    let address = $('#address').val();
    if (address.trim() === '') {
      alert('주소를 입력해주세요.');
      return false; // 제출을 중단합니다.
    }

    let intro = $('#intro').val();
    if (intro.trim() === '') {
      alert('자기소개를 입력해주세요.');
      return false; // 제출을 중단합니다.
    }
  });

  $('#idcheck').click(function() {
    let id = $('#id');
    let idValue = $.trim(id.val());

    if (idValue === '') {
      alert('ID를 입력하세요.');
      id.focus();
    } else {
      let pattern = /^[A-Z][A-Za-z0-9]{3,}$/;
      if (pattern.test(idValue)) {
        idcheck_value = idValue;
        const ref = `idcheck.html?id=${idValue}`;
        window.open(ref, '', 'width=300, height=250');
      } else {
        alert('아이디는 첫 글자는 대문자이고 두 번째부터는 대소문자, 숫자, _로 총 4개 이상이어야 합니다.');
        id.val('').focus();
      }
    }
  });

  $('#jumin1').keyup(function() {
    let jumin1 = $(this).val();
    if (jumin1.trim().length === 6) {
      let pattern = /^[0-9]{2}(0[1-9]|1[0-2])(0[1-9]|[12][0-9]|3[01])$/;
      if (!pattern.test(jumin1)) {
        alert('주민번호 앞자리를 형식에 맞게 입력해주세요.');
        $(this).val('').focus();
      }
    }
  });

  $('#jumin2').keyup(function() {
    let jumin2 = $(this).val();
    if (jumin2.trim().length === 7) {
      let pattern = /^[1234][0-9]{6}$/;
      if (!pattern.test(jumin2)) {
        alert('주민번호 뒷자리를 형식에 맞게 입력해주세요.');
        $(this).val('').focus();
      } else {
        let jumincheck = Number(jumin2.substring(0, 1));
        let index = (jumincheck - 1) % 2;
        $(`#gender${index + 1}`).prop('checked', true);
      }
    }
  });

  $('#sel').change(function() {
    let sel = $('#sel').val();
    let domain = $('#domain');

    if (sel === '') { // 직접입력을 선택한 경우
      domain.prop('readonly', false);
      domain.val('');
      domain.focus();
    } else {
      domain.prop('readonly', true);
      domain.val(sel);
    }
  });

  $('#postcode').click(function() {
    Postcode();
  });

  function Postcode() {
    new daum.Postcode({
      oncomplete: function(data) {
        console.log(data.zonecode);
        var fullRoadAddr = data.roadAddress;
        var extraRoadAddr = '';

        if (data.bname !== '' && /[동|로|가]$/g.test(data.bname)) {
          extraRoadAddr += data.bname;
        }
        if (data.buildingName !== '' && data.apartment === 'Y') {
          extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
        }
        if (extraRoadAddr !== '') {
          extraRoadAddr = ' (' + extraRoadAddr + ')';
        }
        if (fullRoadAddr !== '') {
          fullRoadAddr += extraRoadAddr;
        }

        $('#post1').val(data.zonecode);
        $('#address').val(fullRoadAddr);
      }
    }).open();
  }
});
