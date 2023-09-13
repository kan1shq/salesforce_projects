trigger trigger_4 on Course__c (before delete) {
    List<Course__c> obj = new List<Course__c>();
    obj = Trigger.old;
    for(Course__c er: obj){
        if(er.fees__c > 5000){
            er.fees__c.addError('Please do not delete this record. YAHI TOH HUMARI ROZI ROTI HAI');
        }
    }
}