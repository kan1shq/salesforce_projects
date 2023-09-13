@isTest
public class ListClass {
    public static testmethod void main(){
        List<Integer> arr = new List<Integer>();
        arr.add(45);
        arr.add(456);
        arr.add(45);
        arr.add(-9);
        arr.add(298);
        arr.add(953);
        system.debug(arr);
        
        for(Integer a: arr){
            system.debug(a);
        }
        
        system.debug('Negative value in the array: ' + arr[3]);
    }
}