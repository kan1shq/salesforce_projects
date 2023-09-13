({
	helperMethod : function(cmp, evt) {
        alert('I am in form helper');
		var eName = cmp.get('v.empName');
        alert(eName);
        
        var eFname = cmp.get('v.empFName');
        alert(eFname);
        
        var eAddr = cmp.get('v.empAddress');
        alert(eAddr);
        
        var eDept = cmp.get('v.empDept');
        alert(eDept);
        
        var eSal = cmp.get('v.empSalary');
        alert(eSal);
	}
})