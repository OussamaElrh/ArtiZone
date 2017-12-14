package org.mql.java.controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.mql.java.metier.UtilisateurService;
import org.mql.java.models.Artisant;
import org.mql.java.models.Utilisateur;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;

@Controller
public class ControllerArtisant {
	@Autowired
	private UtilisateurService UtilisateurService;
	

	@RequestMapping(value = "/list", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
	public void Hello(HttpServletRequest request, HttpServletResponse response) {
			try {
				response.getWriter().println(new Gson().toJson(UtilisateurService.getList()));
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}	
	}
	@RequestMapping(value = "/list_ar", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
	public void Art_list(HttpServletRequest request, HttpServletResponse response) {
			try {
				response.getWriter().println(new Gson().toJson(UtilisateurService.getArtList()));
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}	
	}
	@RequestMapping(value = "/list_client", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
	public void Client_List(HttpServletRequest request, HttpServletResponse response) {
			try {
				response.getWriter().println(new Gson().toJson(UtilisateurService.getClient_List()));
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}	
	}
	@RequestMapping("accueil")
	public ModelAndView getUser() {
		ModelAndView model = new ModelAndView("accueil");
		String value ="hello";
		model.addObject("msg",value);
		return model;
	}
	
	@RequestMapping("angulars")
	public ModelAndView getUsr() {
		ModelAndView model = new ModelAndView("angulars");
		return model;
	}
	@RequestMapping("admin")
	public ModelAndView getUsdr() {
		ModelAndView model = new ModelAndView("profil");
		return model;
	}
	@RequestMapping("Arts")
	public ModelAndView getarts() {
		ModelAndView model = new ModelAndView("artisants");
		return model;
	}
	@RequestMapping("cls")
	public ModelAndView getcls() {
		ModelAndView model = new ModelAndView("clients");
		return model;
	}
	@RequestMapping("loginOne")
	public ModelAndView login(HttpServletRequest request) {
		ModelAndView model = new ModelAndView("loginOne");
		HttpSession session = request.getSession();
		session.setAttribute("login", null);
		return model;
	}
	@RequestMapping(value="/loginOne",method=RequestMethod.POST)
	public ModelAndView executeLoginOne(HttpServletRequest request, HttpServletResponse response,@RequestParam("username")String username,@RequestParam("password")String password)
	{
			ModelAndView model= null;
			try
			{
					boolean isValidUser = UtilisateurService.isValidUserAdmin(username, password);
					if(isValidUser)
					{
							HttpSession session = request.getSession();
							session.setAttribute("login", username);
							request.setAttribute("loggedInUser", username);
							response.sendRedirect("admin");
					}
					else
					{
							model = new ModelAndView("loginOne");
							request.setAttribute("message", "<div class=\"alert alert-danger alert-dismissable\">\r\n" + 
									"    <a href=\"#\" class=\"close\" data-dismiss=\"alert\" aria-label=\"close\">×</a>\r\n" + 
									"    Login ou mot de passe incorrect <strong>!</strong>\r\n" + 
									"  </div>");
					}

			}
			catch(Exception e)
			{
					e.printStackTrace();
			}

			return model;
	}
	
	@RequestMapping(value = "/result", method = RequestMethod.POST)
	public @ResponseBody void add( @RequestBody Utilisateur bean,HttpServletRequest request, HttpServletResponse response) {
		try {
			boolean isValidUser = UtilisateurService.isValidUserAdmin(bean.getUsername(), bean.getPassword());
			if(isValidUser) {
				HttpSession session = request.getSession();
				session.setAttribute("login", bean.getUsername());
				request.setAttribute("loggedInUser", bean.getUsername());
				response.getWriter().println("1");
			}
			else {
				response.getWriter().println("0");
			}
		} catch (Exception e) {}
	}
	@RequestMapping(value = "up_ad", method = RequestMethod.POST)
	public @ResponseBody void update( @RequestBody Utilisateur bean,HttpServletRequest request, HttpServletResponse response) throws SQLException, IOException  {
		boolean upd = UtilisateurService.update_admin(bean);
			if(upd) {
				response.getWriter().println(1);
			}else {
				response.getWriter().println(0);
			}
	}
	@RequestMapping(value = "modify_conf", method = RequestMethod.POST)
	public @ResponseBody void update_art_con( @RequestBody Artisant bean,HttpServletRequest request, HttpServletResponse response) throws SQLException, IOException  {
		boolean upd = UtilisateurService.update_confirmer(bean);
			if(upd) {
				response.getWriter().println(1);
			}else {
				response.getWriter().println(0);
			}
	}	
	@RequestMapping(value = "modify_unconf", method = RequestMethod.POST)
	public @ResponseBody void update_art_uncon( @RequestBody Artisant bean,HttpServletRequest request, HttpServletResponse response) throws SQLException, IOException  {
		boolean upd = UtilisateurService.update_unconfirmer(bean);
			if(upd) {
				response.getWriter().println(1);
			}else {
				response.getWriter().println(0);
			}
	}	
	@RequestMapping(value = "sup_art", method = RequestMethod.POST)
	public @ResponseBody void sup_art( @RequestBody Artisant bean,HttpServletRequest request, HttpServletResponse response) throws SQLException, IOException  {
		boolean upd = UtilisateurService.supprimer_artisant(bean);
			if(upd) {
				response.getWriter().println(1);
			}else {
				response.getWriter().println(0);
			}
	}	
	@RequestMapping(value = "sup_cl", method = RequestMethod.POST)
	public @ResponseBody void sup_cli( @RequestBody Artisant bean,HttpServletRequest request, HttpServletResponse response) throws SQLException, IOException  {
		boolean upd = UtilisateurService.supprimer_client(bean);
			if(upd) {
				response.getWriter().println(1);
			}else {
				response.getWriter().println(0);
			}
	}	



}
