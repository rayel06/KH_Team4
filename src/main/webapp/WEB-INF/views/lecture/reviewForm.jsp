<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<c:set var="contextPath" value="${pageContext.request.contextPath }" />  
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>
  <script src="http://code.jquery.com/jquery-latest.js"></script>
<%--   <script defer src="${contextPath }/js/lecture/reviewForm"></script> --%>
  
  <style>
    * {
      box-sizing: border-box;
      margin: 0;
      padding: 0;
    }

    @font-face {
      font-family: 'NanumSquareRound';
      src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_two@1.0/NanumSquareRound.woff') format('woff');
      font-weight: normal;
      font-style: normal;
    }

    body {
      font-family: 'NanumSquareRound';
      font-weight: bold;
      background: #f5f6f7;
      line-height: 1.8;
    }

    #container {
      border-radius: 20px;
      margin: 190px auto;
      background-color: white;
      max-width: 600px;
      height: 550px;
      padding: 30px;
    }

    .form-wrap {
      padding: 15px 25px;
      color: #333;
    }

    .form-wrap h1 {
      text-align: center;
    }

    .form-wrap .form-group {
      margin-top: 15px;
    }

    .star-group{
      display: flex;
      justify-content: space-evenly;
      align-items: center;
    }

    .form-group{
      text-align: center;
    }

    #textarea {
      font-family: 'NanumSquareRound';
      font-size: 18px;
      border: solid lightgray;
      border-radius: 4px;
      resize: none;
    }

    .form-wrap button {
      display: block;
      width: 47.9%;
      padding: 10px;
      margin-top: 20px;
      margin-right: 10px;
      background: orange;
      color: white;
      font-size: 18px;
      font-weight: bold;
      cursor: pointer;
      float: left;
      border: none;
      border-radius: 15px;
    }

    .form-wrap button:hover {
      background: orangered;
    }

    .star {
      font-size: 30px;
    }

    #star_grade a {
      text-decoration: none;
      color: gray;
    }

    #star_grade a.on {
      color: orange;
    }
  </style>
</head>

<body>
  <div id="container">
    <div class="form-wrap">
      <h1>????????????</h1>
      <form id="reviewForm" action="${contextPath }/lecture/review" method="post">
<input type="hidden" type="number" id="rating" name="rating"/>
<input type="hidden" name="lecture_title" value="??????" />
<%-- <input type="hidden" name="lecture_title" value="${sessionScope.lecture.lecture_title }" /> --%>
        <div class="star-group">
          <p>?????? ??????</p>
          <p id="star_grade" >
            <a href="#" class="star">???</a>
            <a href="#" class="star">???</a>
            <a href="#" class="star">???</a>
            <a href="#" class="star">???</a>
            <a href="#" class="star">???</a>
          </p>
        </div>
        <div class="form-group">
          <label for="textarea">?????????</label>
          <textarea name="rcontent" id="textarea" cols="50" rows="8" placeholder="?????? 3??? ?????? ?????? 400??? ?????? ????????? ???????????????."></textarea>
        </div>
        <button type="submit" class="submitBtn">??????</button>
        <button type="cancel" class="btn">??????</button>
      </form>
    </div>
  </div>
</body>

<script>
$('#star_grade a').click(function () {
		
    $(this).parent().children("a").removeClass("on");  /* ????????? on ????????? ?????? ?????? */
    $(this).addClass("on").prevAll("a").addClass("on"); /* ????????? ??????, ??? ??? ?????? ????????? on ????????? ?????? */
    return false;
  });




  $('.submitBtn').click(function () {
	  document.getElementById('rating').value = document.querySelectorAll('a.star.on').length;
      document.getElementById('reviewForm').submit();

  });
</script>

</html>