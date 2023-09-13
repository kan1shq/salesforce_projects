@isTest
public class StudentMarksTest {
    public static testmethod void main(){
        StudentMarks mks = new StudentMarks();
        mks.setValues(101, 'John Doe', 100, 200, 400);
        mks.getAvg();
        mks.getTotal();
        mks.getValues();
    }
}