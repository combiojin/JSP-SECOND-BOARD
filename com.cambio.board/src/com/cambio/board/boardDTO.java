package com.cambio.board;

public class boardDTO {
	
	private String NUM;
	private String title;
	private String content;
	private String moddate;
	private String writer;
	
	public boardDTO(String nUM, String title, String content, String moddate, String writer) {
		super();
		NUM = nUM;
		this.title = title;
		this.content = content;
		this.moddate = moddate;
		this.writer = writer;
	}
	
	public boardDTO() {
		// TODO Auto-generated constructor stub
	}
	
	@Override
	public String toString() {
		return "boardDTO [NUM=" + NUM + ", title=" + title + ", content=" + content + ", moddate=" + moddate
				+ ", writer=" + writer + "]";
	}
	
	public String getNUM() {
		return NUM;
	}

	public void setNUM(String nUM) {
		NUM = nUM;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getModdate() {
		return moddate;
	}

	public void setModdate(String moddate) {
		this.moddate = moddate;
	}

	public String getWriter() {
		return writer;
	}

	public void setWriter(String writer) {
		this.writer = writer;
	}
	
	
}
