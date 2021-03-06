<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css"
	integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn"
	crossorigin="anonymous">

<title></title>
</head>
<body>
	
	<!-- header -->
	<header style="min-width:1280px; height:200px; margin:auto; background-color: black; ">
	
	</header>


	<!-- 게시판 메인 페이지 영역 시작 -->
	
	<main style="overflow:auto; max-width:1280px; min-width:1000px; height:800px; margin:auto; background-color: skyblue; ">
	
	<div style="max-width:1000px; margin:auto;">
	
		<div class="row">
			<br/>
		</div>
	
		<div class="row">
			<div class="col-3"></div>
			<input type="text" class="col-4" name="searchWord" id="searchWord">
			<select class="col-1" name="selectSearch" id="selectSearch">
				<option value="1" selected>전체</option>
				<option value="boardName">글제목</option>
				<option value="regionName">관광지</option>
				<option value="boardWriter">작성자</option>
			</select>
			<button class="col-1" onclick='location.href="getBoardList.do"'>검색</button>
			<div class="col-1"></div>
			<button class="col-2" onclick='location.href="insertBoard.do"'>글쓰기</button>
		</div>

		<div class="row">
			<br/>
		</div>

		<div class="row">
			<%-- 키워드 값 선택 시 아래 부분에 출력 구현 --%>
			<mark class="col-5">선택 키워드 노출 </mark>
			<%-- <%선택 게시판 별 노출 아이콘  변경 if문 작성 (ex. 자유게시판 -> best, 관광지추천, 코스추천 노출) %> --%>
			<button class="col-1" onclick='location.href="getBoardList.do"'>best</button>
			<button class="col-2" onclick='location.href="getBoardList.do"'>자유게시판</button>
			<button class="col-2" onclick='location.href="getBoardList.do"'>관광지추천</button>
			<button class="col-2" onclick='location.href="getBoardList.do"'>코스추천</button>
		</div>

		<div class="row">
			<br/>
		</div>

		<div style="background-color: white; min-height:550px;">
			<table class="col-12" border="1">
				<tr>
					<th class="col-1" align="center">글 번호</th>
					<th class="col-3" align="center">제목</th>
					<th class="col-1" align="center">작성자</th>
					<th class="col-3" align="center">작성일</th>
					<th class="col-1" align="center">추천수</th>
					<th class="col-1" align="center">조회수</th>
					<!-- 파일 -->
					<th class="col-2" align="center">파일용량</th>
				</tr>
				
				<!-- 1. ajax 구현으로 더보기 클릭 시 하단 출력으로 구현(동적쿼리로 F~E번째 리스트 출력으로 구현) -->
				<!-- 2. 게시판 페이지 넘버 클릭으로 동적쿼리 구현 -->
				<c:forEach items="${boardList}" var="board">
					<tr>
						<td class="col-1">${board.boardIdx }</td>
						<td class="col-3" align="left"><a href="getBoard.do?boardIdx=${board.boardIdx}">
														${board.boardTitle }</a></td>
						<td class="col-1">${board.boardWriter }</td>
						<td class="col-3">${board.boardDate }</td>
						<td class="col-1">${board.boardReco }</td>
						<td class="col-1">${board.boardViewCount }</td>
						
					<!-- 파일 -->
						<td class="col-2">
						<c:choose>
					    <c:when test="${board.b_fsize==0}">첨부파일 없음</c:when>
					    <c:otherwise>
					    		<img src='resources/images/disk.gif'>${board.b_fsize}byte
					    </c:otherwise>
						</c:choose>
						</td>
					</tr>
				</c:forEach>
			</table>
		</div>
	
	</div>
	
	</main>
	<!-- 게시판 메인 페이지 영역 끝 -->
	
	<!-- footer -->
	
	<footer style="min-width:1280px; height:200px; margin:auto; background-color: black;">
	
	</footer>


	<!-- Optional JavaScript; choose one of the two! -->

	<!-- Option 1: jQuery and Bootstrap Bundle (includes Popper) -->
	<script
		src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"
		integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-fQybjgWLrvvRgtW6bFlB7jaZrFsaBXjsOMm/tB9LTS58ONXgqbR9W8oWht/amnpF"
		crossorigin="anonymous"></script>

	<!-- Option 2: Separate Popper and Bootstrap JS -->
	<!--
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.min.js" integrity="sha384-VHvPCCyXqtD5DqJeNxl2dtTyhF78xXNXdkwX1CZeRusQfRKp+tA7hAShOK/B/fQ2" crossorigin="anonymous"></script>
    -->
    
</body>
</html>