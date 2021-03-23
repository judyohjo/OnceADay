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

<div class="row">
  <div class="col-lg-12">
    <div class="card">
      <div class="card-header text-white" style="background-color: #ff52a0;">${contents.bId}Content</div>
      <div class="card-body">       
        
          <div class="form-group">
            <label>Date</label>
            <input type="text" class="form-control" name='bDate' value="${contents.bDate}" readonly>
          </div>
	      
	  <div class="form-group">
            <label>Writer</label>
            <input type="text" class="form-control" name='bName' value="${contents.bName}" readonly>
          </div>
          
          <div class="form-group">
            <label>Title</label>
            <input type="text" class="form-control" name='bTitle' value="${contents.bTitle}" readonly>
          </div>

          <div class="form-group">
            <label>Content</label>
            <textarea class="form-control" rows="5" name='bContent' readonly>${contents.bContent}</textarea>
          </div>
         
          <a class="btn" href="BList.onceADay"
		style="background-color: #ff52a0; height: 40px; color: white; border: 0px solid #388E3C; opacity: 0.8">Content</a>&nbsp;&nbsp;
          <a class="btn" href="BUpdateView.onceADay?bId=${contents.bId}"
		style="background-color: orange; height: 40px; color: white; border: 0px solid #388E3C; opacity: 0.8">Edit</a>&nbsp;&nbsp;
          <a class="btn" href="BDelete.onceADay?bId=${contents.bId}" onclick="return confirm('Do you really want to delete?')"
		style="background-color: red; height: 40px; color: white; border: 0px solid #388E3C; opacity: 0.8">Delete</a>&nbsp;&nbsp;
       
      </div>
    </div>
  </div>
</div>
</div>
<%@ include file="../include/footer.jspf" %>
