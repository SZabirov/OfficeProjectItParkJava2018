package ru.itacademy.officeproject.dao;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;
import ru.itacademy.officeproject.model.Poll;

import java.util.List;

@Repository
public interface PollRepository extends CrudRepository<Poll, Long> {
    List<Poll> findAllByOrderByIdAsc();
    List<Poll> findAllByIsPublished(Boolean isPublished);
}
