public class Custom_setting {    
    public void tester(){
        test_setting__c obj = test_setting__c.getInstance('mydataset');
        if(obj.flag__c == False){
            system.debug('Execute');
        }
        else{
            system.debug('Dont Execute');
        }
    }
}