public with sharing class UpdateCustomMetaData {
    public static String updateCustomMetaDataSettings(String settingFullName, String settingLabel, Map<String, String> mapFields) {
        try {
            //The custom meta data setting we want to update
            Metadata.CustomMetadata CustomMetaDataSetting = new Metadata.CustomMetadata();
            CustomMetaDataSetting.fullName = settingFullName;
            CustomMetaDataSetting.label = settingLabel;

            //Loop through the fields we want to update
            for (String key : mapFields.keySet()) {
                CustomMetaDataSetting.values.add(BuildCustomMDValue(key, mapFields.get(key)));
            }

            //Deploy the update
            Metadata.DeployContainer mdContainer = new Metadata.DeployContainer();
            mdContainer.addMetaData(CustomMetaDataSetting);

            MetaDataDeploy callback = new MetaDataDeploy();
            Id jobId = Metadata.operations.enqueueDeployment(mdContainer, callback);

            return 'Success';
        }
        catch (Exception e) {
            return e.getMessage();
        }
    }
    private static Metadata.CustomMetaDataValue BuildCustomMDValue(String fieldName, String fieldValue) {
        Metadata.CustomMetadataValue settingField = new Metadata.CustomMetadataValue();
        settingField.field = fieldName;
        settingField.value = fieldValue;

        return settingField;
    }
}
