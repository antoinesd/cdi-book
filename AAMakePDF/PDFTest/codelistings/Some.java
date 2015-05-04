//<start id="maybe-some"/>
package joy;

public class Some extends Maybe {
    final private Object value;

    public Some(Object value) {
        this.value = value;
    }

    public Object value() {
        return this.value;
    }
}
//<end id="maybe-some"/>
