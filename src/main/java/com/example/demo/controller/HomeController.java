package com.example.demo.controller;



import java.security.Principal;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AnonymousAuthenticationToken;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import com.example.demo.entity.User;
import com.example.demo.repository.UserRepository;
import com.example.demo.config.CustomUser;
import com.example.demo.entity.Blog;
import com.example.demo.entity.Message;
import com.example.demo.entity.Chat;
import com.example.demo.entity.Demande;
import com.example.demo.service.MessageService;

import com.example.demo.service.UserService;

import jakarta.servlet.http.HttpSession;

import com.example.demo.service.BlogService;
import com.example.demo.service.ChatService;
import com.example.demo.service.DemandeService;
@Controller

public class HomeController {

	 @Autowired
	    private MessageService MessageService;
 
	 @Autowired
	    private BlogService BlogService;
	 
	 @Autowired
	    private ChatService ChatService;



    @GetMapping({"/", "/home"})
    public String index(Model model) {  
    	 List<Blog> blogs = BlogService.getBlogs();
    	 model.addAttribute("blogs", blogs);
    	 List<Chat> chats = ChatService.getChats();
    	 model.addAttribute("chats", chats);
    	 
        return "index";
    }
    
    

    @GetMapping("/allcats")
    public String allcats(@RequestParam(required = false) String race, Model model) {
        List<Chat> chats;

        if (race != null) {
            // Filtrer par race si la race est spécifiée
            chats = ChatService.getChatsByRace(race);
        } else {
            // Sinon, obtenir tous les chats
            chats = ChatService.getChats();
        }

        model.addAttribute("chats", chats);
        model.addAttribute("selectedRace", race); // Ajouter la race sélectionnée pour le filtre
        return "all_cats";
    }
    
     
    @GetMapping("/showDetail/{id}")
    public String showCatDetail(@PathVariable("id") int id, Model model) {
        Chat chat = ChatService.getChatById(id);
        model.addAttribute("chat", chat);
        return "showDetail";
    }

    @GetMapping("/contact")
    public String contact() {   
        return "contact";
    }
    
    @PostMapping("/contact")
    public String contact(@ModelAttribute("Message") Message message) {
    	MessageService.saveMessage(message);
        return "redirect:/";
    }
    
    
    
    @Autowired
	private UserService userService;

	@Autowired
	private UserRepository userRepo;

	@ModelAttribute
	public void commonUser(Principal p, Model m) {
		if (p != null) {
			String email = p.getName();
			User user = userRepo.findByEmail(email);
			m.addAttribute("user", user);
		}

	}

	
	

	@GetMapping("/register")
	public String register() {
		return "register";
	}

	@GetMapping("/signin")
	public String login() {
		return "login";
	}

	

	@PostMapping("/saveUser")
	public String saveUser(@ModelAttribute User user, HttpSession session, Model m) {

		// System.out.println(user);

		User u = userService.saveUser(user);

		if (u != null) {
			// System.out.println("save sucess");
			session.setAttribute("msg", "Register successfully");

		} else {
			// System.out.println("error in server");
			session.setAttribute("msg", "Something wrong server");
		}
		return "redirect:/signin";
	}
	
	//----------------demande
	@Autowired
	private DemandeService demandeService;

	@PostMapping("/adopt/{chatId}")
	public String adopterChat(@PathVariable Integer chatId, @AuthenticationPrincipal UserDetails userDetails, HttpSession session) {
	    if (userDetails == null || userDetails instanceof AnonymousAuthenticationToken) {
	        // User is not authenticated, redirect to the login page
	        return "redirect:/signin";
	    }

	    User utilisateur = ((CustomUser) userDetails).getUser();
	    Chat chat = ChatService.getChatById(chatId);

	    Demande demande = new Demande(utilisateur, chat);
	    demandeService.enregistrerDemande(demande);

	    // Add a success message to the session
	    session.setAttribute("successMessage", "Adoption successful! Your request will be studied, and you will be contacted.");

	    // Redirect to the same page
	    return "redirect:/showDetail/" + chatId;
	}



	
	

}
