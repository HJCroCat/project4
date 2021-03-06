<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
	

	<!-- header -->
	
	<header style="min-width:1280px; height:200px; margin:auto; background-color: black; ">
	
	</header>


	<!-- 글 작성 메인 페이지 영역 시작 -->
	
	<main style="overflow:auto; max-width:1280px; min-width:1000px; height:800px; margin:auto; background-color: skyblue; ">
	
	<div style="max-width:1000px; margin:auto;">

		<form action="saveBoard.do" method='post' enctype="multipart/form-data">
		
			<% String boardWriter=null;	
			boardWriter = "작성자";/* (String)session.getAttribute("usrID"); */ %>
			
			<div class="row" style="background-color: white;">
				<input type="hidden" name="boardWriter" value="<%=boardWriter %>">
				<div class="col-3"><%=boardWriter %></div>
				<input type="text" class="col-6" name="boardTitle" id="boardTitle">
				<select class="col-3" name="boardType" id="boardType">
					<option value="famile" selected>가족과 함께</option>
					<option value="child">자녀와 함께</option>
					<option value="couple">커플 추천</option>
				</select>
			</div>
			
			<div class="row">
				<input type="text" class="col-9" name="boardKeyword" id="boardKeyword"> <!-- 해당하는 관광지 명 체크 혹은 검색기능 구현 필요 regionSearch.do로 변경 후 출력 필요 -->
				<select class="col-3" name="boardCat" id="boardCat">
					<option value="free" selected>자유게시판</option>
					<option value="course">나만의 코스 공유</option>
					<option value="region">여행 정보 공유</option>
				</select>
			</div>
			
			<div class="row bg-success" style="height:400px;">
				<div class="col-7">
					<textarea class="w-100 p-12 h-100 bg-primary" name="boardContent1" id="boardContent1">텍스트 입력 영역</textarea>
				</div>
				<div class="col-5">
					<div style="margin:auto">
						<input type="file" class="w-100 p-12 h-100 bg-primary" maxlength="60" size="40" name="file"/>코스, 그림 업로드 영역 ajax로 게시판에 따라 변경 예정, 미리보기 같이 구현 <!-- (해당하는 관광지 명에 대한 순서 체크, 그림업로드, 공란) ajax 구현 필요 -->
					</div>
				</div>
			</div>
			
			<div class="row">
				<br/>
			</div>
			
			<div class="row">
				
				<div class="col-1">
					<br/>
				</div>
				
				<div class="col-2">
					<button href="getBoardList.do">글 목록 가기</button>
				</div>
				
				<div class="col-1">
					<br/>
				</div>
				
			
				<div class="col-5">
					<br/>
				</div>
				
				<input class="col-2" type="submit" value="새글 등록"/>
				
				<div class="col-1">
					<td/>
				</div>
			</div>
		</form>
		
		<div class="row">
				<br/>
		</div>
		
		<div>
			
		</div>
		
	
	</div>
	
	</main>
	
	<!-- 글 작성 메인 페이지 영역 끝 -->
	
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