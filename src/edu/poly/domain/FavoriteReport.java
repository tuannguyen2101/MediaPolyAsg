package edu.poly.domain;

import java.util.Date;

public class FavoriteReport {
	private String videoTitle;
	private Long favoriteCount;
	private Date newsDate;
	private Date oldsDate;

	public FavoriteReport() {

	}

	public FavoriteReport(String videoTitle, Long favoriteCount, Date newsDate, Date oldsDate) {
		super();
		this.videoTitle = videoTitle;
		this.favoriteCount = favoriteCount;
		this.newsDate = newsDate;
		this.oldsDate = oldsDate;
	}

	public String getVideoTitle() {
		return videoTitle;
	}

	public void setVideoTitle(String videoTitle) {
		this.videoTitle = videoTitle;
	}

	public Long getFavoriteCount() {
		return favoriteCount;
	}

	public void setFavoriteCount(Long favoriteCount) {
		this.favoriteCount = favoriteCount;
	}

	public Date getNewsDate() {
		return newsDate;
	}

	public void setNewsDate(Date newsDate) {
		this.newsDate = newsDate;
	}

	public Date getOldsDate() {
		return oldsDate;
	}

	public void setOldsDate(Date oldsDate) {
		this.oldsDate = oldsDate;
	}

}
