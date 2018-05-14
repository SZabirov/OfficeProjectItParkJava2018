package ru.itacademy.officeproject.service;

import ru.itacademy.officeproject.model.Answer;
import ru.itacademy.officeproject.model.Poll;
import ru.itacademy.officeproject.model.User;

import java.util.List;
import java.util.Optional;

public interface PollService {
    List<Poll> getAllPolls();
    List<Poll> getAllPublishedPolls();
    Optional<Poll> getById(Long id);
    void addUserAnswer(User user, Answer answer);
    Optional<Answer> getAnswerById(Long id);
    Poll savePoll(Poll poll);
}
