package vo;

public class ProjectVO { 
	private String c_idx,//글번호
    				c_writedate,//글작성일
    				c_title,//글제목
    				c_content,//글내용
    				c_img,//이미지
    				m_id,//작성자
    				c_category,//글종류 구분
    				e_idx,
    				c_status;//글삭제여부 구분
				

	public String getE_idx() {
		return e_idx;
	}

	public void setE_idx(String e_idx) {
		this.e_idx = e_idx;
	}

	EduVO evo;
	 
	public EduVO getEvo() {
		return evo;
	}

	public void setEvo(EduVO evo) {
		this.evo = evo;
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

	public String getM_id() {
		return m_id;
	}

	public void setM_id(String m_id) {
		this.m_id = m_id;
	}

	public String getC_category() {
		return c_category;
	}

	public void setC_category(String c_category) {
		this.c_category = c_category;
	}

	public String getC_status() {
		return c_status;
	}

	public void setC_status(String c_status) {
		this.c_status = c_status;
	}
	
	
}
