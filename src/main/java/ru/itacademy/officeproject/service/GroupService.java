package ru.itacademy.officeproject.service;

import ru.itacademy.officeproject.model.Group;

import java.util.List;
import java.util.Optional;

public interface GroupService {
    Optional<Group> getGroupById(Long id);
    List<Group> getAllGroups();
}
