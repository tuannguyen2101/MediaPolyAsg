<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<div class="col mt-4">
	<jsp:include page="/common/inform.jsp"></jsp:include>
    <ul class="nav nav-tabs" id="myTab" role="tablist">
        <li class="nav-item" role="presentation">
            <a class="nav-link active" id="VideoEditing-tab" data-toggle="tab" href="#VideoEditing"
                role="tab" aria-controls="VideoEditing" aria-selected="true">Video Editting</a>
        </li>
        <li class="nav-item" role="presentation">
            <a class="nav-link" id="VideoList-tab" data-toggle="tab" href="#VideoList" role="tab"
                aria-controls="VideoList" aria-selected="false">Video List</a>
        </li>
    </ul>
    <div class="tab-content" id="myTabContent">
        <div class="tab-pane fade show active" id="VideoEditing" role="tabpanel"
            aria-labelledby="VideoEditing-tab">
            <form action="" method="post" enctype="multipart/form-data">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col-4">
                                <div class="border p-3">
                                    <img src="/PolyAsg/files/${ video.poster != null ? video.poster : 'images/video.jpg' }" alt="" class="img-fluid">
                                    
                                    
                                    
                                    
                                    <div class="input-group mb-3 mt-3">
                                        <div class="form-group">
					                    <label for="cover">Input video poster:</label>
					                    <input type="file" class="form-control-file" name="cover" id="cover" placeholder="input file"
					                        aria-describedby="fId" required="required">
					                </div>
                                    </div>
                                    
                                    
                                    
                                </div>
                            </div>
                            <div class="col-7">
                                <div class="form-group">
                                    <label for="youtubeId">Video ID</label>
                                    <input type="text" class="form-control" name="videoId" id="youtubeId"
                                        aria-describedby="youtubeIdHid" placeholder="Youtube ID" value="${ video.videoId }" required="required">
                                    <small id="youtubeIdHid" class="form-text text-muted">youtube id is
                                        required</small>
                                </div>
                                <div class="form-group">
                                    <label for="videoTitle">Video Title</label>
                                    <input type="text" class="form-control" name="title"
                                        id="videoTitle" aria-describedby="videoTitleHid"
                                        placeholder="Video Title"  value="${ video.title }" required="required">
                                    <small id="videoTitleHid" class="form-text text-muted">video title is
                                        required</small>
                                </div>
                                <div class="form-group">
                                    <label for="viewCount">View Count</label>
                                    <input type="text" class="form-control" name="views" id="viewCount"
                                        aria-describedby="viewCountHid" placeholder="View Count" value="${ video.views }">
                                    <small id="viewCountHid" class="form-text text-muted">view count is
                                        required</small>
                                </div>
                                <div class="form-check form-check-inline">
                                    <label><input type="radio" class="form-check-input" value="true"
                                            name="active" id="status" ${ video.active ? 'checked' : '' }>Active</label>
                                    <label><input type="radio" class="form-check-input" value="false"
                                            name="active" id="status" ${ !video.active ? 'checked' : '' }>Inactive</label>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <label for="description">Description</label>
                                <textarea name="description" id="description" cols="30" rows="6"
                                    class="form-control">${ video.description }</textarea>
                            </div>
                        </div>
                    </div>
                    <div class="card-footer text-muted">
                        <button class="btn btn-primary" formaction="Admin/VideosManagement/create">create</button>
                        <button class="btn btn-warning" formaction="Admin/VideosManagement/update">Update</button>
                        <button class="btn btn-danger" formaction="Admin/VideosManagement/delete">Delete</button>
                        <button class="btn btn-info" formaction="Admin/VideosManagement/reset">Reset</button>
                    </div>
                </div>
            </form>
        </div>
        <div class="tab-pane fade" id="VideoList" role="tabpanel" aria-labelledby="VideoList-tab">
            <table class="table">
            	<thead class="thead-dark">
	                <tr>
	                    <th>Video ID</th>
	                    <th>Video Title</th>
	                    <th>Poster</th>
	                    <th>View Count</th>
	                    <th>Status</th>
	                    <th>&nbsp;Action</th>
	                </tr>
                <thead>
                <tbody>
	                <c:forEach var="item" items="${ videos }">
		                <tr>
		                    <td>${ item.videoId }</td>
		                    <td>${ item.title }</td>
		                    <td>${ item.poster }</td>
		                    <td>${ item.views }</td>
		                    <td>${ item.active ? 'Active' : 'Inactive' }</td>
		                    <td>
		                        <a href="Admin/VideosManagement/edit?videoId=${ item.videoId }" class="btn btn-warning">
		                        	<i class="fa fa-edit mr-2" aria-hidden="true"></i>Edit
		                        </a>
		                        <a href="Admin/VideosManagement/delete?videoId=${ item.videoId }" class="btn btn-danger">
		                        	<i class="fa fa-trash mr-2" aria-hidden="true"></i>Delete
		                        </a>
		                    </td>
		                </tr>
	                </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</div>