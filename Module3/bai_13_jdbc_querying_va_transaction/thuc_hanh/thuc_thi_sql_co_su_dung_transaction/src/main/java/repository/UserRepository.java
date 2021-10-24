package repository;

import bean.User;

import java.sql.SQLException;
import java.util.ArrayList;

public interface UserRepository {
    ArrayList<User> findAll();

    User findById(Integer id);

    void updateUser(Integer id, String name, String email, String country);

    void deleteUser(Integer idDelete);

    void createUser(Integer idCreate, String nameCreate, String emailCreate, String countryCreate);

    ArrayList<User> countrySearch(String countrySearch);

    ArrayList<User> sortName();

    public User getUserById(int id);

    public void insertUserStore(User user) throws SQLException;

    public void insertUpdateUseTransaction();

    public void addUserTransaction(User user, int[] permisions);

}
