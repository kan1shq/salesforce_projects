public class SABAClass Implements Schedulable{
    public void execute(SchedulableContext sc){
        BatchApex obj = new BatchApex();
        database.executeBatch(obj, 2);
    }
}