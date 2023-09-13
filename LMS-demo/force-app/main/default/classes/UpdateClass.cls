@isTest
public class UpdateClass {
    public static testmethod void main(){
        List<Merchandise__c> obj = new List<Merchandise__c>();
        obj = [SELECT Merchandise_Stock__c FROM Merchandise__c];
        
        for(Merchandise__c m: obj){
            m.merchandise_stock__c += 1000;
        }
        
        UPDATE obj;
    }
}