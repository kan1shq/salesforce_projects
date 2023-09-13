@isTest
public class UpsertClass {
    public static testmethod void main(){
        List<Merchandise__c> obj = new List<Merchandise__c>();
        obj = [SELECT merchandise_stock__c FROM merchandise__c];
        for(Merchandise__c m: obj){
            m.Merchandise_Stock__c += 1000;
        }
        
        Merchandise__c obj1 = new Merchandise__c();
        obj1.name = 'Upsert Test';
        obj1.merchandise_desc__c = 'agppihsa sdh sdh sh ';
        obj1.Merchandise__c = 1123;
        obj1.Merchandise_Stock__c = 1400;
        
        obj.add(obj1);
        
        UPSERT obj;
    }
}