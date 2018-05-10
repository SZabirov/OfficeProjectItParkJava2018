package ru.itacademy.officeproject.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import ru.itacademy.officeproject.model.Group;
import ru.itacademy.officeproject.service.GroupService;

import java.util.List;
import java.util.NoSuchElementException;
import java.util.Optional;

@Controller
public class GroupController {
    @Autowired
    GroupService groupService;

    @RequestMapping("/groups/{id}")
    public String getGroupPage(@PathVariable Long id, Model model) {
        Optional<Group> group = groupService.getGroupById(id);
        if (group.isPresent()) {
            model.addAttribute(
                    "group", group.get());
            return "profile";
        } else {
            throw new NoSuchElementException("User with id = " + id + " not found");
        }
    }

    @RequestMapping("/groups")
    public String getAllGroups(Model model) {
        List<Group> groups = groupService.getAllGroups();
        model.addAttribute("groups", groups);
        return "groups";
    }
}
