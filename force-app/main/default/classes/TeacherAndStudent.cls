public class TeacherAndStudent {
    public static void teacherMarks(list<Student__c> Stud){
        for(Student__c std:Stud){
            if(std.Marks__c >=0 && std.Marks__c<=25){
                std.Grade__c='Grade F';
            }
            else if(std.Marks__c >= 26 && std.Marks__c <=50){
                std.Grade__c='Grade D';
            }
       
                    

        }
        
    }
}