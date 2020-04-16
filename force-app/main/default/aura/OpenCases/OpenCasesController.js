({
	doInit : function(cmp, event, helper) {
		var action = cmp.get("c.getNewCasesDB");
        console.log("Calling doInit");
        action.setCallback(this, function(res) {
            var state = res.getState();
            if(cmp.isValid() && state === 'SUCCESS'){
                console.log("Get cases");
                cmp.set("v.cases", res.getReturnValue());
            }
        });
        $A.enqueueAction(action);
	}
})
