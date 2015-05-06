package chap01.nocdi;

import java.util.List;

/**
 *
 */
public interface UserRepository {
    List<User> findFollowers(User user);
}
