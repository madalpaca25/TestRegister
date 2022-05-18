package mysecondproject.example;

public class Accounts {

    private String userNames = "";
    private String passWords = "";
    private String firstName;
    private String lastName;
    private String birthDate;
    private String accountType;

    public Accounts(String userNames){
    this.userNames = userNames;}

    public Accounts(String userNames, String passWords, String firstName, String lastName, String birthDate, String accountType){
        this.userNames = userNames;
        this.passWords = passWords;
        this.firstName = firstName;
        this.lastName = lastName;
        this.birthDate = birthDate;
        this.accountType = accountType;
    }

    public String getUserNames() {
        return userNames;
    }

    public void setUserNames(String userNames) {
        this.userNames = userNames;
    }

    public String getPassWords() {
        return passWords;
    }

    public void setPassWords(String passWords) {
        this.passWords = passWords;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getBirthDate() {
        return birthDate;
    }

    public void setBirthDate(String birthDate) {
        this.birthDate = birthDate;
    }

    public String getAccountType() {
        return accountType;
    }

    public void setAccountType(String accountType) {
        this.accountType = accountType;
    }
}
