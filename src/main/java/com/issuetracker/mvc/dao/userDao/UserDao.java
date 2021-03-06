package com.issuetracker.mvc.dao.userDao;

import com.issuetracker.mvc.model.User;

import java.util.List;

/**
 * Created by acer on 1/28/2015.
 */
public interface UserDao {
    public void insertData(User user);
    public void updateData(User user);
    public void deleteData(Integer id);
    public User checkUser(String username,String password);
    public User getUser(Integer id);
    public List<User> getUserList();

}
