package service.impl;

import bean.User;
import repository.UserRepository;
import repository.impl.UserRepositoryImpl;
import service.UserService;

import java.io.PrintWriter;
import java.util.ArrayList;

public class UserServiceImpl implements UserService {
    private static UserRepository userRepository = new UserRepositoryImpl();
    @Override
    public ArrayList<User> FindAll() {
        return userRepository.findAll();
    }
}
