package DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import VO.ContatoVO;

import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.swing.DefaultListModel;
import javax.swing.ListModel;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

import com.google.gson.JsonArray;
import com.google.gson.JsonObject;
import org.json.simple.JSONObject;

public class CertoDAO {
	public static List<JSONObject> convertToJSON(ResultSet rs)
            throws Exception {
       List<JSONObject> lista = new ArrayList<JSONObject>();
       try
       {
    	   ResultSetMetaData rsMetaData = rs.getMetaData();
    	   int col = rsMetaData.getColumnCount();
    	   List<String> colNome = new ArrayList<String>();
    	   
    	   for(int i=1; i<=col; i++)
    	   {
    		   colNome.add(rsMetaData.getColumnName(i).toUpperCase());
    		   
    	   }
    	   while(rs.next())
    	   {
    		   JSONObject obj = new JSONObject();
    		   for(int i=1;i<=col;i++)
    		   {
    			   String key = colNome.get(i-1);
    			   String value = rs.getString(i);
    			   obj.put(key, value);
    		   }
    		   lista.add(obj);
    	   }
       }catch(Exception e)
       {
    	   e.printStackTrace();
       }finally
       {
    	   try
    	   {
    		   rs.close();
    	   }catch(SQLException e)
    	   {
    		   e.printStackTrace();
    	   }
       }
       return lista;
    }
	
	public ResultSet PegaRs()
	{
		ResultSet rs = null;
    	Connection connection= null;
    	try {
    	try {
			Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
    	String url = "jdbc:sqlserver://DESKTOP-SR8G8GB\\SQLEXPRESS;databaseName=AULADB";
    	String user = "sa";
    	String password = "palmeiras";
    	connection = DriverManager.getConnection(url, user, password);
    	String SPsql = "select  top 6 * from auladb.dbo.produto";
    		PreparedStatement preparedStatement = connection.prepareStatement(SPsql);
    		rs = preparedStatement.executeQuery();
    		return rs;
    	}catch(SQLException e)
    	{
    		e.printStackTrace();
    		return null;
    	}
	}
	public List<JSONObject> getJsonObject()
	{
//		ResultSet rs = 
		ResultSet rs = PegaRs();
		 try {
			List<JSONObject> rsLista = convertToJSON(rs);
			return rsLista;
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		}  
	}
}
