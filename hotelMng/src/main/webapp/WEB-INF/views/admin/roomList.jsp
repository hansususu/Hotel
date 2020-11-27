<%@ page language="java" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"  %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<html lang="ko">
    <head>
        <meta charset="UTF-8">
        <link rel="stylesheet" href="/resources/css/style_admin.css" type="text/css">
        <script type="text/javascript" src="/resources/js/jquery-1.11.3.min.js"></script>
        <style>

            * {
                font-family: 'Noto Sans KR', sans-serif;
            }

        </style>
        <title>Room List</title>

    </head>

    <body>
        <div class=header>
            <a href="/admin"><img src="/resources/image/moon.png" width="100" height="100">
            <nav>
                <span><a></a></span>
                <span><a href="/admin/memberList">회원 List</a></span>
                <span><a href="/admin/roomList">객실 List</a></span>
                <span><a href="/admin/reservationList">예약 List</a></span>
                <span>
		        	<c:choose>
		  				<c:when test="${member != null}"><a href="/logout.do">로그아웃</a></c:when>
		   				<c:otherwise><a href="/login.do">로그인</a></c:otherwise>
		   			</c:choose>
       			</span>
            </nav>
            
        </div>

        <div class=contents>
            <p style="text-align:center;">Room LIST</p>

            <!-- <button type="button" id="standard" onClick="standard()">standard</button>
            <button type="button" id="deluxe" onClick="deluxe()">deluxe</button>
            <button type="button" id="executive" onClick="executive()">executive</button>
            <button type="button" id="suite" onClick="suite()">suite</button>
            <br><br> -->
            <div class="form-group row justify-content-center">
				<div class="w100" style="padding-right:10px">
					<select class="form-control form-control-sm" name="searchType" id="searchType">
						<option value="RoomNo">호수</option>
					</select>
				</div>
				<div class="w300" style="padding-right:10px">
					<input type="text" class="form-control form-control-sm" name="keyword" id="keyword">
				</div>
				<div>
					<button class="btn btn-sm btn-primary" name="btnSearch" id="btnSearch">검색</button>
				</div>

			</div>
            <table class="table table-hover">
                <thead>
                    <tr>
                        <td>No</td>
                        <td>RoomNo</td>
                        <td>RoomType</td>
                        <td>BedType</td>
                        <td>RoomMaxPeople</td>
                        <td>RoomFee</td>
                        <td> </td>
                    </tr>
                </thead>

                <c:forEach items="${roomList}" var="item" varStatus="idx">

                <tr>
                    <td>${idx.index+1}</td>
                    <td>${item.roomNo}</td>
                    <td>${item.roomType}</td>
                    <td>${item.bedType}</td>
                    <td>${item.roomMaxPeople}</td>
                    <td>${item.fee}</td>
                    <td><input type="button" value="예약" class="submit-btn" onClick="javaScript:location.href='/admin/reservation.do?rno=${item.roomNo}';">	</td>
                </tr>

                </c:forEach>
            </table>
        </div>


</body>

</html>