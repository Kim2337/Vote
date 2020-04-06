package vote.domain;

public class VoteDto {
	int votenum;
	String title; 
	String subtitle;
	int empno;
	public int getVotenum() {
		return votenum;
	}
	public void setVotenum(int votenum) {
		this.votenum = votenum;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getSubtitle() {
		return subtitle;
	}
	public void setSubtitle(String subtitle) {
		this.subtitle = subtitle;
	}
	public int getEmpno() {
		return empno;
	}
	public void setEmpno(int empno) {
		this.empno = empno;
	}
	
	 @Override public String toString() { 
		 return "VoteDto [votenum=" + votenum +
	 ", title=" + title + ", subtitle=" + subtitle + ", empno=" + empno + "]"; }
	 
	
	
	
	
}
