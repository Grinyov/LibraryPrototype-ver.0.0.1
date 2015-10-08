package beans;

/**
 * Created by green on 09.10.2015.
 */
public class Author {

    public Author() {
    }

    private String name;

    public Author(String name) {
        this.name = name;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
}
