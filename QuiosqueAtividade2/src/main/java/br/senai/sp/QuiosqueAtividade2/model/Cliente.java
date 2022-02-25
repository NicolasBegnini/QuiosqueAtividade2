package br.senai.sp.QuiosqueAtividade2.model;

//FEITO

import java.time.LocalDate;
import java.time.Period;
import java.util.Calendar;

import org.springframework.format.annotation.DateTimeFormat;

public class Cliente {
	private Long id;
	private String nome;
	private String email;
	private String genero; 
	private String endereco;
	private String prodInteresse;
	private String cel;
	
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Calendar dataNasc;
	
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getEndereco() {
		return endereco;
	}
	public void setEndereco(String endereco) {
		this.endereco = endereco;
	}
	public String getProdInteresse() {
		return prodInteresse;
	}
	public void setProdInteresse(String prodInteresse) {
		this.prodInteresse = prodInteresse;
	}
	public String getCel() {
		return cel;
	}
	public void setCel(String cel) {
		this.cel = cel;
	}
	
	public String getGenero() {
		return genero;
	}
	public void setGenero(String genero) {
		this.genero = genero;
	}
	public Calendar getDataNasc() {
		return dataNasc;
	}
	public void setDataNasc(Calendar dataNasc) {
		this.dataNasc = dataNasc;
	}
	
	public int getIdade() {
		int day = dataNasc.get(Calendar.DAY_OF_MONTH);
		int month = dataNasc.get(Calendar.MONTH);
		int year = dataNasc.get(Calendar.YEAR);
		
		LocalDate dataNasceu = LocalDate.of(year, month+1, day);
		LocalDate dataAtual = LocalDate.now();
		Period periodo = Period.between(dataNasceu, dataAtual);
		
		return periodo.getYears();
		
	}
	
		
}
