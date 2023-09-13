trigger trigger_1 on Course__c (before insert) {
    List<Course__c> obj = new List<Course__c>();
    obj = Trigger.new;
    for(Course__c cc: obj){
        if(cc.Fees__c < 500){
            //cc.addError('Course fees cannot be less than Rs. 500!');
            cc.fees__c.addError('Course fees cannot be less than Rs. 500!');
        }
    }
}