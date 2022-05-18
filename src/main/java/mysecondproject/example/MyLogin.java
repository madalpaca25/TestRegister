package mysecondproject.example;

public class MyLogin extends ExampleSupport{

    Accounts[] accounts = new Accounts[3];
    Accounts account = new Accounts("");
    private String userName = "";
    private String passWord = "";
    private String errorMessage = "";
    private Accounts currentAccount = null;


    //Previous Activity
    //private String[] userNames = {"mads1", "mads2", "mads3", "mads4", "mads5"};
    //private String[] passWords = {"pass1", "pass2", "pass3", "pass4", "pass5"};
    //private String[] adminNames = {"dinar1", "dinar2", "dinar3", "dinar4", "dinar5"};
    //private String[] adminPass = {"adminpass1", "adminpass2", "adminpass3", "adminpass4", "adminpass5"};
    
    public String execute(){

        accounts[0] = new Accounts("userMad","passMad", "Mad", "Dinar", "09/25/1990", "Regular");
        accounts[1] = new Accounts("adminMad1", "adminPassMad1", "Mad1", "Dinar1", "09/01/1991", "Admin");
        accounts[2] = new Accounts("superAdminMad2", "superAdminPassMad2", "Mad2", "Dinar2", "09/02/1992", "SuperAdmin");

        for (int i = 0; i < accounts.length; i++ ){
            if (accounts[i].getUserNames().equals(userName) && accounts[i].getPassWords().equals(passWord)){ 
                currentUser(accounts[i]); //return "SuccessfulLogin";
            }
        }
        if (getCurrentAccount() != null) { return "SuccessfulLogin";}
        if (userName.equals("") & passWord.equals("")) { setErrorMessage("Enter Username/Password"); }
        else {setErrorMessage("Not Registered"); } 
        return SUCCESS;
    }

    public Accounts currentUser(Accounts current){
        currentAccount = current;
        return currentAccount;
    }

    public Accounts getCurrentAccount() {
        return currentAccount;
    }

    public void setCurrentAccount(Accounts currentAccount) {
        this.currentAccount = currentAccount;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getPassWord() {
        return passWord;
    }

    public void setPassWord(String passWord) {
        this.passWord = passWord;
    }

    public String getErrorMessage() {
        return errorMessage;
    }

    public void setErrorMessage(String errorMessage) {
        this.errorMessage = errorMessage;
    } 
}
