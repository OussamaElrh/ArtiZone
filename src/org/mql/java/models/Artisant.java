package org.mql.java.models;

public class Artisant extends Utilisateur {
	private String description;
	private int confirmer;
	private int referant;
	public Artisant(int id,String username, String password, String nom, String prenom, String email, String tele,
			String ville,String description, int confirmer, int referant) {
		super(id,username,password,nom,prenom,email,tele,ville);
		this.description = description;
		this.confirmer = confirmer;
		this.referant = referant;
	}
	public Artisant() {}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public int getConfirmer() {
		return confirmer;
	}
	public void setConfirmer(int confirmer) {
		this.confirmer = confirmer;
	}
	public int getReferant() {
		return referant;
	}
	public void setReferant(int referant) {
		this.referant = referant;
	}
	
	
}
