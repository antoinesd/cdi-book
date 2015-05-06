package chap01.nocdi;

import java.util.List;

/**
 *
 */
public interface PostRepository {
    
    Post savePost(User user,Post post);
    
    List<Post> getAllPostFromUser(User user);
    
}
