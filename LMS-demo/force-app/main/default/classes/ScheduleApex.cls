public class ScheduleApex implements Schedulable{
    public void execute(SchedulableContext sc){
        Employee__c obj = new Employee__c();
        obj.ename__c = 'Shahrukh';
        obj.salary__c = '100000';
        obj.deptno__c = '20';
        obj.job__c = 'Manager';
        INSERT obj;
    }
}