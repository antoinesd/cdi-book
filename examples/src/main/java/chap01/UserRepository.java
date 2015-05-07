package chap01;

import java.util.List;

/**
 *
 */
public interface UserRepository {
    List<User> findFollowers(User user);
}
