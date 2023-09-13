trigger trigger_6 on Course__c (before insert, before update, before delete) {
    Datetime dt = Date.today();
    String dayOfWeek = dt.format('EEEE');
    System.debug(dayOfWeek);
    List<Course__c> obj = new List<Course__c>();
    
    if(Trigger.isInsert || Trigger.isUpdate){
        obj = Trigger.new;
        for(Course__c cc: obj){
            if(dayOfWeek == 'Wednesday'){
                cc.addError('You cannot perform operations on a holiday');
            }
            if(cc.fees__c < 500 && dayOfWeek != 'Wednesday'){
                cc.fees__c.addError('Course fees cannot be less than 500');
            }
        }
    }
    
    else if(Trigger.isDelete){
        obj = Trigger.old;
        for(Course__c cc: obj){
            if(dayOfWeek == 'Wednesday'){
                cc.addError('You cannot perform operations on a holiday');
            }
            if(cc.fees__c > 5000 && dayOfWeek != 'Wednesday'){
                cc.fees__c.addError('You cannot delete a course with a big revenue stream');
            }
        }
    }
}