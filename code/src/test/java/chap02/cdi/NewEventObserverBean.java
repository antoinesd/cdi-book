package chap02.cdi;

import javax.enterprise.context.ApplicationScoped;
import javax.enterprise.event.Observes;

/**
 *
 */
// tag::snippets[]
@ApplicationScoped //<1>
public class NewEventObserverBean {

    private int count = 0;

    void observeNewPost(@Observes NewPost np) { //<2>
        count += 1;
    }

    public int getCount() {
        return count;
    }
}
//end::snippets[]
