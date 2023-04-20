public with sharing class newDataTable {
    public newDataTable() {

    }
    @AuraEnabled(cacheable=true)
    public static list<account> getAccount(){
       return [select id, name, phone, industry from account];
    }
    @AuraEnabled
    public static integer getSumResult(integer fiestNumber integer secondNumber){
       return (fiestNumber+secondNumber);
    }
}