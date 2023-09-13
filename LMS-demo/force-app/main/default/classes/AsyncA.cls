public class AsyncA {
    @future
    public static void fun1(){
        System.debug('From Class A');
        System.enqueueJob(new AsyncB());
    }
}