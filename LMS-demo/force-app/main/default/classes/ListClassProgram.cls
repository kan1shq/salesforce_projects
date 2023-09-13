@isTest
public class ListClassProgram {
    public static testmethod void main(){
        List<Integer> obj = new List<Integer>();
        // {124, 643, 233, 557, 227, 795, 800}
        // 1st
        obj.add(124);
        obj.add(643);
        obj.add(233);
        obj.add(557);
        obj.add(227);
        obj.add(795);
        obj.add(800);
     
        system.debug(obj);
        
        // 2nd
        obj.sort();
        System.debug('Sorted List: ' + obj);
        
        // 3rd
        System.debug('Does the list contain 634? - ' + obj.contains(634));
        
        // 4th
        System.debug('List length: ' + obj.size());
        
        // 5th
        System.debug('Get second largest element: ' + obj.get(obj.size()-2));
        
    }
}