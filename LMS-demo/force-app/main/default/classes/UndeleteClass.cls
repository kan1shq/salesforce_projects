@isTest
public class UndeleteClass {
    public static testmethod void main(){
        List<Merchandise__c> obj = new List<Merchandise__c>();
        obj = [SELECT id from Merchandise__c all rows];  // "all rows"
        UNDELETE obj;			// we cannot undelete specific records.
    }
}