public class AccountQueueable implements Queueable{
    public void execute(QueueableContext qcontxt){
        system.debug('this is que1');
        System.enqueueJob(new TestQueuable2());
    }
}