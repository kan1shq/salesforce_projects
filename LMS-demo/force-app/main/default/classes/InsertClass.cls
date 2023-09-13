@isTest
public class InsertClass {
    public static testmethod void main(){
        merchandise__c obj = new merchandise__c();
        /*obj.ename__c = 'Big B';
        obj.salary__c = 100000;
        obj.deptno__c = '20';
        obj.job__c = 'CEO';*/
        
        obj.merchandise__c = 2334;
        obj.name = 'New Insert Test';
        obj.merchandise_desc__c = 'asgoubas gaouubg asog';
        obj.Merchandise_Stock__c = 5000;
        Insert obj;
    }
}