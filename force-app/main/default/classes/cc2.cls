public with sharing class cc2 {
    public Integer count{get;set;}
    public List<Account> getListAcc(){
        List<Account> myAcc = [SELECT Id, Name FROM Account]; 
        return myAcc;
    }
    
    public List<Opportunity> getListOpp(){
        List<Opportunity> myOpp = [SELECT Id , Name from Opportunity];
        return myOpp;
    }

}