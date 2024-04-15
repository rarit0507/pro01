package org.gongreung.ctrl.dto;

public class Data {
	private int no;
	private String title;
	private String content;
	private String resdate;
	private int visited;
	private String datafile;
	public Data() { }
	public Data(int no, String title, String content, String resdate, int visited, String datafile) {
		super();
		this.no = no;
		this.title = title;
		this.content = content;
		this.resdate = resdate;
		this.visited = visited;
		this.datafile = datafile;
	}
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
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
	public String getResdate() {
		return resdate;
	}
	public void setResdate(String resdate) {
		this.resdate = resdate;
	}
	public int getVisited() {
		return visited;
	}
	public void setVisited(int visited) {
		this.visited = visited;
	}
	public String getDatafile() {
		return datafile;
	}
	public void setDatafile(String datafile) {
		this.datafile = datafile;
	}
	@Override
	public String toString() {
		return "Data [no=" + no + ", title=" + title + ", content=" + content + ", resdate=" + resdate + ", visited="
				+ visited + ", datafile=" + datafile + "]";
	}
	
	
}