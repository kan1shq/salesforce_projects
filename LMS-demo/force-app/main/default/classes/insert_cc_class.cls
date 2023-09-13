public with sharing class insert_cc_class {

    public String job { get; set; }

    public String deptno { get; set; }

    public String esalary { get; set; }

    public String ename { get; set; }

    public PageReference cancel() {
        return null;
    }


    public PageReference insertRecord() {
        Employee__c obj = new Employee__c();
        obj.ename__c = ename;
        obj.salary__c = esalary;
        obj.deptno__c = deptno;
        obj.job__c = job;
        INSERT obj;
        PageReference pr = new PageReference('https://training78-dev-ed.develop.my.salesforce.com/a05/o');
//        return null;
        return pr;
    }

}