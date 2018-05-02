package dao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;

import service.FactoryService;
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
	
}
