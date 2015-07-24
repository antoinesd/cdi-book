package chap01.cdi;

import chap01.NotificationService;
import chap01.Post;
import chap01.User;

import java.util.List;
import javax.enterprise.context.ApplicationScoped;
import javax.enterprise.event.Observes;

/**
 *
 */

// tag::snippets[]
@ApplicationScoped
public class WebSocketNotifService implements NotificationService {
  
  void observeNewPost(@Observes NewPost np) {
    notifyUsers(np.getUsers(),np.getPost());
  }
  
  @Override
  public void notifyUsers(List<User> followers, Post post) {
    //do notificiation
  }
}
// end::snippets[]
