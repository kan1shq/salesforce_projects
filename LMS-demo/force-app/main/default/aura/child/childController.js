({
	fireEvt : function(cmp, evt, hpr) {
		alert('Called.');
        var e = cmp.getEvent('myevt');
        e.setParams({"msg": "Get Revise in 30 minutes"});
        
        e.fire();
	}
})