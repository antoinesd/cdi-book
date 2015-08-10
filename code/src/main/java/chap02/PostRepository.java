package chap02;

import java.util.List;

/**
 *
 */
public interface PostRepository {
    
    Post savePost(User user,Post post);
    
    List<Post> getAllPostFromUser(User user);
    
}
