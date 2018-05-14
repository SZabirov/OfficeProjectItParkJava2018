package ru.itacademy.officeproject.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import ru.itacademy.officeproject.dao.AnswerRepository;
import ru.itacademy.officeproject.dao.PollRepository;
import ru.itacademy.officeproject.dao.UserRepository;
import ru.itacademy.officeproject.model.Answer;
import ru.itacademy.officeproject.model.Poll;
import ru.itacademy.officeproject.model.User;

import java.util.List;
import java.util.Optional;

@Service
public class PollServiceImpl implements PollService {
    @Autowired
    PollRepository pollRepository;
    @Autowired
    AnswerRepository answerRepository;
    @Autowired
    UserRepository userRepository;

    @Override
    public List<Poll> getAllPolls() {
        return pollRepository.findAllByOrderByIdAsc();
    }

    @Override
    public List<Poll> getAllPublishedPolls() {
        return pollRepository.findAllByIsPublished(true);
    }

    @Override
    public Optional<Poll> getById(Long id) {
        return pollRepository.findById(id);
    }

    @Override
    public void addUserAnswer(User user, Answer answer) {
        user.getAnswers().clear();
        userRepository.save(user);
        user.getAnswers().add(answer);
        userRepository.save(user);
    }

    @Override
    public Optional<Answer> getAnswerById(Long id) {
        return answerRepository.findById(id);
    }

    @Override
    public Poll savePoll(Poll poll) {
        return pollRepository.save(poll);
    }
}
