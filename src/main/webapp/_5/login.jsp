<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="EUC-KR">
    <link href="css/mycss.css" type="text/css" rel="stylesheet">
    <script src="js/jquery-3.7.0.js"></script>
</head>
<body>
    <form action="login_ok.jsp" method="post">
        <fieldset>
            <label for="id">ID</label>
            <div>
                <input type="text" placeholder="Enter id" name="id" id="id">
            </div>
            <label for="pass">Password</label>
            <input type="password" placeholder="Enter Password" name="pass" id="pass">

            <div class="clearfix">
                <button type="submit" class="signupbtn">전송</button>
                <button type="reset" class="cancelbtn">취소</button>
            </div>
        </fieldset>
    </form>
</body>
</html>
