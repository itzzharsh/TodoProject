package com.todo.Tododelhi3;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class TodoController {
	
	@Autowired
	Todorepo tr;
	@RequestMapping("/home")
	public String home() 
	{
		return "login.jsp";
	}

	@RequestMapping("/welcome")
	public String welcome() 
	{
		return "welcome.jsp";
	}
	@RequestMapping("/logout")
	public String logout() 
	{
		return "logout.jsp";
	}
	
	@RequestMapping("/addtodo")
	public String addtodo() 
	{
		return "addtodo.jsp";
	}
	@RequestMapping("/registertodo")
	public String registertodo(Todos t) 
	{
		tr.save(t);
		return "todos";
	}
	@RequestMapping("/deletetodo")
	public String deletetodo(int sno) 
	{	
		tr.deleteById(sno);
		
		return "todos";
	}
	@RequestMapping("/edittodo")
	public ModelAndView edittodo(int id) 
	{	
		Todos td=tr.findById(id).get();
		ModelAndView mv=new ModelAndView();
		mv.addObject("obj", td);
		mv.setViewName("edittodo.jsp");
		
		return mv;
	}
	@RequestMapping("/updatetodo")
	public String updatetodo(Todos t) 
	{	
		tr.save(t);	
		return "todos";
	}
	@RequestMapping("/todos")
	public ModelAndView todos(ModelMap mp) 
	{
		ModelAndView mv=new ModelAndView();
		mp.put("obj",tr.findAll());
		mv.addAllObjects(mp);
		mv.setViewName("todos.jsp");
		return mv;
	}
	
	
	@RequestMapping("/login")
	public String login(String uname,String pwd) 
	{
		String res;
		if(uname.equals(pwd))
		{
			res="welcome";
		}
		else {
			res="home";	
			}
		return res;
	}
}
