package org.mql.java.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.sql.DataSource;

public class ArtisantDao {

	private DataSource dataSource;

	public ArtisantDao(DataSource dataSource) {
		
		this.dataSource = dataSource;
	}

	public boolean isExist(String username, String password) throws SQLException {
		
			String query = "Select count(1) from artisant where username = ? and password = ? and type_utilisateur=0";
			PreparedStatement pstmt = dataSource.getConnection().prepareStatement(query);
			pstmt.setString(1, username);
			pstmt.setString(2, password);
			ResultSet resultSet = pstmt.executeQuery();
			if (resultSet.next())
					return (resultSet.getInt(1) > 0);
			else
					return false;
	}
	
	public int insertArtisant(String cin, String nom, String prenom, String email,String 
			adresse, String ville, String tel, String login, String password) throws SQLException {
		
		String query = "insert into artisant values (?, ?, ?, ?, ?, ?, ?, ?, ?)";
		PreparedStatement pstmt = dataSource.getConnection().prepareStatement(query);
		pstmt.setString(1, cin);
		pstmt.setString(2, nom);
		pstmt.setString(3, prenom);
		pstmt.setString(4, email);
		pstmt.setString(5, adresse);
		pstmt.setString(6, ville);
		pstmt.setString(7, tel);
		pstmt.setString(8, login);
		pstmt.setString(9, password);

		return pstmt.executeUpdate(query);
	}
}
