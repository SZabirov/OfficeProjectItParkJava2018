package ru.itacademy.officeproject.service;

import ru.itacademy.officeproject.model.Group;
import ru.itacademy.officeproject.model.User;

import java.io.IOException;

public interface SlackService {
    void notifyUser(User user, String message) throws IOException;
    void notifyAllUsers(String message) throws IOException;
    void notifyGroup(Group group, String message) throws IOException;
}

