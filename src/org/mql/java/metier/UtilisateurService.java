package org.mql.java.metier;

import java.sql.SQLException;
import java.util.List;

import org.mql.java.dao.UtilisateurDao;
import org.mql.java.models.Artisant;
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
	public List getClient_List() throws SQLException{
		return UtilisateurDao.getClients();
	}
	
}
