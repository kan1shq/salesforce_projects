@isTest
public class SetExample {
    public static testmethod void main(){
        Set<Integer> obj = new Set<Integer>();
        obj.add(-3);
        obj.add(53);
        obj.add(25);
        obj.add(0);
        obj.add(25);
        obj.add(1123);
        obj.add(432);
        obj.add(5);
        System.debug(obj);
        Set<Integer> mySet = new Set<Integer>{1, 3};
            List<Integer> myList = new List<Integer>{1, 10};
                Boolean res1 = mySet.removeAll(myList);
        System.debug(myList);
        System.debug(mySet);
        System.debug('The result is: ' + res1);
        
        Set<Integer> mySet1 = new Set<integer>{1, 3, 77};
            System.debug(mySet1);
        Set<Integer> mySet2 = new Set<Integer>{1, 3, 7};
            Boolean result = mySet1.retainAll(mySet2);
        System.debug(mySet1);
        System.debug(mySet2);
        System.debug(result);
    }
}