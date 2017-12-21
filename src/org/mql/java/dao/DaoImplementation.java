package org.mql.java.dao;

import java.lang.reflect.Field;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.List;

import javax.sql.DataSource;

public class DaoImplementation implements DaoInterface
{

	private DataSource dataSource;

	public DaoImplementation(DataSource dataSource) {
		this.dataSource = dataSource;
	}
	public boolean ajouter(Object o) {
		return false;
	}
	@Override
	public List afficher() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Class afficher(Object o) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean supprimer(Object o) {
		// TODO Auto-generated method stub
		return false;
	}
	@Override
	public boolean update(Object o,String key, String... fields) {
		String table_name = o.getClass().getSimpleName();
		PreparedStatement pstmt;
		String query = "UPDATE "+table_name+" SET ?";
		for (int i = 1; i < fields.length; i++) {
			query += ",?";
		}
		Field[] t = o.getClass().getDeclaredFields();
		Object x = null;
		for (int i = 0; i < t.length; i++) {
			if(t.equals(key)) {
				try {
					x = t[i].get(o);
				} catch (IllegalArgumentException | IllegalAccessException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
		}
		if(x instanceof Integer) {
			int val = Integer.parseInt(x.toString()); 
			query+="WHERE "+key+" = " +val;
		}else {
			query+="WHERE "+key+" = '" +x.toString()+"')";
		}
		try {
			pstmt = dataSource.getConnection().prepareStatement(query);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;
	}

	
}
