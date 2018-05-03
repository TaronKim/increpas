package dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import service.FactoryService;
import vo.CommVO;

public class CommDAO {

	// 목록 기능 - we_story.jsp에서 호출한다
	public static CommVO[] getList(int begin, int end, int m_type) {

		CommVO[] value = null;
		SqlSession ss = FactoryService.getFactory().openSession();
		HashMap<String, Integer> map = new HashMap<>();
		map.put("begin", begin);
		map.put("end", end);
		map.put("m_type", m_type);
		List<CommVO> list = ss.selectList("comm.commList", map);
		if (list != null && list.size() > 0) {
			value = new CommVO[list.size()];
			list.toArray(value);
		}
		ss.close();

		return value;
	}

	// 전체게시물의 수를 반환하는 기능 we_story.jsp에서 호출
	public static int getTotalCount() {
		SqlSession ss = FactoryService.getFactory().openSession();

		int cnt = ss.selectOne("comm.totalCount");
		ss.close();
		return cnt;
	}

	// 원글을 저장하는 기능
	public static void insert(String c_title, String c_img, String c_video, String m_id, String c_content) {

		SqlSession ss = FactoryService.getFactory().openSession();
		HashMap<String, String> map = new HashMap<String, String>();
		map.put("c_title", c_title);
		map.put("c_img", c_img);
		map.put("c_video", c_video);
		map.put("m_id", m_id);
		map.put("c_content", c_content);

		int cnt = ss.insert("comm.add", map);
		if (cnt > 0)
			ss.commit();
		else
			ss.rollback();
		ss.close();
	}

	public static CommVO getComm(String c_idx) {
		SqlSession ss = FactoryService.getFactory().openSession();
		System.out.println(c_idx);
		CommVO vo = ss.selectOne("comm.getComm", c_idx);
		ss.close();

		return vo;
	}

	// 기본키를 전달 받아 삭제하는 기능
	public static boolean delComm(String c_idx) {
		SqlSession ss = FactoryService.getFactory().openSession();
		boolean value = false; // 반환값

		HashMap<String, String> map = new HashMap<>();
		map.put("c_idx", c_idx);

		int cnt = ss.update("comm.delComm", map);
		if (cnt > 0) {
			ss.commit();
			value = true;
		} else
			ss.rollback();

		ss.close();

		return value;
	}

	// 원글 수정 기능
	public static boolean editComm(String c_idx, String c_title, String c_img, String c_content) {
		boolean value = false;

		SqlSession ss = FactoryService.getFactory().openSession();
		HashMap<String, String> map = new HashMap<String, String>();
		map.put("c_idx", c_idx);
		map.put("c_title", c_title);
		map.put("c_img", c_img);

		map.put("c_content", c_content);

		int cnt = ss.update("comm.editComm", map);
		if (cnt > 0) {
			ss.commit();
			value = true;
		} else
			ss.rollback();
		ss.close();

		return value;
	}

	// 검색 게시물
	public static CommVO[] sProjectList(int begin, int end, int m_type, String c_value, String keyword) {

		CommVO[] ar = null;
		SqlSession ss = FactoryService.getFactory().openSession();
		Map<String, Object> map = new HashMap<>();
		map.put("begin", begin);
		map.put("end", end);
		map.put("m_type", m_type);
		map.put("c_value", c_value);
		map.put("keyword", keyword);

		List<CommVO> list = ss.selectList("comm.scommList", map);

		if (list != null && list.size() > 0) {
			ar = new CommVO[list.size()];
			list.toArray(ar);
		}
		ss.close();

		return ar;

	}

	// 검색한 회원의 수 반환
	public static int sGetTotalCount(String m_type, String c_value, String keyword) {

		SqlSession ss = FactoryService.getFactory().openSession();
		Map<String, String> map = new HashMap<>();
		map.put("m_type", m_type);
		map.put("c_value", c_value);
		map.put("keyword", keyword);
		int cnt = ss.selectOne("comm.sTotalCount", map);
		ss.close();
		return cnt;

	}

}
