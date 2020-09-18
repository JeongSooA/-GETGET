<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="ko">
<head>
<meta charset="utf-8">
<title>GetGet-로그인</title>
<link rel="stylesheet" type="text/css" href="css/default.css">
<link rel="stylesheet" type="text/css" href="css/style.css">
<link rel="stylesheet" type="text/css" href="css/sub.css">
<link rel="stylesheet" href="css/login.css">
<link rel="stylesheet" href="css/join.css">
</head>
<body>
	<a href="#contents" class="skip">본문바로가기</a>
		<header id="header" class="index">
		<h1><a href="index.html"><img src="images/logo.png" alt="GetGet"></a></h1>
		<h2 class="hide">대메뉴</h2>
		<div id="lnb">
			<nav>
				<ul>
				<li><a href="#a">브랜드별</a></li>
				<li><a href="#a">종류별</a></li>
				<li><a href="#a">참여한이벤트</a></li>
				<li><a href="#a">쿠폰</a></li>
				</ul>
			</nav>
			
		</div>
		<h2 class="hide">회원</h2>
		<ul>
		<li><a href="#a">my page</a></li>
		<li><a href="#a">FAQ</a></li>
		<li><a href="#a">login</a></li>
		</ul>	<div class="visual"></div>
	</header>
	<main>
	<br><br><br><br>
        <div class="contents">
            <h2 class="h2">로그인</h2>
            <p>할인도 편리하게, GetGet!을 찾아주셔서 감사합니다.<br>회원이 되시면 GetGet!만의 혜택과 서비스를 누릴 수 있습니다.</p>
      
          	<fieldset>

			<!--  <tr>
				<td><input type="radio" name="사용자구분"> 개인 회원    
				<input type="radio" name="사용자구분"> 사업자
				</td>
			</tr>-->
		<form class = "login" method = "post" action="LoginAction.jsp">
		<h3>로그인</h3>
		<input type ="text" placeholder="ID" name="id">
		<input type ="password" placeholder="PASSWORD" name="passwd">
		<input type = "submit" value="로그인">
		</form>
			
		</fieldset> 
		  </div>  
	
			<table align="center" height="70">
			  <tr>
			   <td><a href="join1.jsp">회원가입 | </td>  
			   <td><a href="">아이디 찾기 | </td>
			   <td><a href="">비밀번호 찾기</td>
			  </tr>
			</table>
			
		<!-- 사진첨부관련
        <div class="fieldlabel"><label for="profile">프로필사진</label></div>
        <div class="formfield">
            <input type="file" id="profile" name="profile" required>
        </div>-->
		
	
        <!--<div class="btnfield">
            <input type="submit" value="회원가입">
        </div> -->
		
		</fieldset> 
    </form>
</body>
	</main>
	<footer>
		<div class="clear">
			<a href="#header">TOP</a>
			<div class="left">
				<div>
					<a href="#a">개인정보처리방침</a>
					<a href="#a">이용약관</a>
					<a href="#a">이메일무단수집거부</a>
					<a href="#a">사이트맵</a>
				</div>
				<p>
					GetGet<span></span>사업자번호 : 111-1111-11111<span></span>대표자 : 김슬하,정수아,박진선<br>
					경기도 용인시 처인구 김장량동 839-34<span></span>02-3484-2114<span></span>Copyright © 2019 getget Corporation., All rights reserved.
				</p>
			</div>

		</div>
	</footer>
</body>
</html>

















