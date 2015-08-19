package chap04.repository;

import chap04.model.Post;

import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.atomic.AtomicLong;

public class InMemoryConcurrentPostRepository { // implements PostRepository {

    private AtomicLong id = new AtomicLong(0L);
    private ConcurrentMap<Long, Post> posts = new ConcurrentHashMap<>();

    // @Override
    public void save(Post post) {
        long postId = id.getAndIncrement();
        posts.put(postId, post);
    }
}
