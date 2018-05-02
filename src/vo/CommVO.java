package vo;

public class CommVO {
	private String c_title, // 원글의 제목
					c_img, 
					c_video, 
					c_category, // 게시판 구분(0:우리들의 이야기)
					m_id, 
					c_status, // 상태값(0이 아니면 삭제된 글)
					c_idx, 
					c_writedate, // 글쓴 날짜
					c_content, // 원글 내용
					e_idx;
	
	

	public String getE_idx() {
		return e_idx;
	}

	public void setE_idx(String e_idx) {
		this.e_idx = e_idx;
	}

	public String getC_title() {
		return c_title;
	}

	public void setC_title(String c_title) {
		this.c_title = c_title;
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

	public String getC_content() {
		return c_content;
	}

	public void setC_content(String c_content) {
		this.c_content = c_content;
	}

}
