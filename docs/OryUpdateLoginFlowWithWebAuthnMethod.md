# OryUpdateLoginFlowWithWebAuthnMethod

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**csrfToken** | **String** | Sending the anti-csrf token is only required for browser login flows. | [optional] 
**identifier** | **String** | Identifier is the email or username of the user trying to log in. | 
**method** | **String** | Method should be set to \&quot;webAuthn\&quot; when logging in using the WebAuthn strategy. | 
**transientPayload** | **JSONValue** | Transient data to pass along to any webhooks | [optional] 
**webauthnLogin** | **String** | Login a WebAuthn Security Key  This must contain the ID of the WebAuthN connection. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


