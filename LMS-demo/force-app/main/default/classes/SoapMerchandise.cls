global class SoapMerchandise {
    
    
    WebService static List<Merchandise__c> getMerchandise(){
        List<Merchandise__c> data;
        data=[select id, name from Merchandise__c];
        return data;
    }
    
    
    WebService static void createMerchandise(string newName){
        Merchandise__c obj = new Merchandise__c();
        obj.name = newName;
        INSERT obj;
    }
    
    
    WebService static void deleteMerchandise(){
        
        RestRequest req=RestContext.request;
        RestResponse res=RestContext.response;
        string mId= req.requestURI.subString(req.requestURI.lastIndexOf('/')+1);
        List<Merchandise__c> mer;
        mer = [select id from Merchandise__c where id=:mId];
        DELETE mer;
    }
    
    /*
    WebService static void updateMerchandise(string sid, string newName){
        List<Merchandise__c> mer;
        mer = [select id , name from Merchandise__c where id=:sid];
        mer.name=newName;
        UPDATE mer;
    }
*/
}