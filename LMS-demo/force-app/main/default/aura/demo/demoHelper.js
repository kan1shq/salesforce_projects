({
	helperMethod : function(cmp, evt) {
        alert('I am from Helper');
		var eName = cmp.get('v.empName');
        var eFname = cmp.get('v.empFName');
        var eAddr = cmp.get('v.empAddress');
        var eDept = cmp.get('v.empDept');
        var eSal = cmp.get('v.empSalary');
		alert(eName)+alert(eFname)+alert(eAddr)+alert(eDept)+alert(eSal);
        
        // how to call the apex method from JS
        var action = cmp.get('c.insertEmp');
        // method nname i.e. insertEmp should be same as defined in apex class
        // params name i.e. should be same as defined in insertEmp method
        action.setParams({
            "eName": eName,
            "eFname": eFname,
            "eAddr": eAddr,
            "eDept": eDept,
            "eSal": eSal
        });
        action.setCallback(this, function(a) {
            var state = a.getState(); // get the response state
            if (state=='SUCCESS') {
                alert('Record Added Successfully');
            }
        })

        $A.enqueueAction(action);

	}
})