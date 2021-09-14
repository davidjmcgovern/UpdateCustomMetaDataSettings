public with sharing class MetadataDeploy implements Metadata.DeployCallback {
    public List<FieldWrapper> listField{get; set;}

    public class FieldWrapper {
        public String fieldName {get; set;}
        public String fieldAPIName {get; set;}
    }

    public void handleResult(Metadata.DeployResult result, Metadata.DeployCallbackContext context) {
        if(result.status == Metadata.DeployStatus.SUCCEEDED) {
            SYstem.debug('Success ' + result);
        }
        else {
            System.debug('Error ' + result);
        }
    }
}
