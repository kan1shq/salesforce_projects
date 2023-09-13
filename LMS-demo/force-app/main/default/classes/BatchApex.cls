public class BatchApex Implements database.Batchable<employee__c>, database.Stateful {
    string name = 'Kanishk';
    
    public Iterable<Employee__c> start(database.BatchableContext bc){
        system.debug('I am in start method: ' + name);
        name = 'Gurnoor';
        return [SELECT salary__c FROM employee__c];
    }
    
    public void execute(database.BatchableContext bc, List<Employee__c> obj){
    	system.debug('I am in execute method: ' + name);
        name = 'Ketan';
        for(Employee__c er: obj){
            er.salary__c += 10000;
        }
        UPDATE obj;
    }
    
    public void finish(database.BatchableContext bc){
        system.debug('I am in finish method: ' + name);
        Messaging.SingleEmailMessage mail = new Messaging.SingleEmailMessage();
        
        String[] toAddress = new String[]{'vijaypracash2019@gmail.com', 'harshaboddu14@gmail.com'};
            
        mail.setToAddresses(toAddress);
        mail.setSubject('Rishta Done.');
        mail.setPlainTextBody('Hello Boddu Harsha, It is I. Your father');
        Messaging.sendEmail(new Messaging.SingleEmailMessage[]{mail});
    }
}