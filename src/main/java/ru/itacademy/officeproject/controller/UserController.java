package ru.itacademy.officeproject.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import ru.itacademy.officeproject.model.CurrentUser;
import ru.itacademy.officeproject.model.User;
import ru.itacademy.officeproject.service.UserService;

import java.util.NoSuchElementException;
import java.util.Optional;

@Controller
public class UserController {
    @Autowired
    UserService userService;

    @RequestMapping("/user/{id}")
    public String getUserPage(@PathVariable Long id, Model model,
                              Authentication authentication) {
        CurrentUser currentUser = (CurrentUser) authentication.getPrincipal();
        Long currentUserId = currentUser.getId();
        if (id.equals(currentUserId)) {
            model.addAttribute("user", currentUser.getUser());
            model.addAttribute("isMine", true);
            return "profile";
        } else {
            Optional<User> user = userService.getUserById(id);
            if (user.isPresent()) {
                model.addAttribute("user", user.get());
                return "profile";
            } else {
                throw new NoSuchElementException("User with id = " + id + " not found");
            }
        }
    }

    @RequestMapping("/users")
    public String getAllUsers(Model model) {
        model.addAttribute("users", userService.getAllUsers());
        return "users";
    }
}
