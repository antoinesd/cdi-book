package chap04.producer;

import chap04.repository.InMemoryPostRepository;
import chap04.repository.PostRepository;

import javax.enterprise.inject.Produces;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

public class PostRepositoryProducer {

    @PersistenceContext(unitName="PostRepository")
    private EntityManager em;

    @Produces
    public PostRepository buildPostRepository() {
        return new InMemoryPostRepository(16);
    }
}
