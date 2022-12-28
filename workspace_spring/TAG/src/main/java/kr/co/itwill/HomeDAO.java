package kr.co.itwill;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class HomeDAO {

	public HomeDAO() {
		System.out.println("------- HomeDAO() 객체 생성됨 ");
	}//CartDAO() end
	
	@Autowired
	SqlSession sqlSession;
	
	public List<Map<String, Object>> recently_pro() {
		return sqlSession.selectList("home.recently_pro");
	}
	
	public List<Map<String, Object>> recently_con() {
		return sqlSession.selectList("home.recently_con");
	}
}//dao 
