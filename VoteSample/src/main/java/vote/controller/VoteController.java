package vote.controller;

import java.io.PrintWriter;
import java.util.List;
import java.util.logging.Logger;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.validation.constraints.Max;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;

import vote.domain.VoteDto;
import vote.service.VoteService;

@Controller
@RequestMapping("/vote")
public class VoteController {
	
	@Autowired
	VoteService service;
	
	//투표 목록 
	@RequestMapping("/list.do")
	public ModelAndView list() throws Exception{
		List<VoteDto> list = service.list();
		ModelAndView mav = new ModelAndView();
		mav.setViewName("vote/list");
		mav.addObject("list", list);
		return mav;
	}
	
	
	//투표 작성화면 
	@RequestMapping(value="vote/write.do", method = RequestMethod.GET)
	public String write() throws Exception{
		return "vote/write";
	}
	
	//투표글 작성처리  
	@RequestMapping(value="vote/insert.do", method = RequestMethod.POST)
	public String insert(@ModelAttribute VoteDto dto) throws Exception{
		service.write(dto);
		return "redirect:list.do";
	}


	//투표 현황
	@RequestMapping(value="vote/view.do", method = RequestMethod.GET)
	public ModelAndView view(@RequestParam int votenum, HttpSession session) throws Exception{
		ModelAndView mav = new ModelAndView();
		mav.setViewName("vote/view");
		mav.addObject("dto", service.read(votenum));
		return mav;
	}
	
	
	//투표 하기 
	
}
