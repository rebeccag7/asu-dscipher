package model;

import java.util.ArrayList;

public class AuthorSurvey {
	private ArrayList<String> field;
	private int noOfStudies;
	private String design;
	private String data;
	private int noOfHypotheses;
	private int noOfDV;
	private int noOfIV;
	private String test;
	private String scale;
	private int noOfGroups;
	private String groupAssignment;
	private String conditions;
	private String noOfSubjects;
	private String sizes;
	
	public String getData() {
		return data;
	}
	public void setData(String data) {
		this.data = data;
	}
	public int getNoOfHypotheses() {
		return noOfHypotheses;
	}
	public void setNoOfHypotheses(int noOfHypotheses) {
		this.noOfHypotheses = noOfHypotheses;
	}
	public int getNoOfDV() {
		return noOfDV;
	}
	public void setNoOfDV(int noOfDV) {
		this.noOfDV = noOfDV;
	}
	public int getNoOfIV() {
		return noOfIV;
	}
	public void setNoOfIV(int noOfIV) {
		this.noOfIV = noOfIV;
	}
	public String getTest() {
		return test;
	}
	public void setTest(String test) {
		this.test = test;
	}
	public String getScale() {
		return scale;
	}
	public void setScale(String scale) {
		this.scale = scale;
	}
	public int getNoOfGroups() {
		return noOfGroups;
	}
	public void setNoOfGroups(int noOfGroups) {
		this.noOfGroups = noOfGroups;
	}
	public String getGroupAssignment() {
		return groupAssignment;
	}
	public void setGroupAssignment(String groupAssignment) {
		this.groupAssignment = groupAssignment;
	}
	public String getConditions() {
		return conditions;
	}
	public void setConditions(String conditions) {
		this.conditions = conditions;
	}
	
	public String getSizes() {
		return sizes;
	}
	public void setSizes(String sizes) {
		this.sizes = sizes;
	}
	public ArrayList<String> getField() {
		return field;
	}
	public void setField(ArrayList<String> field) {
		this.field = field;
	}
	public int getNoOfStudies() {
		return noOfStudies;
	}
	public void setNoOfStudies(int noOfStudies) {
		this.noOfStudies = noOfStudies;
	}
	public String getDesign() {
		return design;
	}
	public void setDesign(String design) {
		this.design = design;
	}
	public String getNoOfSubjects() {
		return noOfSubjects;
	}
	public void setNoOfSubjects(String noOfSubjects) {
		this.noOfSubjects = noOfSubjects;
	}
}
