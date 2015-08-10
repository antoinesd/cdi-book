package chap02.cdi;


import chap02.Post;
import chap02.PostRepository;
import chap02.User;
import chap02.UserRepository;

import java.util.ArrayList;
import java.util.List;
import javax.enterprise.context.ApplicationScoped;
import javax.enterprise.event.Event;
import javax.inject.Inject;
import javax.transaction.Transactional;

/**
 *
 */
// tag::snippets[]
@ApplicationScoped //<1>
public class PostService {

  @Inject //<2>
  private UserRepository userRep;
  
  @Inject //<2>
  private PostRepository postRep;
  
  @Inject //<3>
  private Event<NewPost> postEvt;
  
  public List<Post> getTimeLine(User user) {
    List<Post> res = new ArrayList<>();
    userRep.findFollowers(user)
        .forEach(u -> res.addAll(postRep.getAllPostFromUser(u)));
    return res;
  }

  @Transactional //<4>
  public void postMessage(User user, Post post) {
    postRep.savePost(user, post);
    postEvt.fire(new NewPost(post,userRep.findFollowers(user))); //<3>
  }
}
// end::snippets[]
