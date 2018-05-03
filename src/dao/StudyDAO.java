package dao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;

import service.FactoryService;
import vo.StudyVO;

public class StudyDAO {

	public static StudyVO[] getList(int begin, int end, String c_video) {
		StudyVO[] ar = null;
		SqlSession ss = FactoryService.getFactory().openSession();

		HashMap<String, String> map = new HashMap<>();
		map.put("begin", String.valueOf(begin));
		map.put("end", String.valueOf(end));
		map.put("c_video", c_video);

		List<StudyVO> list = ss.selectList("study.studyList", map);
		if (list != null && list.size() > 0) {
			ar = new StudyVO[list.size()];

			list.toArray(ar);
		}
		ss.close();

		return ar;
	}

	// 전체 게시물의 수를 반환하는 기능 - list.jsp에서 호출!
	public static int getTotalCount(String c_video) {
		SqlSession ss = FactoryService.getFactory().openSession();

		int cnt = ss.selectOne("study.totalCount", c_video);
		ss.close();
		return cnt;
	}

	public static StudyVO getStudy(String c_idx) {
		StudyVO vo = null;
		SqlSession ss = FactoryService.getFactory().openSession();
		
		vo = ss.selectOne("study.getStudy", c_idx);
		ss.close();
		
		return vo;
	}
	// 원글을 저장하는 기능
		public static boolean insertStudy(String subject, String m_id, String content, String c_video, String fname 
				) {
			boolean value = false;
			SqlSession ss = FactoryService.getFactory().openSession();
			HashMap<String, String> map = new HashMap<String, String>();
			map.put("c_title", subject);
			map.put("m_id", m_id);
			map.put("c_content", content);
			map.put("c_img", fname);
			map.put("c_video", c_video);

			int cnt = ss.insert("study.addStudy", map);
			if (cnt > 0) {
				ss.commit();
				value = true;
			}else
				ss.rollback();
			
			ss.close();
			
			return value;
		}
		
		public static boolean delStudy(String c_idx) {
			boolean value = false;
			SqlSession ss= FactoryService.getFactory().openSession();
			int cnt = ss.update("study.delStudy",Integer.parseInt(c_idx));
			if(cnt > 0) {
				ss.commit();
				value = true;
			}else
				ss.rollback();
			
			ss.close();
			return value;
		}
		
		// 원글을 수정하는 기능
		public static boolean editStudy(String c_idx, String c_title, String c_content, String fname
				) {
			boolean value = false;
			SqlSession ss = FactoryService.getFactory().openSession();
			HashMap<String, String> map = new HashMap<String, String>();
			map.put("c_idx", c_idx);
			map.put("c_title", c_title);
			map.put("c_content", c_content);
			if (fname != null) {
				map.put("c_img", fname);
			}

			int cnt = ss.insert("study.editStudy", map);
			if (cnt > 0) {
				ss.commit();
				value = true;
			} else
				ss.rollback();

			ss.close();
			return value;
		}
}
