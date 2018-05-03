package dao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;

import service.FactoryService;

import vo.YeyakVO;

public class YeyakDAO {
	public static int insert(String Y_CON,String Y_DATE,String Y_NAME,String Y_PHONE,String Y_CATEGORY,String Y_TITLE) {
		SqlSession ss = FactoryService.getFactory().openSession();
		HashMap<String, String> map = new HashMap<>();
		map.put("Y_CON", Y_CON);
		map.put("Y_DATE", Y_DATE);
		map.put("Y_NAME", Y_NAME);
		map.put("Y_PHONE", Y_PHONE);
		map.put("Y_CATEGORY", Y_CATEGORY);
		map.put("Y_TITLE", Y_TITLE);
		int cnt = ss.insert("yeyak.insert", map);
		if(cnt > 0)
			ss.commit();
		else
			ss.rollback();
		ss.close();
		return cnt;
	}
	public static YeyakVO[] select(String Y_TITLE) {
		YeyakVO[] ar =null;
		SqlSession ss = FactoryService.getFactory().openSession();
		List<YeyakVO> list = ss.selectList("yeyak.select",Y_TITLE);
		if(list != null && list.size() > 0) {
			ar = new YeyakVO[list.size()];
			list.toArray(ar);
		}
		ss.close();
		return ar;
	}
}
