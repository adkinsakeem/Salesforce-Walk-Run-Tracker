trigger addToCast on MCU_Movie__c (after insert) {
    List<Cast__c> fullCast = new List<Cast__c>();
    fullCast = [SELECT Name, Cast_ID__c, MCU_Actor__c, MCU_Movie__c from Cast__c];
    //if(fullCast.size() == 0){
    for(MCU_Movie__c oldCast : Trigger.New){
        Cast__c newMovieCast = new Cast__c();
        newMovieCast.Cast_ID__c = oldCast.MCU_ID__c;
        newMovieCast.Name = 'TBD';
        newMovieCast.MCU_Actor__c = 'a0B3t00000RRpdMEAT';
        newMovieCast.MCU_Movie__c = oldCast.Id;
                //insert newMovieCast;
        fullCast.add(newMovieCast);
    }
        Database.insert(fullCast);
        System.debug(fullCast);
   // }
}