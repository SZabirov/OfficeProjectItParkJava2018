package ru.itacademy.officeproject.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import ru.itacademy.officeproject.model.Group;
import ru.itacademy.officeproject.model.User;
import ru.itacademy.officeproject.service.GroupService;
import ru.itacademy.officeproject.service.SlackService;
import ru.itacademy.officeproject.service.UserService;

import java.io.IOException;
import java.util.Optional;


@Controller
public class TaskController {

    @Autowired
    UserService userService;
    @Autowired
    SlackService slackService;
    @Autowired
    GroupService groupService;

    @GetMapping("/user/sendtask")
    public String sendTask(Model model, @RequestParam(required = false) Long userId) {
        model.addAttribute("userId", userId);
        return "task";
    }

    @PostMapping("/user/sendtask")
    public String task(Model model, @RequestParam String task, @RequestParam Long userId) throws IOException {
        Optional<User> user = userService.getUserById(userId);
        if (user.isPresent()) {
            slackService.notifyUser(user.get(), task);
        } else {
            throw new IllegalArgumentException("No user with id = " + userId + "found");
        }
        return "task";
    }

    @GetMapping("/user/sendtasktogroup")
    public String sendTaskToGroup(Model model, @RequestParam(required = false) Long groupId) {
        model.addAttribute("groupId", groupId);
        return "tasktogroup";
    }

    @PostMapping("/user/sendtasktogroup")
    public String tasktogroup(Model model, @RequestParam String task, @RequestParam Long groupId) throws IOException {
        Optional<Group> group = groupService.getGroupById(groupId);
        if (group.isPresent()) {
            slackService.notifyGroup(group.get(), task);
        } else {
            throw new IllegalArgumentException("No user with id = " + groupId + "found");
        }
        return "task";
    }
}
