package dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import service.FactoryService;
import vo.EduVO;
import vo.ProjectVO;

public class ProjectDAO {
	
	public static ProjectVO projectView(String c_idx) {
		ProjectVO pvo = null;
		
		SqlSession ss = FactoryService.getFactory().openSession();
		pvo = ss.selectOne("project.projectView",c_idx);
		ss.close();
		return pvo;
	}
	
	
	//전체 게시물 검색
	public static ProjectVO[] projectList(int begin, int end, int m_type) {
		
		ProjectVO[] ar = null;
		SqlSession ss = FactoryService.getFactory().openSession();
		Map<String, Integer> map = new HashMap<>();
		map.put("begin", begin);
		map.put("end", end);
		map.put("m_type", m_type);
		
		List<ProjectVO> list = ss.selectList("project.projectList", map);
		
		if(list != null && list.size() > 0) {
			ar = new ProjectVO[list.size()];
			list.toArray(ar);
		}
		ss.close();
		
		return ar;
		
	}
	
	//전체 게시물 수
	public static int getTotalCount() {
		
		SqlSession ss = FactoryService.getFactory().openSession();
		int cnt = ss.selectOne("project.totalCount");
		ss.close();
		return cnt;
		
	}
	
	//원글을 저장하는 기능
	public static boolean insertProject(String title, String content, String fname, 
			String writer, String e_idx) {
		
		boolean check = false;
		
		SqlSession ss = FactoryService.getFactory().openSession();
		Map<String, String> map = new HashMap<String, String>();
		map.put("c_title", title);
		map.put("c_content", content);
		map.put("c_img", fname);
		map.put("m_id", writer);
		map.put("e_idx", e_idx);
		
		int cnt = ss.insert("project.add", map);
		
		System.out.println(cnt);
		if(cnt > 0) {
			ss.commit();
			check = true;
		}else {
			ss.rollback();
		}	
		
		ss.close();
		
		return check;
	}
	
	//글작성시 EduVO의 교육과정 검색
	public static EduVO[] getEdu() {
		EduVO[] ar = null;
		
		SqlSession ss = FactoryService.getFactory().openSession();
		
		List<EduVO> list =  ss.selectList("project.getEdu");
		if(list !=null && list.size() > 0) {
			ar = new EduVO[list.size()];
			
			list.toArray(ar);
		}
		ss.close();
		
		return ar;
	}
	
	//project의 게시물 list 출력시 교육과정 정보 select
	public static ProjectVO searchProject(String e_idx) {
		
		ProjectVO pvo = null;
		SqlSession ss = FactoryService.getFactory().openSession();
		pvo = ss.selectOne("project.searchEdu",e_idx);
		ss.close();
		
		return pvo;
		
	}
	
	//수정
	public static boolean projectUpdate(String c_idx, String title, String content, String fname, String e_idx) {
		
		boolean value = false;
		SqlSession ss = FactoryService.getFactory().openSession();
		HashMap<String, String> map = new HashMap<String, String>();
		map.put("c_idx", c_idx);
		map.put("c_title", title);
		map.put("c_content", content);
		//map.put("writer", writer);
		map.put("c_img", fname);
		map.put("e_idx", e_idx);
		
		
		int cnt = ss.update("project.projectUpdate", map);
		if(cnt > 0) {
			value = true;
			ss.commit();
		}else {
			ss.rollback();
		}
		ss.close();
		
		return value;
		
	}
	
	//삭제
	public static boolean projectDelete(String c_idx) {
		
		boolean value = false;
		SqlSession ss = FactoryService.getFactory().openSession();
		
		//System.out.println(c_idx);
		
		int cnt = ss.update("project.projectDelete",c_idx);
		
		if(cnt > 0) {
			value = true;
			ss.commit();
		}else {
			ss.rollback();
		}
		ss.close();
		
		return value;
		
	}
	
}
