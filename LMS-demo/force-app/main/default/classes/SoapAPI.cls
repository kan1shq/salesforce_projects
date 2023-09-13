global class SoapAPI {
    
	WebService static List<Account> getAccount(){
        List<Account> data;
        data=[select id, name from Account];
        return data;
    }
    
    
    WebService static void createAccount(string newName){
        Account obj=new Account();
        obj.name=newName;
        INSERT obj;
    }
    
    
    WebService static void deleteAccount(){
        
        RestRequest req=RestContext.request;
        RestResponse res=RestContext.response;
        string acId= req.requestURI.subString(req.requestURI.lastIndexOf('/')+1);
        Account act=[select id from Account where id=:acId];
        DELETE act;      
    }
    
    
    WebService static void updateAccount(string sid, string newName){
        Account ac=[select id , name from Account where id=:sid];
        ac.name=newName;
        UPDATE ac;
    }
}