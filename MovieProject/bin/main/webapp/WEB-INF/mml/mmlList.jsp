<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!--
/**
* @Class Name : mmlList.jsp
* @Description : 나영리 리스트
* @Modification Information
* @
* @  수정일     		     수정자            		수정내용
* @ ---------   ---------   -------------------------------
* @ 2019.07.09        김상필      		 	최초생성
* @author bit 2조
* @since 2019. 07.01
* @version 1.0
* @see
*
*  Copyright (C) by Bit All right reserved.
*/
-->



<%@ include file="../header1.jsp"%>

<!-- 2. 여기에 페이지별 css 추가해주세요 -->
<link rel="stylesheet" href="<c:url value="/resources/css/sp_style.css" />">
<script src="https://kit.fontawesome.com/bb8498b585.js"></script>


<!-- 3. heaer2.jsp : header -->
<%@ include file="../header2.jsp" %>

<!DOCTYPE html>

<html>

<script type="text/javascript" src="http://code.jquery.com/jquery-3.2.0.min.js" ></script>
<script type="text/javascript">


$(document).ready(function(){
	$('#sort_date').show();
	$('#sort_like').hide();
		

});



$(function(){
	
	
	$('#date_sort').click(function(){
		$('#sort_date').show();
		$('#sort_like').hide();
	});
	
	$('#like_sort').click(function(){
		$('#sort_date').hide();
		$('#sort_like').show();
	});
	
	
	
	
});







</script>

<br>
<br><br><br>

 <div class="flex-it share-tag" style="width:1258px; float:left;">
                                </div>

<div class="buster-light">

	<!-- celebrity grid v2 section-->
	<div class="page-single">
		<div class="container">
			<div class="row">
				<div style="display: flex">
					<div class="btn-group btn-group-lg mb-3" role="group"
						aria-label="Large button group" style="flex: 5">
						<button class="btn btn-secondary" type="button" id="date_sort">최신순 보기</button>
						<button class="btn btn-secondary" type="button" id="like_sort">추천순 보기</button>
					</div>
					<div style="flex: 2">
						<button type="button" class="btn-check" style="float:right"
							OnClick="location.href ='mmlWrite '">나영리 작성</button>
					</div>
				</div>
				<br>




				<div class="row1" id="sort_like">
						
				<c:forEach var="mml2" items="${requestScope.mmlList2 }" varStatus="status">
		
	<div class="sp_col-md-41">
							<div class="card" OnClick="location.href ='mmlGet '" style="cursor:pointer;">
									<img class="card-img" src="<c:url value="/resources/images/sp_image/${mml2.mml_poster }"/>" alt="header" />
									<div class="card-info">
										<div class="card-ho"></div>
											<div class="ho-info" style="float:left;">									
												<h1 style="text-align: left; font-size:25px">${mml2.mml_title }</h1>
												<div style="float:left;"><img class="mml_crown" src="<c:url value="/resources/images/sp_image/crown.png"/>">&nbsp;
												<h3 style="display:inline; text-align:left" class="card-author" style="display:inline">${mml2.m_nickname }</h3>
												</div><br>
													<span style="color:red"><i class="fas fa-heart"></i></span>&nbsp;${mml2.mml_like }&nbsp;<i class="far fa-eye"></i>&nbsp;${mml2.mml_view_count }&nbsp;
									
									</div>
									
									</div>
								  </div>
					</div>
					</c:forEach>
					
					</div>
					
					<div class="row1" id="sort_date">
				<c:forEach var="mml" items="${requestScope.mmlList}" varStatus="status">
	<div class="sp_col-md-41">
							<div class="card" OnClick="location.href ='mmlGet '" style="cursor:pointer;">
									<img class="card-img" src="<c:url value="/resources/images/sp_image/${mml.mml_poster }"/>" alt="header" />
									<div class="card-info">
										<div class="card-ho"></div>
											<div class="ho-info" style="float:left;">									
												<h1 style="text-align: left; font-size:25px">${mml.mml_title }</h1>
												<div style="float:left;"><img class="mml_crown" src="<c:url value="/resources/images/sp_image/crown.png"/>">&nbsp;
												<h3 style="display:inline; text-align:left" class="card-author" style="display:inline">${mml.m_nickname }</h3>
												</div><br>
													<span style="color:red"><i class="fas fa-heart"></i></span>&nbsp;${mml.mml_like }&nbsp;<i class="far fa-eye"></i>&nbsp;${mml.mml_view_count }&nbsp;
									
									</div>
									
									</div>
								  </div>
					</div>
					</c:forEach> 
				
					
				</div>

<nav aria-label="Page navigation example">
						<ul class="pagination">
							
							<li class="page-item">
								<a class="page-link" href="#" aria-label="Previous">
									<span aria-hidden="true">&laquo;</span>
									<span class="sr-only">Previous</span>
								</a>
							</li>
							
						
							<li ><a class="page-link" href="#">1</a></li>
						
						
							<li class="page-item">
								<a class="page-link" href="#" aria-label="Next">
									<span aria-hidden="true">&raquo;</span>
									<span class="sr-only">Next</span>
								</a>
							</li>
						
						</ul>
					</nav>

				
				<div class="col-md-3 col-xs-12 col-sm-12"></div>
			</div>
		</div>
	</div>
	<!-- end of celebrity grid v2 section-->
</div>

<%@ include file="../footer.jsp"%>
</body>
</html>