@IsTest

public with sharing class relatedRecordsListTest{

	@isTest
    public static void getrelatedRecordsTest() {
     
         system.debug('test class called');
         Id accId = '0016F00003xcvX4QAI';
     
         Insurance_Policy__c policy1 = new Insurance_Policy__c(Name='Policy Test1',Master_Account__c='0016F00003xcvX4QAI');
         insert policy1;
         
         Financial_Account__c financiaAcc = new Financial_Account__c(Name='Fianacial Policy 1',Account__c='0016F00003xcvX4QAI');
         insert financiaAcc;
         
         Test.startTest();
             List<SObject> combinedList = relatedRecordsList.getrelatedRecords(accId);
         Test.stopTest();
     }

}