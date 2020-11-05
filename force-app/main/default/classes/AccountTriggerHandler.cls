public class AccountTriggerHandler {
    public static void handleBeforeInsert (List<Account> accList) {
        for(Account a : accList) {
            a.Description = 'New description';
        }
    }
    public static void handleAfterInsert (List<Account> accList) {
        List<Task> addList = new List<Task>();
        for(Account a : accList) {
            Task aTask = new Task();
            aTask.ownerId = a.ownerId;
            aTask.subject = 'New Account Task';
            aTask.whatId = a.Id;
            aTask.priority = 'Normal';
            addList.add(aTask);
        }
        insert addList;
    }
}