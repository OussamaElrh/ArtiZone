package org.mql.java.models;

public class Client extends Utilisateur {

	public Client() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Client(int id,String username, String password, String nom, String prenom, String email, String tele,
			String ville) {
		super(id,username, password, nom, prenom, email, tele, ville);
		// TODO Auto-generated constructor stub
	}

	public Client(String username, String password) {
		super(username, password);
		// TODO Auto-generated constructor stub
	}

	@Override
	public String toString() {
		
		return "Client [username=" + this.getUsername() + ", password=" + this.getPassword() + "]";
	}

	
}
