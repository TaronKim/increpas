package dao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import service.FactoryService;
import vo.JobVO;


public  class JobDAO {
      
      public static JobVO[] getList(int begin, int end, int m_type) {
         JobVO[] ar = null;          
         SqlSession ss = FactoryService.getFactory().openSession();      
         HashMap<String, Integer> map = new HashMap<>();
         map.put("begin", begin);
         map.put("end", end);
         map.put("m_type", m_type);
         List<JobVO> list = ss.selectList("job.jobList", map);
         if(list != null && list.size() > 0) {
            ar = new JobVO[list.size()];
            list.toArray(ar);
         }
         ss.close();         
         return ar;
      }
         
      public static int getTotalCount() {
         SqlSession ss =FactoryService.getFactory().openSession();      
         int cnt = ss.selectOne("job.totalCount");
         ss.close();      
         return cnt;
      }    
      
      public static int getTotalCountAdmin() { 
          SqlSession ss =FactoryService.getFactory().openSession();      
          int cnt = ss.selectOne("job.totalCountAdmin");
          ss.close();      
          return cnt;
       } 

      public static JobVO getJob(String j_idx) {
         SqlSession ss = FactoryService.getFactory().openSession();
         JobVO vo = ss.selectOne("job.getJob",j_idx);
         ss.close();         
         return vo;
      }
      
      public static void insertJob(String title,String name,String birth,String process, String company, String location, String hiredate) {
         SqlSession ss =FactoryService.getFactory().openSession();
         HashMap<String , String   > map = new HashMap<>();
         
         map.put("j_title",title);   
         map.put("j_student_name",name);
         map.put("j_birth",birth);
         map.put("j_process",process);
         map.put("j_company",company);
         map.put("j_location",location);
         map.put("j_hiredate",hiredate); 
                   
         int cnt =ss.insert("job.add",map);
         if(cnt>0)
            ss.commit();
         else
            ss.rollback();
            ss.close();         
      };      
      
      
      //수정 
      public static boolean editJob(String j_idx,String j_title, String j_hiredate , String j_company,
            String j_student_name, String j_location, String j_birth,String j_process) {
         boolean value = false;
       
         SqlSession ss = FactoryService.getFactory().openSession();
         HashMap<String, String> map = new HashMap<String, String>();
         map.put("j_idx", j_idx);
         map.put("j_title", j_title);
         map.put("j_hiredate", j_hiredate);
         map.put("j_company", j_company);         
         map.put("j_student_name", j_student_name);
         map.put("j_location", j_location);
         map.put("j_birth", j_birth);
         map.put("j_process", j_process);         
 
        // System.out.println(j_title+"+"+j_hiredate+"+"+j_company+"+"+j_student_name+"+"+j_location+"+"+j_birth+"+"+j_process);
      int cnt = ss.update("job.editJob", map);
         if (cnt > 0) {
            ss.commit();
            value = true;
         } else
            ss.rollback();
         ss.close();
			
         return value;
      }
      

  	//삭제
  		public static boolean delJob(String j_idx) {
  			SqlSession ss = FactoryService.getFactory().openSession();
  			boolean value = false;
  			
  			HashMap<String, String> map = new HashMap<>();
  			map.put("j_idx", j_idx);
  			
  			
  			int cnt = ss.update("job.delJob", map);
  			if(cnt > 0) {
  				ss.commit();
  				value = true;
  			}else
  				ss.rollback();
  			
  			ss.close();
  			
  			return value;
  		}
  		
  		//삭제취소
  		public static boolean restoreJob(String j_idx) {
  			SqlSession ss = FactoryService.getFactory().openSession();
  			boolean value = false;
  			
  			HashMap<String, String> map = new HashMap<>();
  			map.put("j_idx", j_idx);
  			
  			
  			int cnt = ss.update("job.restore", map);
  			if(cnt > 0) {
  				ss.commit();
  				value = true;
  			}else
  				ss.rollback();
  			
  			ss.close();
  			
  			return value;
		}
      
}