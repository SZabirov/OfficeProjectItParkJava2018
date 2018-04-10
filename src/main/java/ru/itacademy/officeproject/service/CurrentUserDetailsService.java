package ru.itacademy.officeproject.service;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;
import ru.itacademy.officeproject.dao.UserRepository;
import ru.itacademy.officeproject.model.CurrentUser;
import ru.itacademy.officeproject.model.User;

@Service
public class CurrentUserDetailsService implements UserDetailsService {

    @Autowired
    UserRepository userRepository;

    @Override
    public CurrentUser loadUserByUsername(String username) throws UsernameNotFoundException {
        User user = userRepository.findByUsername(username);
        if (user == null) {
            throw new UsernameNotFoundException("No user with username = " + username + " found");
        }
        return new CurrentUser(user);
    }

}
