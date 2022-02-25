package br.senai.sp.QuiosqueAtividade2.dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;

import com.mysql.jdbc.PreparedStatement;

import br.senai.sp.QuiosqueAtividade2.model.Cliente;

public class QuiosqueDao {
	private Connection connect; //conecta com o sql
	
	public QuiosqueDao() {
		connect = ConnectionFactory.conectar();
	}
	
	public void inserir(Cliente clientes) {
		String sql = "insert into clientes (nome, email, telefone,	endereco,	genero,	tipoProduto, data_nascimento)"
		+ "values(?,?,?,?,?,?,?)";
		PreparedStatement stmt;
		try {
			
			stmt = (PreparedStatement) connect.prepareStatement(sql);
			
			stmt.setString(1, clientes.getNome());
			stmt.setString(2, clientes.getEmail());
			stmt.setString(3, clientes.getCel());
			stmt.setString(4, clientes.getEndereco());
			stmt.setString(5, clientes.getGenero());
			stmt.setString(6, clientes.getProdInteresse());
			stmt.setDate(7, new Date(clientes.getDataNasc().getTimeInMillis()));
			stmt.execute();
			stmt.close();
			connect.close();
			
		} catch (Exception e) {
			throw new RuntimeException(e);
		}
				
	}
	
	public List<Cliente> listar(){
		
		String sql = "select * from clientes order by nome asc"; //lista os nomes
		PreparedStatement stmt;
		
		List<Cliente> list = new ArrayList<Cliente>(); //list cria um array com as colunas inseridas
		try {
			
			stmt =	(PreparedStatement) connect.prepareStatement(sql);
			ResultSet rs = stmt.executeQuery();
			
			while(rs.next()) {
				Cliente client = new Cliente();
					client.setId(rs.getLong("id"));
					client.setNome(rs.getString("nome"));
					client.setEmail(rs.getString("email"));
					client.setCel(rs.getString("telefone"));
					client.setEndereco(rs.getString("endereco"));
					client.setGenero(rs.getString("genero"));
					client.setProdInteresse(rs.getString("tipoProduto"));
					
					//adiciona o date no sql
					Calendar nasceu = Calendar.getInstance();
					Date nasceuBD = rs.getDate("data_nascimento");
					nasceu.setTimeInMillis(nasceuBD.getTime());
					client.setDataNasc(nasceu);
					
					list.add(client);
			}
			
			rs.close();
			stmt.close();
			connect.close();
			return list;
			
		} catch (Exception e) {
			throw new RuntimeException(e);
		}
	}
		
		
	
	public Cliente buscar(long id) {
		
		String sql = "select * from clientes where id = ?";
		Cliente client = null;
		PreparedStatement stmt;
		
		try {
			stmt = (PreparedStatement) connect.prepareStatement(sql);
			stmt.setLong(1, id);
			ResultSet rs = stmt.executeQuery();
			
			if (rs.next()) {
				client = new Cliente();
				
				client.setId(rs.getLong("id"));
				client.setNome(rs.getString("nome"));
				client.setEmail(rs.getString("email"));
				client.setCel(rs.getString("telefone"));
				client.setEndereco(rs.getString("endereco"));
				client.setGenero(rs.getString("genero"));
				client.setProdInteresse(rs.getString("tipoProduto"));
				//adiciona o date no sql
				Calendar nasceu = Calendar.getInstance();
				Date nasceuBD = rs.getDate("data_nascimento");
				nasceu.setTimeInMillis(nasceuBD.getTime());
				client.setDataNasc(nasceu);
			}
		
			rs.close();
			stmt.close();
			connect.close();
			return client;
			
		} catch (Exception e) {
			throw new RuntimeException(e);
		}
	}
	
	public void atualizar(Cliente clientes) {
		String sql = "update clientes set nome = ?, email = ?, "
				+ "telefone = ?, endereco = ?, genero = ?, tipoProduto = ? where id = ?";
		
		PreparedStatement stmt;
		
		
		try {
			stmt = (PreparedStatement) connect.prepareStatement(sql);
			stmt.setString(1, clientes.getNome());
			stmt.setString(2, clientes.getEmail());
			stmt.setString(3, clientes.getCel());
			stmt.setString(4, clientes.getEndereco());
			stmt.setString(5, clientes.getGenero());
			stmt.setString(6, clientes.getProdInteresse());
			stmt.setDate(7, new Date(clientes.getDataNasc().getTimeInMillis()));
			stmt.execute();
			stmt.close();
			connect.close();
			
		} catch (Exception e) {
			throw new RuntimeException(e);
		}
	}
	
	public void excluir(long id) {
		String sql = "delete from clientes where id = ?";
		PreparedStatement stmt;
		try {
			stmt = (PreparedStatement) connect.prepareStatement(sql);
			stmt.setLong(1, id);
			stmt.execute();
			stmt.close();
			connect.close();
		} catch (Exception e) {
			throw new RuntimeException(e);
		} 
	}	
}