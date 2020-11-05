public class sortRunWalkData {

    public String getGetList() {
        return null;
    }
    
   		public String sortPick {get; set;}
    
       private static List <Runs__c> allRuns = new List <Runs__c>();
       public String sortBy = 'Run_Date__c';
       public String ascDesc = 'desc';
    
    public void getSelectOptionValue(){

        
        switch on sortPick {
            when 'Recent'{
                sortBy = 'Run_Date__c';
				ascDesc = 'desc';  
            System.debug('Made it to Recent' + allRuns);

            }
            when 'Name'{
                sortBy = 'Runner_Name__c';
				ascDesc = 'desc';  
           System.debug('Made it to Name' + allRuns);

            }
            when 'Run_Type'{
                sortBy = 'Run_Type__c';
				ascDesc = 'desc';                
            }
            when 'Shortest_Time'{
                sortBy = 'Run_Duration__c';
				ascDesc = 'asc';                
            }
            when 'Longest_Time'{
                sortBy = 'Run_Duration__c';
				ascDesc = 'desc';                
            }
            when 'Shortest_Distance'{
                sortBy = 'Duration_of_Run__c';
				ascDesc = 'asc';                
            }
            when 'Longest_Distance'{
                sortBy = 'Duration_of_Run__c';
				ascDesc = 'desc';                
            }
            when else{
                sortBy = 'Run_Date__c';
				ascDesc = 'desc';                
            }
        }
        runWalkDataQuery();
                
    }
    
    public sortRunWalkData(){
        allRuns = runWalkDataQuery();

        //System.debug('Runs Query: '+allRunsQuery);
        System.debug(allRuns);
    }
    
    public List<Runs__c> runWalkDataQuery(){
        String allRunsQuery = 'SELECT Name, Distance_Ran__c, Duration_of_Run__c, Run_Date__c, Runner_Name__c, Run_Type__c, Type_of_Run_Walk__c FROM Runs__c ';
        allRunsQuery += ' ORDER BY ' + sortBy + ' ' + ascDesc;
        //allRuns = database.query(allRunsQuery);
        return database.query(allRunsQuery);
        
    }
    
    public List<Runs__c> getList(){
        getSelectOptionValue();
        System.debug('called Get List: '+runWalkDataQuery());
        System.debug('SortPick: '+sortBy);
        //runWalkDataQuery();
        return runWalkDataQuery();
    }

}