package chap02.cdi;

import chap02.Post;
import chap02.User;

import java.util.List;

/**
 *
 */
// tag::snippets[]
public class NewPost {

  private Post post;
  private List<User> users;

  public NewPost(Post post, List<User> users) {
    this.post = post;
    this.users = users;
  }


  public Post getPost() {
    return post;
  }

  public List<User> getUsers() {
    return users;
  }
}
// end::snippets[]
