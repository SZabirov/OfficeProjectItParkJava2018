package ru.itacademy.officeproject.dao;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;
import ru.itacademy.officeproject.model.Answer;

@Repository
public interface AnswerRepository extends CrudRepository<Answer, Long> {
}
