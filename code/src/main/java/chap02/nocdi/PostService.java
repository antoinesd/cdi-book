package chap02.nocdi;


import chap02.Post;
import chap02.PostRepository;
import chap02.User;
import chap02.UserRepository;
import chap02.NotificationService;

import java.util.ArrayList;
import java.util.List;
import javax.transaction.TransactionManager;

/**
 *
 */
// tag::snippets[]
public class PostService {

  private UserRepository userRep;
  private PostRepository postRep;
  private NotificationService notifServ;
  private TransactionManager transManager; //<1>

  public PostService(NotificationService notifServ, //<2>
                     PostRepository postRep, UserRepository userRep,
                     TransactionManager transManager) {
    this.notifServ = notifServ;
    this.postRep = postRep;
    this.userRep = userRep;
    this.transManager = transManager;
  }

  public List<Post> getTimeLine(User user) {
    List<Post> res = new ArrayList<>();
    userRep.findFollowers(user)
        .forEach(u -> res.addAll(postRep.getAllPostFromUser(u))); //<3>
    return res;
  }

  public void postMessage(User user, Post post) throws Exception {
    transManager.begin(); //<1>
    postRep.savePost(user, post);
    notifServ.notifyUsers(userRep.findFollowers(user), post); //<4>
    transManager.commit(); //<1>
  }
}
// end::snippets[]
