package br.com.unipe.aula.web.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import br.com.unipe.aula.dao.CarroDAO;
import br.com.unipe.aula.model.Carro;

@Controller
public class WelcomeController {
    
    @Autowired
    private CarroDAO dao;
    
    @GetMapping(value = "/")
    public String index() {
        return "index";
    }
    
    @RequestMapping(value = "/listar", method = RequestMethod.GET)
    public ModelAndView listar() {
        ModelAndView view = new ModelAndView("listar");
        view.addObject("carros", dao.getAll());
        return view;
    }
    
    @RequestMapping(value = "/formulario", method = RequestMethod.GET)
    public ModelAndView formulario(Model model) {
        ModelAndView view = new ModelAndView("formulario");
        model.addAttribute("carro", new Carro());
        view.addObject("carros", dao.getAll());
        view.addObject("mensagem", "Digite o modelo, placa e ano do carro:");
        return view;
    }
    
    @RequestMapping(value = "/formulario", method = RequestMethod.POST)
    //public ModelAndView exibefrase(@ModelAttribute Carro carro) {
    public String exibefrase(@ModelAttribute Carro carro) {
        //ModelAndView view = new ModelAndView("formulario");
        dao.salvar(carro);
        System.out.println("Carro cadastrado com sucesso");
        //view.addObject("carros", dao.getAll());
        //view.addObject("mensagem", "Carro cadastrado com sucesso!");
        //return view;
        return "redirect:/";
    }
    
    @GetMapping(value="/excluir/{id}")
	public String excluirCarro(@PathVariable("id") Long id, Model model) {
		dao.excluir(id);
		System.out.println("Carro excluído com sucesso!");
		return "redirect:/";
	}
    
    @GetMapping(value="/editar/{id}")
	public ModelAndView exibeEditarCarro(@PathVariable("id") Long id, Model model) {
		ModelAndView view = new ModelAndView("editar");
		model.addAttribute("carro", dao.getId(id));
		return view;
	}
	
	@PostMapping(value="/editar/{id}")
	public String confirmaEdicaoCarro(@PathVariable("id") int id, @ModelAttribute Carro carro) {
		dao.editar(carro);
		System.out.println("Carro editado com sucesso!");
		return "redirect:/";
	}
    
}
