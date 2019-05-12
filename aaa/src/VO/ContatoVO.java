package VO;

import java.io.Serializable;
import java.text.SimpleDateFormat;
import java.util.Date;



public class ContatoVO {
	

	private int id;
	private String caminho;
	private String nome;
	private float preco;
	private String comentario;
	
	public int getId()
	{
		 return id;
	}
	public void setId(int id)
	{
		this.id= id;
	}
	public String getcomentario()
	{
		 return comentario;
	}
	public void setcomentario(String comentario)
	{
		this.comentario= comentario;
	}
	public String getcaminho()
	{
		 return caminho;
	}
	public void setcaminho(String caminho)
	{
		this.caminho= caminho;
	}
	public String getnome()
	{
		return  nome;
	}
	public void setnome(String nome)
	{
		this.nome = nome;
	}
	public float getPreco()
	{
		 return preco;
	}
	public void setPreco(float preco)
	{
		this.preco = preco;
	}
	
}
