trigger discuptionPopulate on Account (before insert) {
    if(trigger.isbefore && trigger.isinsert){
        beforeinsertRecord.test3(trigger.new);
    }
}