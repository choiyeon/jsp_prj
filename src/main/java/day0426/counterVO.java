package day0426;

public class counterVO {
	private int cnt;
	
	

	public counterVO() {
	}

	public counterVO(int cnt) {
		this.cnt = cnt;
		cnt++;
	}

	public int getCnt() {
		return cnt;
	}

	public void setCnt(int cnt) {
		this.cnt = cnt;
	}

	@Override
	public String toString() {
		return "counterVO [cnt=" + cnt + "]";
	}
	
	
}
