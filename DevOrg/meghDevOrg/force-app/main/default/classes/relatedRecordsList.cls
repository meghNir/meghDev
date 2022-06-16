public with sharing class relatedRecordsList{

    @AuraEnabled
    public static List<SObject> getrelatedRecords(Id recordId) {
    
        List<SObject> getResults = new List<SObject>();
        
        List<Insurance_Policy__c> insuarncePolicy = [Select Id, Name,Master_Account__c from Insurance_Policy__c where Master_Account__c='0016F00003xcvX4QAI'];
        getResults.addAll(insuarncePolicy);
        system.debug('List of insuarncePolicy>>'+insuarncePolicy);
        
        List<Financial_Account__c> financialAcc =  [Select Id,Name,Account__c from Financial_Account__c where Account__c='0016F00003xcvX4QAI'];
        getResults.addAll(financialAcc);
        system.debug('List of financialAcc>>'+financialAcc);
        
        system.debug('final List>>getResults>>>'+getResults);
        
        return getResults;
    
    }

}