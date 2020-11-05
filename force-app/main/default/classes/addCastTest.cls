@isTest
public class addCastTest {
    @isTest public static void addTest(){
        
        /*List <Cast__c> currentCast1 = new List <Cast__c>();
        currentCast1 = [SELECT Name, MCU_Actor__c, MCU_Movie__c from Cast__c];
        String newName1 = currentCast1[0].Name;
        system.assertEquals('Iron Man', newName1);*/
        
        
     MCU_Movie__c newMovie = new MCU_Movie__c();
        newMovie.Name = 'Avengers 4! The Revenge';
        newMovie.Directors__c = 'Me!';
        newMovie.Release_Date__c = Date.newInstance(2020, 5, 5);
        newMovie.Synopsis__c = 'This movie is about a movie.';
        
 		test.startTest();
        insert newMovie;
        test.stopTest();
        
        List <Cast__c> currentCast = new List <Cast__c>();
        currentCast = [SELECT Name, MCU_Actor__c, MCU_Movie__c from Cast__c];
        String newName = currentCast[0].MCU_Movie__c;
        
        system.assertEquals('Iron Man', newName);

    }

}