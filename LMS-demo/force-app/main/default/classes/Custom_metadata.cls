public class Custom_metadata {
    public void tester(){
        testing_metadata__mdt obj = testing_metadata__mdt.getInstance('mydataset');
        if(obj.flag__c == true){
            system.debug('Execute');
        }
        else{
            system.debug('Dont Execute');
        }
    }
}