@isTest
public class DeleteClass {
    public static testmethod void main(){
        List<Merchandise__c> obj = new List<Merchandise__c>();
        obj = [SELECT id FROM Merchandise__c];  // we only need record id to delete everything]
        
        DELETE obj;
    }
}