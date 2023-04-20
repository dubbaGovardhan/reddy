trigger teacherAndStudent on Student__c (before insert, after update) {
    if(trigger.isbefore && (trigger.isInsert || trigger.isupdate)){
        TeacherAndStudent.teacherMarks(trigger.new);
    }
}