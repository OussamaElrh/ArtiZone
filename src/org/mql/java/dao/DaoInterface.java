package org.mql.java.dao;

import java.sql.SQLException;
import java.util.List;

public interface DaoInterface
{
	public boolean supprimer(Object o);
	public boolean ajouter(Object o);
	public boolean update(Object o,String key,String ... fields);
	public List afficher();
	public Class afficher(Object o);
	
}
