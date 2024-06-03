package day0425;

public class TestVO {
	private int deptno;
	private String dname;
	private String loc;
	
	public TestVO() {
		System.out.println("TestVO의 기본생성자");
	}
	public TestVO(int deptno, String dname, String loc) {
		this.deptno = deptno;
		this.dname = dname;
		this.loc = loc;
		System.out.println("TestVO의 매개변수 있는 생성자");
	}
	
	public int getDeptno() {
		System.out.println("부서번호 얻기");
		return deptno;
	}
	public void setDeptno(int deptno) {
		System.out.println("부서번호 설정");
		this.deptno = deptno;
	}
	public String getDname() {
		return dname;
	}
	public void setDname(String dname) {
		this.dname = dname;
	}
	public String getLoc() {
		return loc;
	}
	public void setLoc(String loc) {
		this.loc = loc;
	}
	@Override
	public String toString() {
		return "TestVO [deptno=" + deptno + ", dname=" + dname + ", loc=" + loc + "]";
	}
	
	
	
	
}
