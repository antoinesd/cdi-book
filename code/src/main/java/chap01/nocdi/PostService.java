package chap01.nocdi;


import chap01.Post;
import chap01.PostRepository;
import chap01.User;
import chap01.UserRepository;
import chap01.NotificationService;

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
        .forEach(u -> res.addAll(postRep.getAllPostFromUser(u)));
    return res;
  }

  public void postMessage(User user, Post post) throws Exception {
    transManager.begin(); //<1>
    postRep.savePost(user, post);
    notifServ.notifyUsers(userRep.findFollowers(user), post); //<3>
    transManager.commit(); //<1>
  }
}
// end::snippets[]
