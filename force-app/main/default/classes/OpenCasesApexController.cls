public with sharing class OpenCasesApexController {
    @AuraEnabled
    public static List<Case> getCasesDB() {
       return [SELECT Id FROM Case WHERE IsClosed = false AND OwnerId = :UserInfo.getUserId()];
    }
    
    @AuraEnabled
    public static List<Case> getNewCasesDB() {
        String [] fields = new String [] {'Id', 'OwnerId', 'Type', 'Status', 'Priority', 'IsClosed', 'Reason', 'Origin'};
        Map<String,Schema.SObjectField> caseMap = Schema.SObjectType.Case.fields.getMap();
        for(String field : caseMap.keySet()){
            if(!caseMap.get(field).getDescribe().isAccessible() && fields.contains(field)){
                System.debug('This field is not accessible: '+ caseMap.get(field));
                return null;
            }
        }
        return [SELECT Id FROM Case WHERE IsClosed = false AND OwnerId = :UserInfo.getUserId()];
    }
}
