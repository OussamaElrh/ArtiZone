package org.mql.java.models;


public class Utilisateur {
	private int id;
	private String username;
	private String password;
	private String nom;
	private String prenom;
	private String email;
	private String tele;
	private String ville;
	public Utilisateur() {
		// TODO Auto-generated constructor stub
	}
	
	public Utilisateur(String username, String password) {
		super();
		this.username = username;
		this.password = password;
	}
	
	public Utilisateur(int id,String username, String password, String nom, String prenom, String email, String tele,
			String ville) {
		super();
		this.id = id;
		this.username = username;
		this.password = password;
		this.nom = nom;
		this.prenom = prenom;
		this.email = email;
		this.tele = tele;
		this.ville = ville;
	}
	

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getNom() {
		return nom;
	}

	public void setNom(String nom) {
		this.nom = nom;
	}

	public String getPrenom() {
		return prenom;
	}

	public void setPrenom(String prenom) {
		this.prenom = prenom;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getTele() {
		return tele;
	}

	public void setTele(String tele) {
		this.tele = tele;
	}

	public String getVille() {
		return ville;
	}

	public void setVille(String ville) {
		this.ville = ville;
	}

	@Override
	public String toString() {
		return "Utilisateur [id=" + id + ", username=" + username + ", password=" + password + ", nom=" + nom
				+ ", prenom=" + prenom + ", email=" + email + ", tele=" + tele + ", ville=" + ville + "]";
	}

	

	
	
}
