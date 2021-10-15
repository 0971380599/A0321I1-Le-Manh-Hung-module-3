package repository;

import bean.User;

import java.util.ArrayList;

public interface UserRepository {
    ArrayList<User> findAll();
}
