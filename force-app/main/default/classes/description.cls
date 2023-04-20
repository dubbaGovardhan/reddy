public class description {
    public static void method1(list<Account> a){
      
        for(Account b:a){
            if(b.Status__c != null){
               b.Description = 'please enter value';
         
            if(b.Status__c == 'working')
                b.Description='working in progress';
             if(b.Status__c == 'new')
                b.Description='status is new';
             if(b.Status__c == 'closed')
                 b.Description ='status closed';
            
            }
                
            }
            }
        }