package chap04.service;

import chap04.model.Post;
import chap04.repository.PostRepository;

import javax.enterprise.inject.New;
import javax.inject.Inject;
import javax.inject.Named;

@Named("PostServiceImpl")
public class PostServiceImpl implements PostService {

    @Inject
    private PostRepository postRepository;

    @Override
    public void post(Post post) {
        postRepository.save(post);
    }
}
