package com.codingdojo.lookify.controllers;

import java.util.List;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.codingdojo.lookify.models.Lookify;
import com.codingdojo.lookify.services.LookifyService;

@Controller
public class LookifyController {
	
	private final LookifyService lookifyService;
	
	public LookifyController(LookifyService lookifyService) {
		this.lookifyService = lookifyService;
	}
	
	@RequestMapping("/")
	public String index() {
		return "lookify/index.jsp";
	}
	
	@RequestMapping("/dashboard")
	public String index(@ModelAttribute("music") Lookify music, Model model) {
		List<Lookify> lookify = lookifyService.allLookify();
		model.addAttribute("lookify", lookify);
		return "lookify/dashboard.jsp";
	}
	
	@RequestMapping("/new")
    public String newMusic(@ModelAttribute("music") Lookify music) {
        return "lookify/new.jsp";
    }
    @RequestMapping(value="/add_music", method=RequestMethod.POST)
    public String create(@Valid @ModelAttribute("music") Lookify music, BindingResult result) {
        if (result.hasErrors()) {
            return "lookify/new.jsp";
        } else {
            lookifyService.createMusic(music);
            return "redirect:/dashboard";
        }
    }
    @RequestMapping("/view/{id}")
    public String show(@PathVariable("id") Long id, Model model) {
        Lookify lookify = lookifyService.findLookify(id);
        model.addAttribute("lookify", lookify);
        return "/lookify/view.jsp";
    }
    
    @RequestMapping(value="/delete/{id}", method=RequestMethod.DELETE)
    public String delete(@PathVariable("id") Long id) {
        lookifyService.deleteLookify(id);
        return "redirect:/dashboard";
    }
    
    
    @RequestMapping(path="/search", method = RequestMethod.POST)
    public String search(@RequestParam(value="search") String search, HttpSession session) {
    	session.setAttribute("search", search);
    	return "/lookify/search.jsp";
 	}
		
    @RequestMapping("/topTen")
    public String displayTop(Model model) {
    	model.addAttribute("music", lookifyService.topTen());
    	return "/lookify/topTen.jsp";
    }
    
    
    
    
    
}
