String setttingFullName = 'CalloutSetting.StravaAccess';
String settingLabel = 'StravaAccess';
Map<String, String> mapFields = new Map<String, String>();

mapFields.put('Access_Token__c', 'David');
mapFields.put('Refresh_Token__c', 'McGovern');
mapFields.put('Access_Token_Expires_At__c','N/A');

String response = UpdateCustomMetaData.updateCustomMetaDataSettings(setttingFullName, settingLabel, mapFields);

system.debug('Response ' + response);

