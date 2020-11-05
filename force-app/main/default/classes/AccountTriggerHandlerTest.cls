@isTest
public class AccountTriggerHandlerTest {
    @isTest Public static void TestInsert(){
        //List<Account> myAcc = AccountTriggerHandlerTest.GenerateAccount(200);
        List<Account> myAcc = TestDataFactory.GenerateAccount(150);
        test.startTest();
        insert myAcc;
        test.stopTest();
        List<Account> insertedAcc = [SELECT Id, Name, Description FROM Account WHERE id IN :myAcc];
        List<Task> insertedTask = [SELECT Id, Subject FROM Task WHERE whatId IN :myAcc];
        for(Account insAcc: insertedAcc){
            system.assertEquals('New description', insAcc.Description);
        }
        for(Task insTask: insertedTask){
            system.assertEquals('New Account Task', insTask.Subject);
        }
    }
    static list<Account> GenerateAccount (integer numAcc){
        List<Account> accListToGenerate = new List<Account>();
        for(Integer i=0;i<numAcc;i++){
            Account accToGenerate = new Account(Name='Test Account '+ i+1);
            accListToGenerate.add(accToGenerate);
        }
        return accListToGenerate;
    }
}