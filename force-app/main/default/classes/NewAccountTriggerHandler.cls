public class NewAccountTriggerHandler {
    public void OnBeforeInsert(list<Account> triggerNew,map<Id,Account> triggerNewmap)
{
// This is used to Call before Insert method.
}
public void OnAfterInsert(list<Account> triggerNew,map<Id,Account> triggerNewmap)
{
// In this method Trigger are arranged in order of its execution.
Manage1(triggerNew,triggerNewmap);
Manage2(triggerNew,triggerNewmap);
Manage3(triggerNew,triggerNewmap);
}
public void OnBeforeUpdate(list<Account> triggerNew,map<Id,Account> triggerNewmap,list<Account> triggerOld,map<Id,Account> triggerOldmap)
{
// This is used to Call before update method.
}
public void OnAfterUpdate(list<Account> triggerNew,map<Id,Account> triggerNewmap,list<Account> triggerOld,map<Id,Account> triggerOldmap)
{
// This is used to Call  After Update method.
}
private void manage1(list<Account> triggerNew,map<Id,Account> triggerNewmap)
{
// This Method is created to Show order of trigger execution.
}
private void manage2(list<Account> triggerNew,map<Id,Account> triggerNewmap)
{
// This Method is created to Show order of trigger execution.
}
private void manage3(list<Account> triggerNew,map<Id,Account> triggerNewmap)
{
// This Method is created to Show order of trigger execution.
}

}