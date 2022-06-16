({    
    /*handleShowToast : function(component, event, helper) {
        component.find('notifLib').showToast({
            "title": "Notif library Title!",
            "message": "Your Message",
            "mode" : "sticky"
      });
    }*/
    
    showToast : function(component, event, helper) {
        var toastEvent = $A.get("e.force:showToast");
        toastEvent.setParams({
            "type": "Success",
            "title": "Success",
            "message": $A.get("$Label.c.ShowToastMessage"),
            "mode" : "sticky"
        });
        toastEvent.fire();
    }
})