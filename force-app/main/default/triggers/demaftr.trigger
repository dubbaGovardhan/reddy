trigger demaftr on Account (before insert, before update) {
    /*if(trigger.isafter && (trigger.isupdate || trigger.isinsert)){
        demoafter.relation(trigger.new);
    }*/
        if(trigger.isbefore && (trigger.isupdate || trigger.isinsert)){
            demoafter.oppretunityRecord(trigger.new);
        
    }
    }