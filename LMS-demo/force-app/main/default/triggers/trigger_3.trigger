trigger trigger_3 on Course__c (before update, before insert) {
    List<Course__c> obj = new List<Course__c>();
    obj = Trigger.new;
    for(Course__c er: obj){
        if(er.fees__c < 500){
            er.fees__c.addError('Course fees cannot be less than 500.');
        }
    }
}