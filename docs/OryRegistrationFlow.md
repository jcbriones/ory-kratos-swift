# OryRegistrationFlow

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**active** | **String** | Active, if set, contains the registration method that is being used. It is initially not set. password CredentialsTypePassword oidc CredentialsTypeOIDC totp CredentialsTypeTOTP lookup_secret CredentialsTypeLookup webauthn CredentialsTypeWebAuthn code CredentialsTypeCodeAuth passkey CredentialsTypePasskey profile CredentialsTypeProfile link_recovery CredentialsTypeRecoveryLink  CredentialsTypeRecoveryLink is a special credential type linked to the link strategy (recovery flow).  It is not used within the credentials object itself. code_recovery CredentialsTypeRecoveryCode | [optional] 
**expiresAt** | **Date** | ExpiresAt is the time (UTC) when the flow expires. If the user still wishes to log in, a new flow has to be initiated. | 
**id** | **String** | ID represents the flow&#39;s unique ID. When performing the registration flow, this represents the id in the registration ui&#39;s query parameter: http://&lt;selfservice.flows.registration.ui_url&gt;/?flow&#x3D;&lt;id&gt; | 
**issuedAt** | **Date** | IssuedAt is the time (UTC) when the flow occurred. | 
**oauth2LoginChallenge** | **String** | Ory OAuth 2.0 Login Challenge.  This value is set using the &#x60;login_challenge&#x60; query parameter of the registration and login endpoints. If set will cooperate with Ory OAuth2 and OpenID to act as an OAuth2 server / OpenID Provider. | [optional] 
**oauth2LoginRequest** | [**OryOAuth2LoginRequest**](OryOAuth2LoginRequest.md) |  | [optional] 
**organizationId** | **String** |  | [optional] 
**requestUrl** | **String** | RequestURL is the initial URL that was requested from Ory Kratos. It can be used to forward information contained in the URL&#39;s path or query for example. | 
**returnTo** | **String** | ReturnTo contains the requested return_to URL. | [optional] 
**sessionTokenExchangeCode** | **String** | SessionTokenExchangeCode holds the secret code that the client can use to retrieve a session token after the flow has been completed. This is only set if the client has requested a session token exchange code, and if the flow is of type \&quot;api\&quot;, and only on creating the flow. | [optional] 
**state** | **JSONValue** | State represents the state of this request:  choose_method: ask the user to choose a method (e.g. registration with email) sent_email: the email has been sent to the user passed_challenge: the request was successful and the registration challenge was passed. | 
**transientPayload** | **JSONValue** | TransientPayload is used to pass data from the registration to a webhook | [optional] 
**type** | **String** | The flow type can either be &#x60;api&#x60; or &#x60;browser&#x60;. | 
**ui** | [**OryUiContainer**](OryUiContainer.md) |  | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


