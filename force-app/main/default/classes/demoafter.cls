public class demoafter {
    public static void relation(list<account> a){		//Updation of discripton in one to another opertunity//
        list<contact> f =new list<contact>();
        for(account d:a){
            contact e= new contact();
            e.AccountId= d.id;
            e.LastName=d.Name;
            e.Description=d.Status__c;
            e.Description='parent updated';
            f.add(e);
        }
            if(!f.isEmpty()){
                insert f;
                }
            }      
public static void demoafter1(list<account> lesamt){		//Amount is greter than 1000//
    list<contact> fetcons= new list<contact>();
    for(account g:lesamt){
       
        if(g.AnnualRevenue > 1000){
            g.AnnualRevenue.adderror('please enter the amount value');
        }
        else if(g.AnnualRevenue < 1000){
            contact con = new contact();
            con.LastName = g.Name;
            con.Phone = g.Phone;
            con.AccountId =g.Id;
            
            fetcons.add(con);
        }
        
    }
    if(!fetcons.isempty())
        insert fetcons;
}
    public static void demo3(list<account> lesamt){		//creating opertunity//
   	 	list<contact> fetcons= new list<contact>();
        list<opportunity> fetopp = new list<opportunity>();
    for(account g:lesamt){
       
        if(g.AnnualRevenue > 100){
           opportunity opp = new opportunity();
            opp.AccountId =g.Id;
            opp.Name=g.Name;
            opp.StageName='prospecting';
            opp.CloseDate=system.today();
            fetopp.add(opp);
        }
        else if(g.AnnualRevenue < 100){
            contact con = new contact();
            con.AccountId =g.Id;
            con.LastName=g.Name;
         	
            
            
            fetcons.add(con);
        }
        
    }
        if(!fetcons.isempty()){
        
        insert fetcons;
}
    if(!fetopp.isempty()){
        insert fetopp;
    }
  }
    
   public static void restrictionOfParentToCon(list<account> uppar){		//location list//
       list<contact> conlist = new list<contact>();
       set<id> parenrid = new set<id>();
       integer NumberofLocations =0;
       for(account newacc : uppar){
           if(newacc.city__c == 'Anantapur'){
           NumberofLocations = (integer)newacc.NumberofLocations__c;
           for(integer i =1; i<=NumberofLocations; i++){
               contact newcon = new contact();
               newcon.AccountId=newacc.id;
               newcon.LastName=newacc.Name +i;
               conlist.add(newcon);
              
           }
      }
       if(!conlist.isempty()){
           insert conlist;
       }
       else{
           newacc.adderror('contact will not be entered');
       }
       }
            }
       
    //oppertunity is having values 
        
 public static void oppretunityRecord(list<account> acc){
            list<opportunity> opp= new list<opportunity>();
         Opp = [Select accountID from opportunity where accountid in :acc];
        for(Account a : acc){
        for(Opportunity o : Opp){
        if(a.id == o.accountId){
        a.addError('Account have Opportunity ,so you can not delete this Account');
                }
            }
        }
      }  
   

      public static void duplicationOfValues(list<account> acunt){ //if names are duplicate it should throw error
         Set<String> accountName = new Set<String>();
        for(Account av : acunt){
            accountName.add(av.Name);
        }
        List<Account> duplicateAccounts = [SELECT Id, Name 
                                             FROM Account 
                                             WHERE Name IN :accountName]; 
        
        for(Account acc : duplicateAccounts){
            if(duplicateAccounts.size()!=0){
                acc.Name.addError('Account cannot be inserted');
            }
        }
            
        }
  

   public static void updationofAccounts(list<account> ac){ //if account is having one contact if user update the contact with new contact it has to createNewContact
        list <contact> conlist = new list <contact> ();
      
        for (account acc1 : ac){
            contact con = new contact();
            con.AccountId=acc1.Id;
            con.LastName=acc1.Name;
            con.Phone=acc1.Phone;
            conlist.add(con);
                
        }
        if( !conlist.isempty()){
            insert conlist;
            
        }
    }

public static void oppaccount(list<Opportunity> opr){  //Whenever Opportunity StageName= Closed Won Automatically update the Account filed Rating = Hot.
        set<id> kkk =new set<id>();
        list <account> acd = new list<account>();
        for (Opportunity opp :opr){
            kkk.add(opp.accountid);
         list<account> acc = [SELECT Id,rating from Account Where Id IN : kkk];
             for(Account accd :acc){
                   if(opp.StageName =='Closed Won'){
                accd.Rating= 'hot';
                   acd.add(accd);
                   
             }
             }
             
              if(!acd.isEmpty()){
                  update acd;
              }
         
            
        
    }
  }
}