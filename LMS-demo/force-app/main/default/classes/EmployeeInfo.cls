public class EmployeeInfo {
	@auraEnabled
    public static void insertEmp(string eName, string eFname, string eAddr, string eDept, string eSal) {
        Hero_Employee__c hemp = new Hero_Employee__c();
        try{
            hemp.name = eName;
            hemp.empFName__c = eFname;
            hemp.empAddr__c = eAddr;
            hemp.empDept__c = eDept;
            hemp.empSalary__c = Integer.valueOf(eSal);
        }
        catch (Exception e){
            system.debug(e);
        }
        Insert hemp;
    }
}