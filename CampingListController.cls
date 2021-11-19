public with sharing class CampingListController {
    @AuraEnabled
    public static List<Camping_Item__c> getItems(){
        try {
            List<Camping_Item__c> CI = [SELECT Id, Name, CreatedDate, Packed__c, Price__c, Quantity__c
            FROM Camping_Item__c];
            return CI;       
        } catch (Exception e) {
            throw new AuraHandledException(e.getMessage());
        }
    }
    @AuraEnabled
    public static Camping_Item__c saveItem(Camping_Item__c item){
        try {
            insert item;
            return item;
        } catch (Exception e) {
            throw new AuraHandledException(e.getMessage());
        }
    }
}
