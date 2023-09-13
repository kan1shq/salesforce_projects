public class searchAccount {

    @auraEnabled(cacheable = true)
    public static List<Account> getAllAccounts(String actName){
        string aName = '%' + actName + '%';
        List<Account> act = [select name from Account where name like : aName];
        return act;
    }
}