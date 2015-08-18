package chap04;

import chap04.model.Post;
import chap04.repository.PostRepository;
import chap04.service.PostService;
import org.jboss.weld.environment.se.Weld;
import org.jboss.weld.environment.se.WeldContainer;

public class BootstrapingWeld {

    public static void main(String... args) {

        Weld weld = new Weld();
        WeldContainer container = weld.initialize();

        PostRepository repository = container.instance().select(PostRepository.class).get();
        PostService postService = container.instance().select(PostService.class).get();

        postService.post(new Post());

        weld.shutdown();
    }
}