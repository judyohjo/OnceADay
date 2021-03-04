<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/header.jspf" %>
<style>
header.masthead {
	
	display: none;
}	
</style>
<br/><br/>
<div class="container">
<%--
   1. form tag's action url = "BUpdate.board"
   2. Name for the service class is BoardUpdateService
   3. DAO's editing method = updateArticle
--%>
<div class="row">
  <div class="col-lg-12">
    <div class="card">
      <div class="card-header text-white" style="background-color: #ff52a0;">Edit ${contents.bId} content</div>
      <div class="card-body">
        <form role="form" action="/onceADay/board/BUpdate.onceADay" method="post">
		  
		  <input type="hidden" name="bId" value="${contents.bId}">
          
          <div class="form-group">
            <label>Writer</label>
            <input type="text" class="form-control" name='bName' value="${contents.bName}" readonly>
          </div>
          
          <div class="form-group">
            <label>Title</label>
            <input type="text" class="form-control" name='bTitle' value="${contents.bTitle}">
          </div>

          <div class="form-group">
            <label>Content</label>
            <textarea class="form-control" rows="5" name='bContent'>${contents.bContent}</textarea>
          </div>

          
          <input class="btn" type="submit" value="Edit" style="background-color: orange; margin-top: 0; height: 40px; color: white; border: 0px solid #388E3C; opacity: 0.8"/>
          <a class="btn" href="BList.onceADay"
		style="background-color: #ff52a0; margin-top: 0; height: 40px; color: white; border: 0px solid #388E3C; opacity: 0.8">Contents</a>&nbsp;&nbsp;
          
        </form>
      </div>
    </div>
  </div>
</div>
</div>
<%@ include file="../include/footer.jspf" %>
