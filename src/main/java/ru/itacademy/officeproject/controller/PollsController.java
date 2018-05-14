package ru.itacademy.officeproject.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import ru.itacademy.officeproject.model.CurrentUser;
import ru.itacademy.officeproject.model.Poll;
import ru.itacademy.officeproject.model.User;
import ru.itacademy.officeproject.service.PollService;
import ru.itacademy.officeproject.service.SlackService;

import java.io.IOException;
import java.util.Optional;

@Controller
public class PollsController {
    @Autowired
    PollService pollService;
    @Autowired
    SlackService slackService;

    @GetMapping("/polls")
    String getAllPolls (Model model, Authentication authentication){
        CurrentUser currentUser = (CurrentUser) authentication.getPrincipal();
        User user = currentUser.getUser();
        if (!user.getRole().equals("ADMIN")) {
            model.addAttribute("polls", pollService.getAllPublishedPolls());
        } else {
            model.addAttribute("polls", pollService.getAllPolls());
        }
        return "polls";
    }

    @GetMapping("/polls/{id}")
    String getAllPolls (Model model, @PathVariable Long id){
        Optional<Poll> poll = pollService.getById(id);
        if (!poll.isPresent()) {
            throw new IllegalArgumentException("No poll with id = " + id);
        }
        model.addAttribute("poll", poll.get());
        return "poll";
    }

    @PostMapping("/vote")
    String vote(Model model, Authentication authentication, @RequestParam Long answerId) {
        CurrentUser currentUser = (CurrentUser) authentication.getPrincipal();
        User user = currentUser.getUser();
        pollService.addUserAnswer(user, pollService.getAnswerById(answerId).get());
        return "thanks";
    }

    @GetMapping("/createpoll")
    String createPollForm(Model model, Authentication authentication) {
        CurrentUser currentUser = (CurrentUser) authentication.getPrincipal();
        User user = currentUser.getUser();
        if (!user.getRole().equals("ADMIN")) {
            return "redirect:/index";
        } else {
            return "pollcreateform";
        }
    }

    @PostMapping("/createpoll")
    String createPoll(Model model, Authentication authentication, @RequestParam String title) {
        Poll poll = new Poll();
        poll.setPublished(false);
        poll.setTitle(title);
        pollService.savePoll(poll);
        return "redirect:/polls";
    }

    @PostMapping("/publish")
    String publishPoll(Model model, Authentication authentication, @RequestParam Long pollId, @RequestParam Boolean publish) throws IOException {
        Poll poll = pollService.getById(pollId).get();
        poll.setPublished(publish);
        pollService.savePoll(poll);
        if(publish) {
            slackService.notifyAllUsers("Появилось новое голосование: " + poll.getTitle() + " Загляните по <http://localhost:8080/polls/" + poll.getId() + "|ссылке>");
        }
        return "redirect:/polls";
    }
}
