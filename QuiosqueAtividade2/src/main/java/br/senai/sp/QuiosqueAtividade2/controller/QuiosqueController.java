package br.senai.sp.QuiosqueAtividade2.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import br.senai.sp.QuiosqueAtividade2.dao.QuiosqueDao;
import br.senai.sp.QuiosqueAtividade2.model.Cliente;


@Controller
public class QuiosqueController {
	
	@RequestMapping("Cadastro")
	public String index() {
		return "form";
	}
	
	@RequestMapping(value = "cadastrar", method = RequestMethod.POST) // o nome não tem haver com o nome do método
	public String cadastrar(Cliente clientes) {
		
		QuiosqueDao qDao = new QuiosqueDao();
		if (clientes.getId() == null) {
			qDao.inserir(clientes);
		}else {
			qDao.atualizar(clientes);
		}
		return"redirect:InformacoesUsuario";
	}
	
	@RequestMapping("InformacoesUsuario")
	public String infoUsuario(Model model) {
		QuiosqueDao qDao = new QuiosqueDao();
		model.addAttribute("cliente", qDao.listar());
		return "infoUsers";
	}
	
	@RequestMapping("excluirCliente")
	public String excluir(long id) {
		QuiosqueDao qDao = new QuiosqueDao();
		qDao.excluir(id);
		return "redirect:infoUsers";
	}
	
	@RequestMapping("altCliente")
	public String alterar(long id, Model model) {
		QuiosqueDao qDao = new QuiosqueDao();
		model.addAttribute("cliente", qDao.buscar(id));
		
		return "forward:Cadastro";
	}
	
	@RequestMapping("Estatisticas")
	public String estatisticas() {
		return "estatisticas";
	}
	
	
	
	
	
}
