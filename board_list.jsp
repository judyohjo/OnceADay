<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<c:if test="${user_name == null}">
	<script>
		alert("This requires a login service.");
		location.href='/onceADay';
	</script>
</c:if>

<%@ include file="../include/header.jspf" %>
<style>

header.masthead {
	
	display: none;
}	
</style>

<br/><br/> 
 
    <!-- Begin Page Content -->
	

	<div class="container">
		<div class="row">
			<div class="col-lg-2">
			</div>
			<div class="col-lg-8">
				<div class="panel-body">
				<h2 class="page-header"><span style="color: #ff52a0;">Once A Day</span> Free Board
					<a href="/onceADay/board/BWriteView.onceADay" class="btn float-right" style="background-color: #ff52a0; margin-top: 0; height: 40px; color: white; border: 0px solid #f78f24; opacity: 0.8">Start writing</a>
				</h2>
					<table class="table table-bordered table-hover">
						
						<tr style="background-color: #ff52a0; margin-top: 0; height: 40px; color: white; border: 0px solid #f78f24; opacity: 0.8">
							<th>#Number</th>
							<th>Writer</th>
							<th>Title</th>
							<th>Date</th>
							<th>Number of visits</th>
						</tr>
						
						<c:forEach var="article" items="${articles.messageList}">
						<tr style="color: #ff52a0;">
							<td>${article.bId}</td>
							<td>${article.bName}</td>
							
							<td>
								<a href="/onceADay/board/BContent.onceADay?bId=${article.bId}" style="color: orange;">
								${article.bTitle}
								</a>
							</td>
							
							<td>
								<fmt:formatDate pattern="dd/MM/yyyy" value="${article.bDate}" />    
							</td>
							<td>${article.bHit}</td>
						</tr>		
						</c:forEach>				
						
					</table>
					
					<ul class="pagination justify-content-center">
                       				<li class="page-item">
							<a class="page-link" href="#" 
							style="background-color: #ff52a0; margin-top: 0; height: 40px; color: white; border: 0px solid #f78f24; "><<</a>
						</li>

						
						<c:forEach var="pageNum" begin="1" end="${articles.pageTotalCount}" >
						    <li class="page-item">
						    	<a class="page-link" style="margin-top: 0; height: 40px; color: pink; border: 1px solid pink;"
						    	href="BList.onceADay?page=${pageNum}">${pageNum}</a>
						    </li>
						</c:forEach>
					   
					    <li class="page-item">
					      <a class="page-link" href="#" 
					      style="background-color: #ff52a0; margin-top: 0; height: 40px; color: white; border: 0px solid #f78f24; ">>></a>
					    </li>
				    </ul>
					
				</div>
				<div class="col-lg-2">
				</div>
			</div>
		</div>
	</div>
<%@ include file="../include/footer.jspf" %>


