package dao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;

import service.FactoryService;
import vo.EduVO;


public class eduDAO {
	private String E_CATEGORY;
	public void setCategory(String E_CATEGORY) {
		this.E_CATEGORY = E_CATEGORY;
	}
	public static EduVO[] getList() {
		SqlSession ss = FactoryService.getFactory().openSession();
		List<EduVO> list = ss.selectList("edu.listall");
		EduVO[] ar;
		if(list != null && list.size() > 0) {
			ar = new EduVO[list.size()];
			list.toArray(ar);
		}else
			ar = null;
		ss.close();
		return ar;
	}
	public static EduVO select(String E_IDX) {
		SqlSession ss = FactoryService.getFactory().openSession();
		EduVO evo = ss.selectOne("edu.select", E_IDX);
		ss.close();
		return evo;
	}
	public static void insert(String E_TITLE, String E_CONTENT, String E_STARTDATE, String E_ENDDATE, String E_IMG,String E_IMG_S, String E_CATEGORY) {
		SqlSession ss = FactoryService.getFactory().openSession();
		HashMap<String, String> map = new HashMap<String, String>();
		map.put("E_TITLE", E_TITLE);
		map.put("E_CONTENT", E_CONTENT);
		map.put("E_STARTDATE", E_STARTDATE);
		map.put("E_ENDDATE", E_ENDDATE);
		map.put("E_IMG", E_IMG);
		map.put("E_IMG_S", E_IMG_S);
		map.put("E_CATEGORY", E_CATEGORY);
		int cnt = ss.insert("edu.insert", map);
		if(cnt > 0)
			ss.commit();
		else
			ss.rollback();
		ss.close();
	}
	public static boolean del(String E_IDX) {
		SqlSession ss = FactoryService.getFactory().openSession();
		boolean value = false;//반환값
		HashMap<String, String> map = new HashMap<>();
		map.put("E_IDX", E_IDX);	
		int cnt = ss.update("edu.del", map);
		if(cnt > 0) {
			ss.commit();
			value = true;
		}else
			ss.rollback();
		
		ss.close();
		
		return value;
	}
	public static boolean restore(String E_IDX) {
		SqlSession ss = FactoryService.getFactory().openSession();
		boolean value = false;//반환값
		HashMap<String, String> map = new HashMap<>();
		map.put("E_IDX", E_IDX);	
		int cnt = ss.update("edu.restore", map);
		if(cnt > 0) {
			ss.commit();
			value = true;
		}else
			ss.rollback();
		
		ss.close();
		
		return value;
	}
	public static boolean update(String E_IDX, String E_TITLE, String E_CONTENT, String E_IMG, String E_IMG_S, String E_STARTDATE, String E_ENDDATE, String E_CATEGORY) {
		boolean value = false;
		SqlSession ss = FactoryService.getFactory().openSession();
		HashMap<String, String> map = new HashMap<String, String>();
		map.put("E_IDX", E_IDX);
		map.put("E_TITLE", E_TITLE);
		map.put("E_CONTENT", E_CONTENT);
		map.put("E_CATEGORY", E_CATEGORY);
		map.put("E_STARTDATE", E_STARTDATE);
		map.put("E_ENDDATE", E_ENDDATE);
		if(E_IMG != null) {
		map.put("E_IMG", E_IMG);
		map.put("E_IMG_S", E_IMG_S);
		}
		//System.out.print(E_IDX+"+"+E_TITLE+"+"+E_CONTENT+"+"+E_CATEGORY+"+"+E_STARTDATE+"+"+E_ENDDATE+"+"+E_IMG+"+"+E_IMG_S);
		int cnt = ss.update("edu.update", map);
		if(cnt > 0) {
			ss.commit();
			value = true;
		}else
			ss.rollback();
		ss.close();
		return value;
	}
}
