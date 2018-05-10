package ru.itacademy.officeproject.dao;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;
import ru.itacademy.officeproject.model.Group;


@Repository
public interface GroupRepository extends CrudRepository<Group, Long> {

}
