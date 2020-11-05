public class AccountQueryAction {
    @InvocableMethod(label='Get Account Names' description='Returns account names' category='Account')
    public static List<String> getAccountNames(List<ID> ids){
        List<String> accountNames = new List<String>();
        List<Account> accounts = [SELECT Name FROM Account WHERE Id in :ids];
        for(Account account : accounts){
            accountNames.add(account.Name);
        }
        System.debug('Method getAccountNames ran! ' + accountNames[0]);
        return accountNames;
    }

}