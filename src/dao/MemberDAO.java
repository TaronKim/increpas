package dao;

import java.util.HashMap;

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
		System.out.println(m_id+m_pw);
		mvo = ss.selectOne("member.login", map);
		ss.close();
		return mvo;

	}
}
