@isTest
public class TestDataFactory {
   Public static list<Account> GenerateAccount (integer numAcc){
        List<Account> accListToGenerate = new List<Account>();
        for(Integer i=0;i<numAcc;i++){
            Account accToGenerate = new Account(Name='Test Account '+ i+1);
            accListToGenerate.add(accToGenerate);
        }
        return accListToGenerate;
    }

}