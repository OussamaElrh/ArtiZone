package org.mql.java.metier;

import java.sql.SQLException;
import java.util.List;

import org.mql.java.dao.UtilisateurDao;
import org.mql.java.models.Artisant;
import org.mql.java.models.Mail;
import org.mql.java.models.Utilisateur;

public class UtilisateurService implements ServiceInterface{
	private UtilisateurDao UtilisateurDao;
	
	public UtilisateurService(UtilisateurDao serviceDao) {
		super();
		this.UtilisateurDao = serviceDao;
	}
	public Utilisateur getList() throws SQLException {
		// TODO Auto-generated method stub
		return UtilisateurDao.getUtilisateur();
	}
	public boolean isValidUserAdmin(String username, String password) throws SQLException{
		    return UtilisateurDao.isValidUserAdmin(username, password);
    }
	public boolean update_admin(Utilisateur uti) throws SQLException {
		return UtilisateurDao.update_admin(uti);
	}
	public List getArtList() throws SQLException{
		return UtilisateurDao.getArtisants();
	}
	public boolean update_confirmer(Artisant art) throws SQLException {
		return UtilisateurDao.update_confirmer(art);
	}
	public boolean update_unconfirmer(Artisant art) throws SQLException {
		return UtilisateurDao.update_unconfirmer(art);
	}
	public boolean update_referent(Artisant art) throws SQLException {
		return UtilisateurDao.update_referent(art);
	}
	public boolean update_unreferent(Artisant art) throws SQLException {
		return UtilisateurDao.update_unrefent(art);
	}
	public List getClient_List() throws SQLException{
		return UtilisateurDao.getClients();
	}
	public boolean supprimer_artisant(Artisant art) throws SQLException{
		return UtilisateurDao.sup_artisant(art);
	}
	public boolean supprimer_client(Utilisateur ut) throws SQLException{
		return UtilisateurDao.sup_client(ut);
	}
	public boolean isExist(String login, String password) throws SQLException{	
		return UtilisateurDao.isExist(login, password);
	}

	public int insertUser(String nom, String prenom, String email,String ville,
			String tel, String login, String password, int type) throws SQLException{
		   
		return UtilisateurDao.insertUser(nom, prenom, email, ville, tel, login, password, type);
	}
	
	public String sendMail(String mail) {
		Mail msg = new Mail();
		String code = msg.randomAlphaNumeric(10);
		if(msg.sendEmail(mail, code))
			System.out.println("Success");
		else
			System.out.println("Error");
		return code;
	}
	
	public int getUserId(String email) throws SQLException {
		return UtilisateurDao.getUserId(email);
	}
	
	public int insertToken(int id, String code) throws SQLException {
		return UtilisateurDao.insertToken(id, code);
	}
	
	public int compareCode(int id, String code) throws SQLException {
		return UtilisateurDao.compareCode(id, code);
	}
	
	public int getTokenStatus(int id) throws SQLException {
		return UtilisateurDao.getTokenStatus(id);
	}
	
	public int validToken(int id) throws SQLException {
		return UtilisateurDao.validToken(id);
	}
	
}
