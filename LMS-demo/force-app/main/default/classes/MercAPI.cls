@restResource(urlMapping='/callMerchandise/*')
global class MercAPI {
    
    
    @httpGet
    global static List<Merchandise__c> getMerchandise(){
        List<Merchandise__c> data;
        data=[select id, name from Merchandise__c];
        return data;
    }
    
    
    @httpPost
    global static void createMerchandise(List<Merchandise__c> arr){
        for(Merchandise__c er: arr){
            Merchandise__c obj = new Merchandise__c();
        	obj.name = er.name;
            obj.Merchandise__c = er.Merchandise__c;
            obj.Merchandise_Stock__c = er.Merchandise_Stock__c;
            obj.Merchandise_Desc__c = er.Merchandise_Desc__c;
            INSERT obj;
        }
    }
    
    
    @httpDelete
    global static void deleteMerchandise(){
        
        RestRequest req=RestContext.request;
        RestResponse res=RestContext.response;
        string mId= req.requestURI.subString(req.requestURI.lastIndexOf('/')+1);
        List<Merchandise__c> mer;
        mer = [select id from Merchandise__c where id=:mId];
        DELETE mer;
    }
    
    /*
    @httpPut
    global static void updateMerchandise(string sid, string newName){
        List<Merchandise__c> mer;
        mer = [select id , name from Merchandise__c where id=:sid];
        mer.name=newName;
        UPDATE mer;
    }
*/
}