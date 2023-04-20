trigger fieldupdate1 on Account (before insert, before update) {
    if(trigger.isbefore &&( trigger.isinsert || trigger.isupdate)){
        description.method1(trigger.new);
    }

}