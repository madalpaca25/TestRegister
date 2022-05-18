package mysecondproject.example;

public class About extends ExampleSupport{
    public String execute() {

        return SUCCESS;
    }

    private String webAbout = "Back in 1954, a man named Ray Kroc discovered a small burger restaurant in California, and wrote the first page of our history. From humble beginnings as a small restaurant, we're proud to have become one of the world's leading food service brands with more than 36,000 restaurants in more than 100 countries.";

    public String getWebAbout() {
        return webAbout;
    }
    public void setWebAbout(String webAbout) {
        this.webAbout = webAbout;
    }
}
