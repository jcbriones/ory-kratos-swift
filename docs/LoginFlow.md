# LoginFlow

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**active** | [**IdentityCredentialsType**](IdentityCredentialsType.md) |  | [optional] 
**createdAt** | **Date** | CreatedAt is a helper struct field for gobuffalo.pop. | [optional] 
**expiresAt** | **Date** | ExpiresAt is the time (UTC) when the flow expires. If the user still wishes to log in, a new flow has to be initiated. | 
**id** | **String** | ID represents the flow&#39;s unique ID. When performing the login flow, this represents the id in the login UI&#39;s query parameter: http://&lt;selfservice.flows.login.ui_url&gt;/?flow&#x3D;&lt;flow_id&gt; | 
**issuedAt** | **Date** | IssuedAt is the time (UTC) when the flow started. | 
**oauth2LoginChallenge** | **String** | Ory OAuth 2.0 Login Challenge.  This value is set using the &#x60;login_challenge&#x60; query parameter of the registration and login endpoints. If set will cooperate with Ory OAuth2 and OpenID to act as an OAuth2 server / OpenID Provider. | [optional] 
**oauth2LoginRequest** | [**OAuth2LoginRequest**](OAuth2LoginRequest.md) |  | [optional] 
**refresh** | **Bool** | Refresh stores whether this login flow should enforce re-authentication. | [optional] 
**requestUrl** | **String** | RequestURL is the initial URL that was requested from Ory Kratos. It can be used to forward information contained in the URL&#39;s path or query for example. | 
**requestedAal** | [**AuthenticatorAssuranceLevel**](AuthenticatorAssuranceLevel.md) |  | [optional] 
**returnTo** | **String** | ReturnTo contains the requested return_to URL. | [optional] 
**sessionTokenExchangeCode** | **String** | SessionTokenExchangeCode holds the secret code that the client can use to retrieve a session token after the login flow has been completed. This is only set if the client has requested a session token exchange code, and if the flow is of type \&quot;api\&quot;, and only on creating the login flow. | [optional] 
**type** | **String** | The flow type can either be &#x60;api&#x60; or &#x60;browser&#x60;. | 
**ui** | [**UiContainer**](UiContainer.md) |  | 
**updatedAt** | **Date** | UpdatedAt is a helper struct field for gobuffalo.pop. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


