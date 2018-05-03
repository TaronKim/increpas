package vo;

public class StudyVO {
	String c_idx,//게시판 글번호
	 c_writedate,//게시판 작성일
	     c_title,//게시판 제목
	   c_content,//게시판 내용
	       c_img,//게시판 썸네일
	     c_video,//게시판 비디오 분류
	  c_category,//게시판 글분류
	        m_id,//게시판 작성자
	    c_status;//게시판 글 삭제여부

	public String getC_idx() {
		return c_idx;
	}

	public void setC_idx(String c_idx) {
		this.c_idx = c_idx;
	}

	public String getC_writedate() {
		return c_writedate;
	}

	public void setC_writedate(String c_writedate) {
		this.c_writedate = c_writedate;
	}

	public String getC_title() {
		return c_title;
	}

	public void setC_title(String c_title) {
		this.c_title = c_title;
	}

	public String getC_content() {
		return c_content;
	}

	public void setC_content(String c_content) {
		this.c_content = c_content;
	}

	public String getC_img() {
		return c_img;
	}

	public void setC_img(String c_img) {
		this.c_img = c_img;
	}

	public String getC_video() {
		return c_video;
	}

	public void setC_video(String c_video) {
		this.c_video = c_video;
	}

	public String getC_category() {
		return c_category;
	}

	public void setC_category(String c_category) {
		this.c_category = c_category;
	}

	public String getM_id() {
		return m_id;
	}

	public void setM_id(String m_id) {
		this.m_id = m_id;
	}

	public String getC_status() {
		return c_status;
	}

	public void setC_status(String c_status) {
		this.c_status = c_status;
	}
	
	
}
