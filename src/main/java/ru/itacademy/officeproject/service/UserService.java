package ru.itacademy.officeproject.service;

import ru.itacademy.officeproject.model.User;

import java.util.Optional;

public interface UserService {
    Optional<User> getUserById(Long id);
}
