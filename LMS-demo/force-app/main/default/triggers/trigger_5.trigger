trigger trigger_5 on Course__c (before insert, before update, before delete) {
    List<Course__c> obj = new List<Course__c>();
    if(Trigger.isInsert || Trigger.isUpdate){
        obj = Trigger.new;
        for(Course__c cc: obj){
            if(cc.fees__c < 500){
                cc.fees__c.addError('Course fees cannot be less than 500');
            }
        }
    }
    
    else if(Trigger.isDelete){
        obj = Trigger.old;
        for(Course__c cc: obj){
            if(cc.fees__c > 5000){
                cc.fees__c.addError('You cannot delete a course with a big revenue stream');
            }
        }
    }
}