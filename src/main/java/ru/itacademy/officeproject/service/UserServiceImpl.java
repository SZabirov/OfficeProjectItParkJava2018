package ru.itacademy.officeproject.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import ru.itacademy.officeproject.dao.UserRepository;
import ru.itacademy.officeproject.model.Group;
import ru.itacademy.officeproject.model.User;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

@Service
public class UserServiceImpl implements UserService {
    @Autowired
    UserRepository userRepository;

    @Override
    public Optional<User> getUserById(Long id) {
        return userRepository.findById(id);
    }

    @Override
    public List<User> getAllUsers() {
        return (List<User>) userRepository.findAll();
    }

    @Override
    public List<User> getUsersByGroup(Group group) {
        List<Group> groups = new ArrayList<>();
        groups.add(group);
        return userRepository.findAllByGroups(groups);
    }
}
