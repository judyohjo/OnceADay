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
      <div class="card-header text-white" style="background-color: #ff52a0;"> New Diary </div>
      <div class="card-body">

        <form role="form" action="/onceADay/board/BWrite.onceADay" method="post">
        
          <div class="form-group">
            <label>Writer</label>
            <input type="text" class="form-control" name='#' value="${user_name}(${user_id})" readonly>
          	<input type="hidden" name="bName" value="${user_name}" />
          </div>
          
          <div class="form-group">
            <label>Title</label>
            <input type="text" class="form-control" name='bTitle'>
          </div>

          <div class="form-group">
            <label>Content</label>
            <textarea class="form-control" rows="5" name='bContent'></textarea>
          </div>

         <input type="submit" value="Submit" class="btn form-control"
			style="background-color: #ff52a0; margin-top: 0; height: 40px; color: white; border: 0px solid #f78f24; opacity: 0.8">
          &nbsp;&nbsp;
          <a class="btn form-control" href="/onceADay/board/BList.onceADay"
		style="cursor: pointer; margin-top: 0; height: 40px; color: white; background-color: orange; border: 0px solid #388E3C; opacity: 0.8">Cancel</a>
        </form>

      </div>
    </div>
  </div>
</div>
</div>
<%@ include file="../include/footer.jspf" %>
