package org.mql.java.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import javax.sql.DataSource;

import org.mql.java.models.Artisant;
import org.mql.java.models.Utilisateur;

public class UtilisateurDao {
	private DataSource dataSource;

	public UtilisateurDao(DataSource dataSource) {
		this.dataSource = dataSource;
	}
	public Utilisateur getUtilisateur() throws SQLException{
		Utilisateur b = new Utilisateur();
		String query = "Select * from utilisateur where type_utilisateur=0";
		PreparedStatement pstmt = dataSource.getConnection().prepareStatement(query);
		ResultSet resultSet = pstmt.executeQuery();
		if(resultSet.next()) {
			b.setId(resultSet.getInt("Id"));
			b.setUsername(resultSet.getString("username"));
			b.setPassword(resultSet.getString("password"));
			b.setNom(resultSet.getString("nom"));
			b.setPrenom(resultSet.getString("prenom"));
			b.setEmail(resultSet.getString("email"));
			b.setVille(resultSet.getString("ville"));
			b.setTele(resultSet.getString("tele"));
		}
		return b;
	}
	public boolean isValidUserAdmin(String username, String password) throws SQLException
	{
			String query = "Select count(1) from utilisateur where username = ? and password = ? and type_utilisateur= ?";
			PreparedStatement pstmt = dataSource.getConnection().prepareStatement(query);
			pstmt.setString(1, username);
			pstmt.setString(2, password);
			pstmt.setInt(3, 0);
			ResultSet resultSet = pstmt.executeQuery();
			if (resultSet.next())
					return (resultSet.getInt(1) > 0);
			else
					return false;
	}
	public boolean update_admin(Utilisateur ut) throws SQLException
	{
		String query = "UPDATE utilisateur SET username= ? , password = ?, nom = ? , prenom = ? , ville = ? , tele = ? , email = ? "
				+ "WHERE id= ? AND type_utilisateur = ?";
		PreparedStatement ps = dataSource.getConnection().prepareStatement(query);
		ps.setString(1, ut.getUsername());
		ps.setString(2, ut.getPassword());
		ps.setString(3, ut.getNom());
		ps.setString(4, ut.getPrenom());
		ps.setString(5, ut.getVille());
		ps.setString(6, ut.getTele());
		ps.setString(7, ut.getEmail());
		ps.setInt(8, ut.getId());
		ps.setInt(9, 0);
		if(ps.executeUpdate() == 1) {
			return true;
		}else {
			return false;
		}
	
	}
	public List getArtisants() throws SQLException{
		ArrayList<Artisant> list = new ArrayList<Artisant>();
		String query = "Select Utilisateur.Id,nom,prenom,ville,tele,confirmer,referent from utilisateur,artisant where type_utilisateur=1 and Utilisateur.Id = Artisant.id";
		PreparedStatement pstmt = dataSource.getConnection().prepareStatement(query);
		ResultSet resultSet = pstmt.executeQuery();
		while(resultSet.next()) {
			Artisant b = new Artisant();
			b.setId(resultSet.getInt("Id"));
			b.setUsername("");
			b.setPassword("");
			b.setNom(resultSet.getString("nom"));
			b.setPrenom(resultSet.getString("prenom"));
			b.setEmail("");
			b.setVille(resultSet.getString("ville"));
			b.setTele(resultSet.getString("tele"));
			b.setConfirmer(resultSet.getInt("confirmer"));
			b.setReferant(resultSet.getInt("referent"));
			list.add(b);
		}
		return list;
	}
	public boolean update_confirmer(Artisant art) throws SQLException {
		String query = "UPDATE artisant set confirmer = ? WHERE id = ?";
		PreparedStatement ps = dataSource.getConnection().prepareStatement(query);
		ps.setInt(1, 1);
		ps.setInt(2, art.getId());
		if(ps.executeUpdate() == 1) {
			return true;
		}else {
			return false;
		}
	}

}
