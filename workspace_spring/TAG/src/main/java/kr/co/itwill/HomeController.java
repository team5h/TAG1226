package kr.co.itwill;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import kr.co.itwill.cart.CartDAO;



@Controller
public class HomeController {

	public HomeController() {

		System.out.println("--------HomeController() 객체 생성");
	}// default constructor
	

	@Autowired
	CartDAO cartDao;

	//http://localhost:8080/home
	
	@RequestMapping("/home")
	public ModelAndView home(HttpServletRequest req, HttpSession session) {
		
		ModelAndView mav = new ModelAndView();
		String m_id = (String) session.getAttribute("s_m_id");
		
		mav.setViewName("/index");
		
		if(m_id == null) {
			return mav;
			
		}else{
			mav.addObject("mycartCnt", cartDao.mycartCnt(m_id));
			return mav;
		}//if end
		
	}//home() end
	
	@ResponseBody
	@RequestMapping("/headermycartCnt.do")
	public int headermycartCnt(HttpSession session) {
		
		
		String m_id = (String) session.getAttribute("s_m_id");
		
		if(m_id == null) {
			
			return 0;
		}else{
			int cnt = cartDao.mycartCnt(m_id);
			return cnt;
		}//if end
		
	}//home() end
	

	
}//class end
