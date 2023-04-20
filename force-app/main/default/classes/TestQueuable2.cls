public class TestQueuable2 implements Queueable{
    public void execute(QueueableContext qc){
     system.debug('this is second method');
        System.enqueueJob(new TestQueueable3());
    }
}