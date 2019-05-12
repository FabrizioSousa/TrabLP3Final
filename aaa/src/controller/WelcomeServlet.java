package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;

import com.google.gson.Gson;

import DAO.CertoDAO;


/**
 * Servlet implementation class WelcomeServlet
 */
@WebServlet("/BuscaBD")
public class WelcomeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public WelcomeServlet() {
        super();
        // TODO Auto-generated constructor stub
    }
    
    
    
    public void doGet(HttpServletRequest request, HttpServletResponse response)  
            throws ServletException, IOException { 
    	
    	CertoDAO certo = new CertoDAO();
    	PrintWriter out = response.getWriter();
    	Gson gson = new Gson();	
    	List<JSONObject> rsLista = certo.getJsonObject();


    		out.print(gson.toJson(rsLista));


		  out.flush();
		  out.close();

    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    public void doPost(HttpServletRequest request, HttpServletResponse response)  
            throws ServletException, IOException {  
      
        response.setContentType("text/html");  
        PrintWriter out = response.getWriter();  
              
        String n=request.getParameter("userName");  
        out.print("Welcome "+n);  
        }

}
