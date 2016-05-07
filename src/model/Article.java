package model;

public class Article {
private int id;
private String title;
private int year;
private String type;
private String abstractText;
private String webURL;

public Article() {}
public Article(String title, int year, String type, String abstractText,
		String webURL) {
	super();
	this.title = title;
	this.year = year;
	this.type = type;
	this.abstractText = abstractText;
	this.webURL = webURL;
}
public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public String getTitle() {
	return title;
}
public void setTitle(String title) {
	this.title = title;
}
public int getYear() {
	return year;
}
public void setYear(int year) {
	this.year = year;
}
public String getType() {
	return type;
}
public void setType(String type) {
	this.type = type;
}
public String getAbstractText() {
	return abstractText;
}
public void setAbstractText(String abstractText) {
	this.abstractText = abstractText;
}
public String getWebURL() {
	return webURL;
}
public void setWebURL(String webURL) {
	this.webURL = webURL;
}



}
