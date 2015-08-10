package chap02;

import java.util.List;

/**
 *
 */
public interface NotificationService {
    void notifyUsers(List<User> followers, Post post);
}
