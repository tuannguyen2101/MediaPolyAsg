<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<div class="col-12">
    <div class="row p-2">
    
	    <c:forEach var="item" items="${ videos }">
	        <div class="col-4 mt-2">
	            <div class="card text-center">
	                <div class="card-body">
		                <a href="Detail?videoId=${ item.videoId }">
		                    <img src="/PolyAsg/files/${item.poster}" width="100%" height="100%" alt="" class="img-fluid">
		                </a>
	                    <%-- <iframe width="100%" src="https://www.youtube.com/embed/${item.videoId}" 
	                    	title="YouTube video player" 
	                    	frameborder="0" 
	                    	allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" 
	                    	allowfullscreen>
	                    </iframe> --%>
	                    <div class="row border-top mt-2">
	                        <b>${ item.title }</b>
	                    </div>
	                </div>
	                <div class="card-footer text-right">
	                    <a href="LikeVideo?videoId=${ item.videoId }" class="btn btn-success">like</a>
	                    <a href="ShareVideo?videoId=${ item.videoId }" class="btn btn-info">share</a>
	                </div>
	            </div>
	        </div>
	    </c:forEach>
        
    </div>
    <!-- <div class="row">
        <div class="col">
            <nav aria-label="Page navigation">
                <ul class="pagination justify-content-center">
                    <li class="page-item disabled">
                        <a class="page-link" href="#" aria-label="Previous">
                            <span aria-hidden="true">&laquo;</span>
                            <span class="sr-only">Previous</span>
                        </a>
                    </li>
                    <li class="page-item active"><a class="page-link" href="#">&lt;</a></li>
                    <li class="page-item"><a class="page-link" href="#">1</a></li>
                    <li class="page-item"><a class="page-link" href="#">2</a></li>
                    <li class="page-item"><a class="page-link" href="#">3</a></li>
                    <li class="page-item"><a class="page-link" href="#">&gt;</a></li>
                    <li class="page-item">
                        <a class="page-link" href="#" aria-label="Next">
                            <span aria-hidden="true">&raquo;</span>
                            <span class="sr-only">Next</span>
                        </a>
                    </li>
                </ul>
            </nav>
        </div>
    </div> -->
</div>
<!-- <div class="col-3">
    <div class="row mt-3 mb-3">
        <div class="col">
            <div class="card">
                <div class="card-header">
                    <i class="fa fa-thumbs-up" aria-hidden="true"></i>Favorite
                </div>
                <ul class="list-group list-group-flush">
                    <div class="list-group-item">Laptop</div>
                    <div class="list-group-item">Computer</div>
                    <div class="list-group-item">Laptop</div>
                    <div class="list-group-item">Laptop</div>
                    <div class="list-group-item">Laptop</div>
                    <div class="list-group-item">Laptop</div>
                    <div class="list-group-item">Laptop</div>
                </ul>
            </div>
        </div>
    </div>
</div> -->