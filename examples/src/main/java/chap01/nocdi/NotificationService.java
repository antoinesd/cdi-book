package chap01.nocdi;

import java.util.List;

/**
 *
 */
public interface NotificationService {
    void notifyUsers(List<User> followers, Post post);
}
