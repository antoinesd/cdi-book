package chap01;

import chap01.Post;
import chap01.User;

import java.util.List;

/**
 *
 */
public interface NotificationService {
    void notifyUsers(List<User> followers, Post post);
}
