package ru.itacademy.officeproject.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestParam;
import ru.itacademy.officeproject.dao.UserRepository;

import java.util.Optional;

@Controller
public class AuthController {
    @Autowired
    UserRepository userRepository;

    @GetMapping("/login")
    public String login(@ModelAttribute("model") ModelMap model, Authentication authentication, @RequestParam Optional<String> error) {
        if (authentication != null) {
            return "redirect:/";
        }
        model.addAttribute("error", error);
        return "login";
    }

    @GetMapping(value = {"/", "/home"})
    String home(Authentication authentication, Model model) {
//        boolean isAuthenticated = authentication != null;
//        model.addAttribute("isAuthenticated", isAuthenticated);
//        if (isAuthenticated) {
//            User user = userRepository.findByUsername(((org.springframework.security.core.userdetails.User) authentication.getPrincipal()).getUsername());
//            model.addAttribute("role", user.getRole());
//        }
        return "index";
    }
}
