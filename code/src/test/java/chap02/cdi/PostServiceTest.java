package chap02.cdi;

import chap02.Post;
import chap02.User;
import org.jboss.arquillian.container.test.api.Deployment;
import org.jboss.arquillian.junit.Arquillian;
import org.jboss.shrinkwrap.api.ShrinkWrap;
import org.jboss.shrinkwrap.api.asset.EmptyAsset;
import org.jboss.shrinkwrap.api.spec.JavaArchive;
import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;

import javax.inject.Inject;

/**
 *
 */
// tag::snippets[]
@RunWith(Arquillian.class) //<1>
public class PostServiceTest {
    @Deployment //<2>
    public static JavaArchive createDeployment() {
        return ShrinkWrap.create(JavaArchive.class)
                .addPackages(true,"chap02") //<3>
                .addAsManifestResource(EmptyAsset.INSTANCE, "beans.xml"); //<4>
    }

    @Inject //<5>
    NewEventObserverBean neob;
    
    @Inject
    PostService ps;
    
    @Test //<6>
    public void testPostMessage() throws Exception {

        ps.postMessage(new User(),new Post());
        Assert.assertEquals("1", neob.getCount());
        
    }
}
// end::snippets[]
