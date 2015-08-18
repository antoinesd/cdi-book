package chap04.repository;

import chap04.model.Post;

import java.util.HashMap;
import java.util.Map;

public class InMemoryPostRepository implements PostRepository {

    private long id = 0L;
    private Map<Long, Post> posts = new HashMap<>();

    @Override
    public void save(Post post) {
        long id = this.id++;
        posts.put(id, post);
        System.out.println("Saving " + post + " in the InMemoryPostRepository");
    }

    @Override
    public String toString() {
        return "I am the InMemoryPostRepository";
    }
}
