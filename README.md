# Update your Salesforce Custom Metadata Settings
A simple class to update the Custom Metadata Settings in your org. Pass in the full name and label of your custom metadata type along with a map of fields and values you wish to update. Class currently handles string data types. Will be adding support for additional datatypes.

# Sample Use Case
Assume an org has a Custom Metadata Type of `CalloutSetting` and a CalloutSetting record of `StravaAccess`. There are 3 custom fields of string data type - Access Token, Refresh Token, and Access Token Expires At.

```
String setttingFullName = 'CalloutSetting.StravaAccess';
String settingLabel = 'StravaAccess';
Map<String, String> mapFields = new Map<String, String>();

mapFields.put('Access_Token__c', 'abc12345');
mapFields.put('Refresh_Token__c', 'def67890');
mapFields.put('Access_Token_Expires_At__c','1234567890');

String response = UpdateCustomMetaData.updateCustomMetaDataSettings(setttingFullName, settingLabel, mapFields);

system.debug('Response ' + response);
```
