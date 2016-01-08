package chap02.cdi;

import chap02.NotificationService;
import chap02.Post;
import chap02.User;

import java.util.List;
import javax.enterprise.context.ApplicationScoped;
import javax.enterprise.event.Observes;

/**
 *
 */

// tag::snippets[]
@ApplicationScoped
public class WebSocketNotifService implements NotificationService {
  
  void observeNewPost(@Observes NewPost np) { //<1>
    notifyUsers(np.getUsers(),np.getPost());
  }
  
  @Override
  public void notifyUsers(List<User> followers, Post post) {
    //do notificiation
  }
}
// end::snippets[]
