<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<div class="col-8">
	<jsp:include page="/common/inform.jsp"></jsp:include>
    <div class="card text-center mt-3">
        <div class="card-body">
            <div class="row">
                <%-- <img src="/PolyAsg/files/${ video.poster != null ? video.poster : 'images/video.jpg' }" alt="" class="img-fluid"> --%>
                <iframe width="100%" height="413" src="https://www.youtube.com/embed/${ video.videoId }" 
                   	title="YouTube video player" 
                   	frameborder="0" 
                   	allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" 
                   	allowfullscreen>
            	</iframe>
            </div>
            <div class="row p-1">
                <b>${ video.title }</b>
            </div>
            <div class="row p-1">
                <b>${ video.views } views</b>
            </div>
            <div class="row p-2">
                <b>${ video.description }</b>
            </div>
            <div class="card-footer text-right">
            	<a href="LikeVideo?videoId=${ item.id }" class="btn btn-success">like</a>
	            <a href="ShareVideo?videoId=${ item.id }" class="btn btn-info">share</a>
            </div>
        </div>
    </div>
</div>
<div class="col-4">
	<c:forEach var="item" items="${ videos }">
	    <div class="row border mt-3 mb-3">
	        <div class="col-5">
	        <a href="Detail?videoId=${ item.videoId }">
	        	<img src="/PolyAsg/files/${ item.poster != null ? item.poster : 'images/video.jpg' }" alt="" class="img-fluid">
	        </a>
	        </div>
	        <div class="col-7 border-left">${ item.title }</div>
	    </div>
	</c:forEach>
</div>