# OryUpdateRecoveryFlowWithCodeMethod

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**code** | **String** | Code from the recovery email  If you want to submit a code, use this field, but make sure to _not_ include the email field, as well. | [optional] 
**csrfToken** | **String** | Sending the anti-csrf token is only required for browser login flows. | [optional] 
**email** | **String** | The email address of the account to recover  If the email belongs to a valid account, a recovery email will be sent.  If you want to notify the email address if the account does not exist, see the [notify_unknown_recipients flag](https://www.ory.sh/docs/kratos/self-service/flows/account-recovery-password-reset#attempted-recovery-notifications)  If a code was already sent, including this field in the payload will invalidate the sent code and re-send a new code.  format: email | [optional] 
**method** | **String** | Method is the method that should be used for this recovery flow  Allowed values are &#x60;link&#x60; and &#x60;code&#x60;. link RecoveryStrategyLink code RecoveryStrategyCode | 
**transientPayload** | **JSONValue** | Transient data to pass along to any webhooks | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


