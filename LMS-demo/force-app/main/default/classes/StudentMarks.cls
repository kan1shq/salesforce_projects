public class StudentMarks {
	Integer sid;
    String s_name;
    Integer sub1_m, sub2_m, sub3_m;
    
    public StudentMarks(){
        sid = 0;
        s_name = 'no name';
        sub1_m = 0;
        sub2_m = 0;
        sub3_m = 0;
    }
    
    public void setValues(Integer id, String name, Integer sub1, Integer sub2, Integer sub3){
        sid = id;
        s_name = name;
        sub1_m = sub1;
        sub2_m = sub2;
        sub3_m = sub3;
    }
    
    public void getAvg(){
        system.debug('Average Marks for this student are: ' + (sub1_m + sub2_m + sub3_m)/3);
    }
    
    public void getTotal(){
        system.debug('Total marks for this student are: ' + (sub1_m + sub2_m + sub3_m));
    }
    
    public void getValues(){
        system.debug('Student ID: ' + sid);
        system.debug('Student Name: ' + s_name);
        system.debug('Subject 1 Marks: ' + sub1_m);
        system.debug('Subject 2 Marks: ' + sub2_m);
        system.debug('Subject 3 Marks: ' + sub3_m);
    }
}