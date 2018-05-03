package dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import service.FactoryService;
import vo.EduVO;
import vo.MemberVO;

public class MemberDAO {

	public MemberVO login(String m_id, String m_pw) {

		MemberVO mvo = null;
		SqlSession ss = FactoryService.getFactory().openSession();
		HashMap<String, String> map = new HashMap<>();
		map.put("m_id", m_id);
		map.put("m_pw", m_pw);
		mvo = ss.selectOne("member.login", map);
		ss.close();
		return mvo;

	}
	
	public static  MemberVO[] search(String m_name) {
		MemberVO[] ar = null;
		
		SqlSession ss = FactoryService.getFactory().openSession();
		List<MemberVO> list = ss.selectList("member.search",m_name);
		
		if(list != null && list.size() > 0) {
			ar = new MemberVO[list.size()];
			
			list.toArray(ar);
		}
		ss.close();
		
		return ar;
	}
	
	public static  MemberVO[] search() {
		MemberVO[] ar = null;
		
		SqlSession ss = FactoryService.getFactory().openSession();
		List<MemberVO> list = ss.selectList("all_search");
		
		if(list != null && list.size() > 0) {
			ar = new MemberVO[list.size()];
			
			list.toArray(ar);
		}
		ss.close();
		
		return ar;
	}
	
	
	public static boolean delMem(String m_id, String m_status) {
		SqlSession ss = FactoryService.getFactory().openSession();
		boolean value = false; // 반환값

		if(m_status.equals("0")) {
			m_status = "1";
		}else 
			m_status = "0";
		
		HashMap<String, String> map = new HashMap<>();
		map.put("m_id", m_id);
		map.put("m_status", m_status);

		
		int cnt = ss.update("member.delMem", map);
		
		
		if (cnt > 0) {
			ss.commit();
			value = true;
		} else
			ss.rollback();

		ss.close();

		return value;
	}
	
	
	//교육정보 리스트 가져오기
	public static EduVO[] getEduList() {
		EduVO[] ar = null;
		SqlSession ss = FactoryService.getFactory().openSession();
		List<EduVO> list = ss.selectList("member.getEduList");
		if(list!=null && list.size() > 0) {
			ar = new EduVO[list.size()];
			
			list.toArray(ar);
		}
		ss.close();
		
		return ar;
	}
	//회원 정보 가져오기
	public static EduVO getEdu(String e_idx) {
		EduVO evo = null;
		SqlSession ss = FactoryService.getFactory().openSession();
		evo = ss.selectOne("member.getEdu",e_idx);
		ss.close();
		
		return evo;
	}
	//아이디 중복체크
	public static String chkId(String m_id) {
		String id = null;
		SqlSession ss = FactoryService.getFactory().openSession();
		id = ss.selectOne("member.checkId",m_id);
		ss.close();
		
		return id;
	}
	//회원가입
	public static boolean addMem(String m_id,String m_pwd,String name,String birthday,String gender,String[] email,String[] phone,String post_num,String addr,String school,String major,String classify,String c_num) {
		boolean value = false;
		HashMap<String, String> map = new HashMap<>();
		String m_email = email[0]+"@"+email[1];
		String m_phone = phone[0]+"-"+phone[1]+"-"+phone[2];
		
		map.put("m_id", m_id); 
		map.put("m_pw", m_pwd);
		map.put("m_name", name);
		map.put("m_birth", birthday);
		map.put("m_sex", gender);
		map.put("m_email", m_email);
		map.put("m_phone", m_phone);
		map.put("m_zip", post_num);
		map.put("m_addr", addr);
		map.put("m_school", school);
		map.put("m_major", major);
		map.put("m_grad", classify);
		map.put("m_process", c_num);
		
		SqlSession ss = FactoryService.getFactory().openSession();
		int cnt = ss.insert("member.addMem", map);
		if(cnt > 0) {
			ss.commit();
			value = true;
		}else
			ss.rollback();

		ss.close();
		
		return value;
	}
	
	//비밀번호 변경
	public static boolean changePwd(String pwd,String re_pwd,String m_id) {
		boolean value = false;
		SqlSession ss= FactoryService.getFactory().openSession();
		Map<String, String> map = new HashMap<>();
		map.put("m_pw", pwd);
		map.put("re_pw", re_pwd);
		map.put("m_id", m_id);
		int cnt = ss.update("member.editPw",map);
		if(cnt > 0) {
			ss.commit();
			value = true;
		}else
			ss.rollback();
		
		ss.close();
		return value;
	}
	
	
	//회원정보 수정
	public static boolean editMem(MemberVO mvo) {
		boolean value = false;
		SqlSession ss = FactoryService.getFactory().openSession();
		
		int cnt = ss.insert("member.editMem", mvo);
		if (cnt > 0) {
			ss.commit();
			value = true;
		} else
			ss.rollback();

		ss.close();
		return value;
	}
	
}
