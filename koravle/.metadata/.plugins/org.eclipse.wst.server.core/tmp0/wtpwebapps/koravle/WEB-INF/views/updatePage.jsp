<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix='c' uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>

    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">


<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>


	<%
		// 메인 페이지로 이동했을 때 세션에 값이 담겨있는지 체크
		String usrID = null;
		if(session.getAttribute("usrID") != null){
			usrID = (String)session.getAttribute("usrID");
		}
	%>
	
	<!-- header -->
	<header style="min-width:1280px; height:200px; margin:auto; background-color: black; ">
	
	</header>


	<!-- 게시판 메인 페이지 영역 시작 -->
	
	<main style="overflow:auto; max-width:1280px; min-width:1000px; height:800px; margin:auto; background-color: skyblue; ">
	<div style="max-width:1000px; margin:auto;">
	
		<div class="row">
			<br/>
		</div>
	
	<form action="updateBoard.do" method="post">
		<div class="row">
			<input type="hidden" name="boardIdx" class="col-3" value="${board.boardIdx}"/>
			<input type="text" name="boardTitle" class="col-8" value="${board.boardTitle }"/>
		</div>
		
		<div class="row">
			<br/>
		</div>
		
		<div class="row">
			<input type="text" name="boardKeyword" class="col-9" value="${board.boardKeyword }"/>
			<select class="col-3" name="boardType" id="boardType">
					<option value="famile">가족과 함께</option>
					<option value="child">자녀와 함께</option>
					<option value="couple">커플 추천</option>
				</select> <!-- 한글 출력으로 변경 예정 -->
		</div>
		
		<div class="row">
			<br/>
		</div>
		
		<div class="row bg-success">
			<div class="col-7">
				<textarea class="col-12 h-100 bg-primary" name="boardContent1" id="boardContent1">${board.boardContent1}</textarea>
			
				
				
			</div>
			
			<div class="col-5">
				
				<c:if test = "${board.b_realfname != null}">
			
				<tr>
					<td colspan="2" align="center">
						<img src='D/workspace/springWeb/koravle/koravle/src/main/webapp/resources/upload/${board.b_realfname}'
							width='400' height='400'>
					</td>
				</tr>
				
				</c:if>
				
			</div>
		</div>
		
		<div class="row">
			<br/>
		</div>
		
		<div class="row">
			<button class="col-2" onclick='location.href="insertBoard.do"'>새 글쓰기</button>
			<div class="col-6"></div>
			<button class="col-2" onclick='location.href="deleteBoard.do?boardIdx=${board.boardIdx}"'>삭제</button>
			<input type="submit" class="col-2" value="글 수정"/>
		</div>
	</form>
		
	
	</div>
	</main>
	<!-- 게시판 메인 페이지 영역 끝 -->
	
	<!-- footer -->
	
	<footer style="min-width:1280px; height:200px; margin:auto; background-color: black;">
	
	</footer>
	
    <!-- Optional JavaScript; choose one of the two! -->

    <!-- Option 1: jQuery and Bootstrap Bundle (includes Popper) -->
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-fQybjgWLrvvRgtW6bFlB7jaZrFsaBXjsOMm/tB9LTS58ONXgqbR9W8oWht/amnpF" crossorigin="anonymous"></script>

    <!-- Option 2: Separate Popper and Bootstrap JS -->
    <!--
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.min.js" integrity="sha384-VHvPCCyXqtD5DqJeNxl2dtTyhF78xXNXdkwX1CZeRusQfRKp+tA7hAShOK/B/fQ2" crossorigin="anonymous"></script>
    -->
</body>
</html>