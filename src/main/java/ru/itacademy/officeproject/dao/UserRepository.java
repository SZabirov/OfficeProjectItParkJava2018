package ru.itacademy.officeproject.dao;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;
import ru.itacademy.officeproject.model.Group;
import ru.itacademy.officeproject.model.User;

import java.util.List;

@Repository
public interface UserRepository extends CrudRepository<User, Long> {
    User findByUsername(String username);
    List<User> findAllByGroups(List<Group> groups);
}
