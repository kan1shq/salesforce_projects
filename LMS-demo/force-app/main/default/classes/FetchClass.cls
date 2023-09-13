@isTest
public class FetchClass {
    public static testmethod void main(){
        List<Merchandise__c> obj = new List<Merchandise__c>();
        obj = [SELECT name, merchandise_desc__c, merchandise__c, merchandise_stock__c FROM merchandise__c];
        for(Merchandise__c m: obj){
            system.debug(m);
        }
    }
}