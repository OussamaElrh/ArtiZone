package org.mql.java.controller;

import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.mql.java.dao.DaoImplementation;
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
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

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
	
	@RequestMapping("inscription")
	public ModelAndView inscription(HttpServletRequest request) {
		ModelAndView model = new ModelAndView("inscription");
		return model;
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
	public ModelAndView executeLoginOne(HttpServletRequest request, HttpServletResponse response,RedirectAttributes atr,@RequestParam("username")String username,@RequestParam("password")String password,@RequestParam(value="check",required=false)String checked)
	{
	
			ModelAndView model= null;
			try
			{
					boolean isValidUser = UtilisateurService.isValidUserAdmin(username, password);
					if(isValidUser)
					{
							HttpSession session = request.getSession();
							session.setAttribute("login", username);
							request.setAttribute("logged",username);
							response.sendRedirect("admin");
					}
					else
					{
							System.out.println(checked);
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
				request.setAttribute("loggedIn", bean.getUsername());
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
	@RequestMapping(value = "modify_ref", method = RequestMethod.POST)
	public @ResponseBody void update_art_ref( @RequestBody Artisant bean,HttpServletRequest request, HttpServletResponse response) throws SQLException, IOException  {
		boolean upd = UtilisateurService.update_referent(bean);
			if(upd) {
				response.getWriter().println(1);
			}else {
				response.getWriter().println(0);
			}
	}	
	@RequestMapping(value = "modify_unref", method = RequestMethod.POST)
	public @ResponseBody void update_art_unref( @RequestBody Artisant bean,HttpServletRequest request, HttpServletResponse response) throws SQLException, IOException  {
		boolean upd = UtilisateurService.update_unreferent(bean);
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
	
	@RequestMapping(value = "/villes", method = RequestMethod.GET, produces = MediaType.ALL_VALUE)
	public void getVilles(HttpServletRequest request, HttpServletResponse response) {
			try {
				FileReader fr = new FileReader("c:/villes.txt");
				BufferedReader br = new BufferedReader(fr);
				response.getWriter().println(br.readLine());
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}	
	}
	
	@RequestMapping(value = "/inscriptionClient", method = RequestMethod.POST)
	public @ResponseBody void addUser( @RequestBody Utilisateur bean, HttpServletRequest request,HttpServletResponse response) {
		try {
			String nom = bean.getNom();
			String prenom = bean.getPrenom();
			String email = bean.getEmail();
			String ville = bean.getVille();
			String tel = bean.getTele();
			String login = bean.getUsername();
			String password = bean.getPassword();
			
			System.out.println("ha homaaa : "+nom);
			
			boolean isExist = UtilisateurService.isExist(login, password);
			if(isExist)
			{
				
				response.getWriter().println("0");
			}
				
			else {
	
				int n = UtilisateurService.insertUser(nom, prenom, email, ville, tel, login, password, 2);
				String code = UtilisateurService.sendMail(email);
				int id = UtilisateurService.getUserId(email);
				System.out.println(" id  ::: "+id);
				UtilisateurService.insertToken(id, code);
				
				HttpSession session = request.getSession();
				session.setAttribute("id", UtilisateurService.getUserId(bean.getEmail()));	
				response.getWriter().println("1");
			}	
			
		} catch (Exception e) {}
	}
	
	
	@RequestMapping(value = "/inscriptionArtisant", method = RequestMethod.POST)
	public @ResponseBody void addArtisant( @RequestBody Utilisateur bean, HttpServletRequest request,HttpServletResponse response) {
		try {
			String nom = bean.getNom();
			String prenom = bean.getPrenom();
			String email = bean.getEmail();
			String ville = bean.getVille();
			String tel = bean.getTele();
			String login = bean.getUsername();
			String password = bean.getUsername();
			boolean isExist = UtilisateurService.isExist(login, password);
			if(isExist)
			{
				response.getWriter().println("a");
			}
			else 
			{
				System.out.println("test");
				int n = UtilisateurService.insertUser(nom, prenom, email, ville, tel, login, password, 1);
				String code = UtilisateurService.sendMail(email);
				int id = UtilisateurService.getUserId(email);
				System.out.println(" id  ::: "+id);
				UtilisateurService.insertToken(id, code);
				HttpSession session = request.getSession();
				session.setAttribute("id", UtilisateurService.getUserId(bean.getEmail()));
				response.getWriter().println("b");
			}
			
		} catch (Exception e) {}
	}
	
	@RequestMapping(value = "/validation", method = RequestMethod.POST)
	public @ResponseBody void valid( @RequestBody String bean, HttpServletRequest request, 
										HttpServletResponse response) {
		try {
			
			String code = bean;
			HttpSession session = request.getSession();
			int id = Integer.parseInt(session.getAttribute("id").toString());
			
			int compare = UtilisateurService.compareCode(id, code);
			if(compare == 0)
			{
				response.getWriter().println("0");
			}
				
			else 
			{
				UtilisateurService.validToken(id);
				response.getWriter().println("1");
			}
			
		} catch (Exception e) {}
	}
	
	/*
	@RequestMapping(value="/inscription",method=RequestMethod.POST)
	public ModelAndView executeInscription(HttpServletRequest request, HttpServletResponse response,
			@RequestParam("nom")String nom,
			@RequestParam("prenom")String prenom,@RequestParam("email")String email,
			@RequestParam("ville")String ville,@RequestParam("tel")String tel,
			@RequestParam("login")String login,@RequestParam("password")String password,
			@RequestParam("confirm")String confirm,@RequestParam("btn")String action) throws SQLException
			{
			ModelAndView model= null;
			
			
			if( nom.equals("") || prenom.equals("") || email.equals("") || ville.equals("") 
					|| tel.equals("") || login.equals("") || password.equals("") || confirm.equals("")) 
			{
				model = new ModelAndView("inscription");
				request.setAttribute("message", "<div class=\"alert alert-danger alert-dismissable\">\r\n" + 
						"    <a href=\"#\" class=\"close\" data-dismiss=\"alert\" aria-label=\"close\">×</a>\r\n" + 
						"    Veuillez remplir tous les champs ! <strong>!</strong>\r\n" + 
						"  </div>");
			}
			
			else if (!confirm.equals(password)) {
				model = new ModelAndView("inscription");
				request.setAttribute("message", "<div class=\"alert alert-danger alert-dismissable\">\r\n" + 
						"    <a href=\"#\" class=\"close\" data-dismiss=\"alert\" aria-label=\"close\">×</a>\r\n" + 
						"    Veuillez confirmer de nouveau votre mot de passe ! <strong>!</strong>\r\n" + 
						"  </div>");
			}
			else {
			
				System.out.println("nom : "+nom+", prenom : "+prenom+" email : "+email+", ville : "+ville
							+", tel : "+tel+", login : "+login+" password : "+password);
					boolean isExist = UtilisateurService.isExist(login, password);
					System.out.println("Is exist : "+isExist);
					if(!isExist)
					{
						if(action.equals("inscriClt")) {
							int n = UtilisateurService.insertUser(nom, prenom, email, ville, tel, login, password, 2);
							model = new ModelAndView("redirect");
						}
						else if(action.equals("inscriArt")) {
							int n = UtilisateurService.insertUser(nom, prenom, email, ville, tel, login, password, 1);
							model = new ModelAndView("redirect");
						}
						
					}
			
			}

			return model;
	}
*/


}
