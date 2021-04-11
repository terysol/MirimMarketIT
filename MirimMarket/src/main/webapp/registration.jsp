<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%@ include file="menuBar.jsp"%>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>상품등록창</title>
		<link href="CssDesign/registration.css" rel="stylesheet" type="text/css">
	</head>
	<body>
	    <div class="box1">
	        <div style="float: left;weight:100px;height:100px">상품등록</div>
	        <div style="float: right; width: 20%; height: 100%; position: relative;">
	            <div class="question">
	                <div class="help-tip"></div>&nbsp;궁금해요
	                    <p>팔고싶은 물건을 등록하세요!</p>
	            </div>
	        </div>
	    </div>
	    <form action = "db.jsp" method="post">
	    <div class="box2">
	        <table border="1" cellspacing="0" cellpadding="0">
	            <tr height=70>
	                <th width="200px" nowrap>글 제목</th>
	                <td><input type=text name="title" style="width:300px;height:40px;font-size:20px;"></td>
	            </tr>
	            <tr>
	                <th>카테고리</th>
	                <td>
	                    <select name="category" style="width:120px;height:40px;font-size:20px;">
	                        <option value="선택안함">선택</option>
	                        <option>교과서</option>
	                        <option>교복</option>
	                        <option>체육복</option>
	                        <option>기타</option>
	                    </select>
	                </td>
	            </tr>
	            <tr>
	                <th>소비자학년</th>
	                <td>
	                    <div style="width:100%;height:100%;font-size:20px;">
	                        <input type=checkbox name="grade" value="1학년">1학년
	                        <input type=checkbox name="grade" value="2학년">2학년
	                        <input type=checkbox name="grade" value="3학년">3학년
	                    </div>
	                </td>
	            </tr>
	            <tr>
	                <th>상태</th>
	                <td>
	                    <select name="state" style="width:120px;height:40px;font-size:20px;">
	                        <option value="">선택</option>
	                        <option value="매우양호">매우양호</option>
	                        <option value="양호">양호</option>
	                        <option value="보통">보통</option>
	                        <option value="하자있음">하자있음</option>
	                    </select>
	                </td>
	            </tr>
	            <tr>
	                <th>첨부사진</th>
	                <td style="padding-top: 24px;">
	                    <form action="" method="post" enctype="multipart/form-data" >
	                        <input multiple="multiple" type="file" name="file" style="width:300px;height:40px;font-size:20px;"/>
	                    </form>
	                </td>
	            </tr>
	            <tr>
	                <th>상품설명</th>
	                <td><textarea name="explanation" rows="6" cols="60" style="font-size: 16px;"></textarea></td>
	            </tr>
	            <tr height=60>
	                <th>가격</th>
	                <td><input name="price" type=text style="width:90px;height:40px;font-size:20px; text-align: right;">&nbsp;&#8361;</td>
	            </tr>
	            <tr height=60>
	                <th>수량</th>
	                <td><input name="quantity" type=text style="width:90px;height:40px;font-size:20px; text-align: right;">&nbsp;개</td>
	            </tr>
	            <tr height=60>
	                <th>익명여부</th>
	                <td>
	                    <div style="width:100%;height:100%;font-size:20px;">
	                        <input type="radio" name="yesorno" checked>Yes
	                        <input type="radio" name="yesorno">No
	                    </div>
	                </td>
	            </tr>
	        </table>
	    </div>
	    <div class="box3">
	        
	            <input type="submit" value="확인">
	            <button type="button" onclick="location.href='main.jsp' " name="취소">취소</button>
	        
	    </div>
	    </form>
	</body>
</html>