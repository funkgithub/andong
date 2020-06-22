package myservlet.models;

import java.io.Serializable;

public class EmployeeDTO implements Serializable {
	private String last_name;
	private String job_id;
	private int salary;
	
	
	public EmployeeDTO(String last_name, String job_id, int salary) {
		super();
		this.last_name = last_name;
		this.job_id = job_id;
		this.salary = salary;
	}
	public String getLast_name() {
		return last_name;
	}
	public void setLast_name(String last_name) {
		this.last_name = last_name;
	}
	public String getJob_id() {
		return job_id;
	}
	public void setJob_id(String job_id) {
		this.job_id = job_id;
	}
	public int getSalary() {
		return salary;
	}
	public void setSalary(int salary) {
		this.salary = salary;
	}
	@Override
	public String toString() {
		return "EmployeeDTO [last_name=" + last_name + ", job_id=" + job_id + ", salary=" + salary + "]";
	}
	
	
}
