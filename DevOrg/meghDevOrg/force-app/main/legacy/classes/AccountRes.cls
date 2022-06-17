public with sharing class AccountResult  {

    @AuraEnabled public Id id {get; set;}
    @AuraEnabled public String name {get; set;}
    @AuraEnabled public List<Case> cases {get; set;}
    @AuraEnabled public List<Contact> contacts {get; set;}
    @AuraEnabled public List<Opportunity> opportunities {get; set;}
  
  
    public AccountResult(Account a) {
      this.id = a.id;
      this.name = a.name;
      this.cases = a.cases;
      this.contacts = a.contacts;
      this.opportunities = a.opportunities;
    }
  }