public class AsyncB implements Queueable{
    public void execute(QueueableContext q){
        System.debug('From Class B');
    }
}