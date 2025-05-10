# IdentityAPI

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**batchPatchIdentities**](IdentityAPI.md#batchpatchidentities) | **PATCH** /admin/identities | Create multiple identities
[**createIdentity**](IdentityAPI.md#createidentity) | **POST** /admin/identities | Create an Identity
[**createRecoveryCodeForIdentity**](IdentityAPI.md#createrecoverycodeforidentity) | **POST** /admin/recovery/code | Create a Recovery Code
[**createRecoveryLinkForIdentity**](IdentityAPI.md#createrecoverylinkforidentity) | **POST** /admin/recovery/link | Create a Recovery Link
[**deleteIdentity**](IdentityAPI.md#deleteidentity) | **DELETE** /admin/identities/{id} | Delete an Identity
[**deleteIdentityCredentials**](IdentityAPI.md#deleteidentitycredentials) | **DELETE** /admin/identities/{id}/credentials/{type} | Delete a credential for a specific identity
[**deleteIdentitySessions**](IdentityAPI.md#deleteidentitysessions) | **DELETE** /admin/identities/{id}/sessions | Delete &amp; Invalidate an Identity&#39;s Sessions
[**disableSession**](IdentityAPI.md#disablesession) | **DELETE** /admin/sessions/{id} | Deactivate a Session
[**extendSession**](IdentityAPI.md#extendsession) | **PATCH** /admin/sessions/{id}/extend | Extend a Session
[**getIdentity**](IdentityAPI.md#getidentity) | **GET** /admin/identities/{id} | Get an Identity
[**getIdentitySchema**](IdentityAPI.md#getidentityschema) | **GET** /schemas/{id} | Get Identity JSON Schema
[**getSession**](IdentityAPI.md#getsession) | **GET** /admin/sessions/{id} | Get Session
[**listIdentities**](IdentityAPI.md#listidentities) | **GET** /admin/identities | List Identities
[**listIdentitySchemas**](IdentityAPI.md#listidentityschemas) | **GET** /schemas | Get all Identity Schemas
[**listIdentitySessions**](IdentityAPI.md#listidentitysessions) | **GET** /admin/identities/{id}/sessions | List an Identity&#39;s Sessions
[**listSessions**](IdentityAPI.md#listsessions) | **GET** /admin/sessions | List All Sessions
[**patchIdentity**](IdentityAPI.md#patchidentity) | **PATCH** /admin/identities/{id} | Patch an Identity
[**updateIdentity**](IdentityAPI.md#updateidentity) | **PUT** /admin/identities/{id} | Update an Identity


# **batchPatchIdentities**
```swift
    open class func batchPatchIdentities(oryPatchIdentitiesBody: OryPatchIdentitiesBody? = nil, completion: @escaping (_ data: OryBatchPatchIdentitiesResponse?, _ error: Error?) -> Void)
```

Create multiple identities

Creates multiple [identities](https://www.ory.sh/docs/kratos/concepts/identity-user-model). This endpoint can also be used to [import credentials](https://www.ory.sh/docs/kratos/manage-identities/import-user-accounts-identities) for instance passwords, social sign in configurations or multifactor methods.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OryKratosSwift

let oryPatchIdentitiesBody = patchIdentitiesBody(identities: [identityPatch(create: createIdentityBody(credentials: identityWithCredentials(oidc: identityWithCredentialsOidc(config: identityWithCredentialsOidcConfig(config: identityWithCredentialsPasswordConfig(hashedPassword: "hashedPassword_example", password: "password_example", usePasswordMigrationHook: false), providers: [identityWithCredentialsOidcConfigProvider(provider: "provider_example", subject: "subject_example")])), password: identityWithCredentialsPassword(config: nil)), metadataAdmin: 123, metadataPublic: 123, recoveryAddresses: [recoveryIdentityAddress(createdAt: Date(), id: "id_example", updatedAt: Date(), value: "value_example", via: "via_example")], schemaId: "schemaId_example", state: "state_example", traits: 123, verifiableAddresses: [verifiableIdentityAddress(createdAt: Date(), id: "id_example", status: "status_example", updatedAt: Date(), value: "value_example", verified: true, verifiedAt: Date(), via: "via_example")]), patchId: "patchId_example")]) // OryPatchIdentitiesBody |  (optional)

// Create multiple identities
IdentityAPI.batchPatchIdentities(oryPatchIdentitiesBody: oryPatchIdentitiesBody) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **oryPatchIdentitiesBody** | [**OryPatchIdentitiesBody**](OryPatchIdentitiesBody.md) |  | [optional] 

### Return type

[**OryBatchPatchIdentitiesResponse**](OryBatchPatchIdentitiesResponse.md)

### Authorization

[oryAccessToken](../README.md#oryAccessToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createIdentity**
```swift
    open class func createIdentity(oryCreateIdentityBody: OryCreateIdentityBody? = nil, completion: @escaping (_ data: OryIdentity?, _ error: Error?) -> Void)
```

Create an Identity

Create an [identity](https://www.ory.sh/docs/kratos/concepts/identity-user-model).  This endpoint can also be used to [import credentials](https://www.ory.sh/docs/kratos/manage-identities/import-user-accounts-identities) for instance passwords, social sign in configurations or multifactor methods.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OryKratosSwift

let oryCreateIdentityBody = createIdentityBody(credentials: identityWithCredentials(oidc: identityWithCredentialsOidc(config: identityWithCredentialsOidcConfig(config: identityWithCredentialsPasswordConfig(hashedPassword: "hashedPassword_example", password: "password_example", usePasswordMigrationHook: false), providers: [identityWithCredentialsOidcConfigProvider(provider: "provider_example", subject: "subject_example")])), password: identityWithCredentialsPassword(config: nil)), metadataAdmin: 123, metadataPublic: 123, recoveryAddresses: [recoveryIdentityAddress(createdAt: Date(), id: "id_example", updatedAt: Date(), value: "value_example", via: "via_example")], schemaId: "schemaId_example", state: "state_example", traits: 123, verifiableAddresses: [verifiableIdentityAddress(createdAt: Date(), id: "id_example", status: "status_example", updatedAt: Date(), value: "value_example", verified: true, verifiedAt: Date(), via: "via_example")]) // OryCreateIdentityBody |  (optional)

// Create an Identity
IdentityAPI.createIdentity(oryCreateIdentityBody: oryCreateIdentityBody) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **oryCreateIdentityBody** | [**OryCreateIdentityBody**](OryCreateIdentityBody.md) |  | [optional] 

### Return type

[**OryIdentity**](OryIdentity.md)

### Authorization

[oryAccessToken](../README.md#oryAccessToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createRecoveryCodeForIdentity**
```swift
    open class func createRecoveryCodeForIdentity(oryCreateRecoveryCodeForIdentityBody: OryCreateRecoveryCodeForIdentityBody? = nil, completion: @escaping (_ data: OryRecoveryCodeForIdentity?, _ error: Error?) -> Void)
```

Create a Recovery Code

This endpoint creates a recovery code which should be given to the user in order for them to recover (or activate) their account.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OryKratosSwift

let oryCreateRecoveryCodeForIdentityBody = createRecoveryCodeForIdentityBody(expiresIn: "expiresIn_example", flowType: "flowType_example", identityId: "identityId_example") // OryCreateRecoveryCodeForIdentityBody |  (optional)

// Create a Recovery Code
IdentityAPI.createRecoveryCodeForIdentity(oryCreateRecoveryCodeForIdentityBody: oryCreateRecoveryCodeForIdentityBody) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **oryCreateRecoveryCodeForIdentityBody** | [**OryCreateRecoveryCodeForIdentityBody**](OryCreateRecoveryCodeForIdentityBody.md) |  | [optional] 

### Return type

[**OryRecoveryCodeForIdentity**](OryRecoveryCodeForIdentity.md)

### Authorization

[oryAccessToken](../README.md#oryAccessToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createRecoveryLinkForIdentity**
```swift
    open class func createRecoveryLinkForIdentity(returnTo: String? = nil, oryCreateRecoveryLinkForIdentityBody: OryCreateRecoveryLinkForIdentityBody? = nil, completion: @escaping (_ data: OryRecoveryLinkForIdentity?, _ error: Error?) -> Void)
```

Create a Recovery Link

This endpoint creates a recovery link which should be given to the user in order for them to recover (or activate) their account.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OryKratosSwift

let returnTo = "returnTo_example" // String |  (optional)
let oryCreateRecoveryLinkForIdentityBody = createRecoveryLinkForIdentityBody(expiresIn: "expiresIn_example", identityId: "identityId_example") // OryCreateRecoveryLinkForIdentityBody |  (optional)

// Create a Recovery Link
IdentityAPI.createRecoveryLinkForIdentity(returnTo: returnTo, oryCreateRecoveryLinkForIdentityBody: oryCreateRecoveryLinkForIdentityBody) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **returnTo** | **String** |  | [optional] 
 **oryCreateRecoveryLinkForIdentityBody** | [**OryCreateRecoveryLinkForIdentityBody**](OryCreateRecoveryLinkForIdentityBody.md) |  | [optional] 

### Return type

[**OryRecoveryLinkForIdentity**](OryRecoveryLinkForIdentity.md)

### Authorization

[oryAccessToken](../README.md#oryAccessToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteIdentity**
```swift
    open class func deleteIdentity(id: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Delete an Identity

Calling this endpoint irrecoverably and permanently deletes the [identity](https://www.ory.sh/docs/kratos/concepts/identity-user-model) given its ID. This action can not be undone. This endpoint returns 204 when the identity was deleted or when the identity was not found, in which case it is assumed that is has been deleted already.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OryKratosSwift

let id = "id_example" // String | ID is the identity's ID.

// Delete an Identity
IdentityAPI.deleteIdentity(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String** | ID is the identity&#39;s ID. | 

### Return type

Void (empty response body)

### Authorization

[oryAccessToken](../README.md#oryAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteIdentityCredentials**
```swift
    open class func deleteIdentityCredentials(id: String, type: OryType_deleteIdentityCredentials, identifier: String? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Delete a credential for a specific identity

Delete an [identity](https://www.ory.sh/docs/kratos/concepts/identity-user-model) credential by its type. You cannot delete password or code auth credentials through this API.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OryKratosSwift

let id = "id_example" // String | ID is the identity's ID.
let type = "type_example" // String | Type is the type of credentials to delete. password CredentialsTypePassword oidc CredentialsTypeOIDC totp CredentialsTypeTOTP lookup_secret CredentialsTypeLookup webauthn CredentialsTypeWebAuthn code CredentialsTypeCodeAuth passkey CredentialsTypePasskey profile CredentialsTypeProfile link_recovery CredentialsTypeRecoveryLink  CredentialsTypeRecoveryLink is a special credential type linked to the link strategy (recovery flow).  It is not used within the credentials object itself. code_recovery CredentialsTypeRecoveryCode
let identifier = "identifier_example" // String | Identifier is the identifier of the OIDC credential to delete. Find the identifier by calling the `GET /admin/identities/{id}?include_credential=oidc` endpoint. (optional)

// Delete a credential for a specific identity
IdentityAPI.deleteIdentityCredentials(id: id, type: type, identifier: identifier) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String** | ID is the identity&#39;s ID. | 
 **type** | **String** | Type is the type of credentials to delete. password CredentialsTypePassword oidc CredentialsTypeOIDC totp CredentialsTypeTOTP lookup_secret CredentialsTypeLookup webauthn CredentialsTypeWebAuthn code CredentialsTypeCodeAuth passkey CredentialsTypePasskey profile CredentialsTypeProfile link_recovery CredentialsTypeRecoveryLink  CredentialsTypeRecoveryLink is a special credential type linked to the link strategy (recovery flow).  It is not used within the credentials object itself. code_recovery CredentialsTypeRecoveryCode | 
 **identifier** | **String** | Identifier is the identifier of the OIDC credential to delete. Find the identifier by calling the &#x60;GET /admin/identities/{id}?include_credential&#x3D;oidc&#x60; endpoint. | [optional] 

### Return type

Void (empty response body)

### Authorization

[oryAccessToken](../README.md#oryAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteIdentitySessions**
```swift
    open class func deleteIdentitySessions(id: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Delete & Invalidate an Identity's Sessions

Calling this endpoint irrecoverably and permanently deletes and invalidates all sessions that belong to the given Identity.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OryKratosSwift

let id = "id_example" // String | ID is the identity's ID.

// Delete & Invalidate an Identity's Sessions
IdentityAPI.deleteIdentitySessions(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String** | ID is the identity&#39;s ID. | 

### Return type

Void (empty response body)

### Authorization

[oryAccessToken](../README.md#oryAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **disableSession**
```swift
    open class func disableSession(id: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Deactivate a Session

Calling this endpoint deactivates the specified session. Session data is not deleted.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OryKratosSwift

let id = "id_example" // String | ID is the session's ID.

// Deactivate a Session
IdentityAPI.disableSession(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String** | ID is the session&#39;s ID. | 

### Return type

Void (empty response body)

### Authorization

[oryAccessToken](../README.md#oryAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **extendSession**
```swift
    open class func extendSession(id: String, completion: @escaping (_ data: OrySession?, _ error: Error?) -> Void)
```

Extend a Session

Calling this endpoint extends the given session ID. If `session.earliest_possible_extend` is set it will only extend the session after the specified time has passed.  This endpoint returns per default a 204 No Content response on success. Older Ory Network projects may return a 200 OK response with the session in the body. Returning the session as part of the response will be deprecated in the future and should not be relied upon.  This endpoint ignores consecutive requests to extend the same session and returns a 404 error in those scenarios. This endpoint also returns 404 errors if the session does not exist.  Retrieve the session ID from the `/sessions/whoami` endpoint / `toSession` SDK method.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OryKratosSwift

let id = "id_example" // String | ID is the session's ID.

// Extend a Session
IdentityAPI.extendSession(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String** | ID is the session&#39;s ID. | 

### Return type

[**OrySession**](OrySession.md)

### Authorization

[oryAccessToken](../README.md#oryAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getIdentity**
```swift
    open class func getIdentity(id: String, includeCredential: [OryIncludeCredential_getIdentity]? = nil, completion: @escaping (_ data: OryIdentity?, _ error: Error?) -> Void)
```

Get an Identity

Return an [identity](https://www.ory.sh/docs/kratos/concepts/identity-user-model) by its ID. You can optionally include credentials (e.g. social sign in connections) in the response by using the `include_credential` query parameter.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OryKratosSwift

let id = "id_example" // String | ID must be set to the ID of identity you want to get
let includeCredential = ["includeCredential_example"] // [String] | Include Credentials in Response  Include any credential, for example `password` or `oidc`, in the response. When set to `oidc`, This will return the initial OAuth 2.0 Access Token, OAuth 2.0 Refresh Token and the OpenID Connect ID Token if available. (optional)

// Get an Identity
IdentityAPI.getIdentity(id: id, includeCredential: includeCredential) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String** | ID must be set to the ID of identity you want to get | 
 **includeCredential** | [**[String]**](String.md) | Include Credentials in Response  Include any credential, for example &#x60;password&#x60; or &#x60;oidc&#x60;, in the response. When set to &#x60;oidc&#x60;, This will return the initial OAuth 2.0 Access Token, OAuth 2.0 Refresh Token and the OpenID Connect ID Token if available. | [optional] 

### Return type

[**OryIdentity**](OryIdentity.md)

### Authorization

[oryAccessToken](../README.md#oryAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getIdentitySchema**
```swift
    open class func getIdentitySchema(id: String, completion: @escaping (_ data: JSONValue?, _ error: Error?) -> Void)
```

Get Identity JSON Schema

Return a specific identity schema.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OryKratosSwift

let id = "id_example" // String | ID must be set to the ID of schema you want to get

// Get Identity JSON Schema
IdentityAPI.getIdentitySchema(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String** | ID must be set to the ID of schema you want to get | 

### Return type

**JSONValue**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getSession**
```swift
    open class func getSession(id: String, expand: [OryExpand_getSession]? = nil, completion: @escaping (_ data: OrySession?, _ error: Error?) -> Void)
```

Get Session

This endpoint is useful for:  Getting a session object with all specified expandables that exist in an administrative context.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OryKratosSwift

let id = "id_example" // String | ID is the session's ID.
let expand = ["expand_example"] // [String] | ExpandOptions is a query parameter encoded list of all properties that must be expanded in the Session. Example - ?expand=Identity&expand=Devices If no value is provided, the expandable properties are skipped. (optional)

// Get Session
IdentityAPI.getSession(id: id, expand: expand) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String** | ID is the session&#39;s ID. | 
 **expand** | [**[String]**](String.md) | ExpandOptions is a query parameter encoded list of all properties that must be expanded in the Session. Example - ?expand&#x3D;Identity&amp;expand&#x3D;Devices If no value is provided, the expandable properties are skipped. | [optional] 

### Return type

[**OrySession**](OrySession.md)

### Authorization

[oryAccessToken](../README.md#oryAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listIdentities**
```swift
    open class func listIdentities(perPage: Int64? = nil, page: Int64? = nil, pageSize: Int64? = nil, pageToken: String? = nil, consistency: OryConsistency_listIdentities? = nil, ids: [String]? = nil, credentialsIdentifier: String? = nil, previewCredentialsIdentifierSimilar: String? = nil, includeCredential: [String]? = nil, completion: @escaping (_ data: [OryIdentity]?, _ error: Error?) -> Void)
```

List Identities

Lists all [identities](https://www.ory.sh/docs/kratos/concepts/identity-user-model) in the system.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OryKratosSwift

let perPage = 987 // Int64 | Deprecated Items per Page  DEPRECATED: Please use `page_token` instead. This parameter will be removed in the future.  This is the number of items per page. (optional) (default to 250)
let page = 987 // Int64 | Deprecated Pagination Page  DEPRECATED: Please use `page_token` instead. This parameter will be removed in the future.  This value is currently an integer, but it is not sequential. The value is not the page number, but a reference. The next page can be any number and some numbers might return an empty list.  For example, page 2 might not follow after page 1. And even if page 3 and 5 exist, but page 4 might not exist. The first page can be retrieved by omitting this parameter. Following page pointers will be returned in the `Link` header. (optional)
let pageSize = 987 // Int64 | Page Size  This is the number of items per page to return. For details on pagination please head over to the [pagination documentation](https://www.ory.sh/docs/ecosystem/api-design#pagination). (optional) (default to 250)
let pageToken = "pageToken_example" // String | Next Page Token  The next page token. For details on pagination please head over to the [pagination documentation](https://www.ory.sh/docs/ecosystem/api-design#pagination). (optional) (default to "1")
let consistency = "consistency_example" // String | Read Consistency Level (preview)  The read consistency level determines the consistency guarantee for reads:  strong (slow): The read is guaranteed to return the most recent data committed at the start of the read. eventual (very fast): The result will return data that is about 4.8 seconds old.  The default consistency guarantee can be changed in the Ory Network Console or using the Ory CLI with `ory patch project --replace '/previews/default_read_consistency_level=\"strong\"'`.  Setting the default consistency level to `eventual` may cause regressions in the future as we add consistency controls to more APIs. Currently, the following APIs will be affected by this setting:  `GET /admin/identities`  This feature is in preview and only available in Ory Network.  ConsistencyLevelUnset  ConsistencyLevelUnset is the unset / default consistency level. strong ConsistencyLevelStrong  ConsistencyLevelStrong is the strong consistency level. eventual ConsistencyLevelEventual  ConsistencyLevelEventual is the eventual consistency level using follower read timestamps. (optional)
let ids = ["inner_example"] // [String] | List of ids used to filter identities. If this list is empty, then no filter will be applied. (optional)
let credentialsIdentifier = "credentialsIdentifier_example" // String | CredentialsIdentifier is the identifier (username, email) of the credentials to look up using exact match. Only one of CredentialsIdentifier and CredentialsIdentifierSimilar can be used. (optional)
let previewCredentialsIdentifierSimilar = "previewCredentialsIdentifierSimilar_example" // String | This is an EXPERIMENTAL parameter that WILL CHANGE. Do NOT rely on consistent, deterministic behavior. THIS PARAMETER WILL BE REMOVED IN AN UPCOMING RELEASE WITHOUT ANY MIGRATION PATH.  CredentialsIdentifierSimilar is the (partial) identifier (username, email) of the credentials to look up using similarity search. Only one of CredentialsIdentifier and CredentialsIdentifierSimilar can be used. (optional)
let includeCredential = ["inner_example"] // [String] | Include Credentials in Response  Include any credential, for example `password` or `oidc`, in the response. When set to `oidc`, This will return the initial OAuth 2.0 Access Token, OAuth 2.0 Refresh Token and the OpenID Connect ID Token if available. (optional)

// List Identities
IdentityAPI.listIdentities(perPage: perPage, page: page, pageSize: pageSize, pageToken: pageToken, consistency: consistency, ids: ids, credentialsIdentifier: credentialsIdentifier, previewCredentialsIdentifierSimilar: previewCredentialsIdentifierSimilar, includeCredential: includeCredential) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **perPage** | **Int64** | Deprecated Items per Page  DEPRECATED: Please use &#x60;page_token&#x60; instead. This parameter will be removed in the future.  This is the number of items per page. | [optional] [default to 250]
 **page** | **Int64** | Deprecated Pagination Page  DEPRECATED: Please use &#x60;page_token&#x60; instead. This parameter will be removed in the future.  This value is currently an integer, but it is not sequential. The value is not the page number, but a reference. The next page can be any number and some numbers might return an empty list.  For example, page 2 might not follow after page 1. And even if page 3 and 5 exist, but page 4 might not exist. The first page can be retrieved by omitting this parameter. Following page pointers will be returned in the &#x60;Link&#x60; header. | [optional] 
 **pageSize** | **Int64** | Page Size  This is the number of items per page to return. For details on pagination please head over to the [pagination documentation](https://www.ory.sh/docs/ecosystem/api-design#pagination). | [optional] [default to 250]
 **pageToken** | **String** | Next Page Token  The next page token. For details on pagination please head over to the [pagination documentation](https://www.ory.sh/docs/ecosystem/api-design#pagination). | [optional] [default to &quot;1&quot;]
 **consistency** | **String** | Read Consistency Level (preview)  The read consistency level determines the consistency guarantee for reads:  strong (slow): The read is guaranteed to return the most recent data committed at the start of the read. eventual (very fast): The result will return data that is about 4.8 seconds old.  The default consistency guarantee can be changed in the Ory Network Console or using the Ory CLI with &#x60;ory patch project --replace &#39;/previews/default_read_consistency_level&#x3D;\&quot;strong\&quot;&#39;&#x60;.  Setting the default consistency level to &#x60;eventual&#x60; may cause regressions in the future as we add consistency controls to more APIs. Currently, the following APIs will be affected by this setting:  &#x60;GET /admin/identities&#x60;  This feature is in preview and only available in Ory Network.  ConsistencyLevelUnset  ConsistencyLevelUnset is the unset / default consistency level. strong ConsistencyLevelStrong  ConsistencyLevelStrong is the strong consistency level. eventual ConsistencyLevelEventual  ConsistencyLevelEventual is the eventual consistency level using follower read timestamps. | [optional] 
 **ids** | [**[String]**](String.md) | List of ids used to filter identities. If this list is empty, then no filter will be applied. | [optional] 
 **credentialsIdentifier** | **String** | CredentialsIdentifier is the identifier (username, email) of the credentials to look up using exact match. Only one of CredentialsIdentifier and CredentialsIdentifierSimilar can be used. | [optional] 
 **previewCredentialsIdentifierSimilar** | **String** | This is an EXPERIMENTAL parameter that WILL CHANGE. Do NOT rely on consistent, deterministic behavior. THIS PARAMETER WILL BE REMOVED IN AN UPCOMING RELEASE WITHOUT ANY MIGRATION PATH.  CredentialsIdentifierSimilar is the (partial) identifier (username, email) of the credentials to look up using similarity search. Only one of CredentialsIdentifier and CredentialsIdentifierSimilar can be used. | [optional] 
 **includeCredential** | [**[String]**](String.md) | Include Credentials in Response  Include any credential, for example &#x60;password&#x60; or &#x60;oidc&#x60;, in the response. When set to &#x60;oidc&#x60;, This will return the initial OAuth 2.0 Access Token, OAuth 2.0 Refresh Token and the OpenID Connect ID Token if available. | [optional] 

### Return type

[**[OryIdentity]**](OryIdentity.md)

### Authorization

[oryAccessToken](../README.md#oryAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listIdentitySchemas**
```swift
    open class func listIdentitySchemas(perPage: Int64? = nil, page: Int64? = nil, pageSize: Int64? = nil, pageToken: String? = nil, completion: @escaping (_ data: [OryIdentitySchemaContainer]?, _ error: Error?) -> Void)
```

Get all Identity Schemas

Returns a list of all identity schemas currently in use.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OryKratosSwift

let perPage = 987 // Int64 | Deprecated Items per Page  DEPRECATED: Please use `page_token` instead. This parameter will be removed in the future.  This is the number of items per page. (optional) (default to 250)
let page = 987 // Int64 | Deprecated Pagination Page  DEPRECATED: Please use `page_token` instead. This parameter will be removed in the future.  This value is currently an integer, but it is not sequential. The value is not the page number, but a reference. The next page can be any number and some numbers might return an empty list.  For example, page 2 might not follow after page 1. And even if page 3 and 5 exist, but page 4 might not exist. The first page can be retrieved by omitting this parameter. Following page pointers will be returned in the `Link` header. (optional)
let pageSize = 987 // Int64 | Page Size  This is the number of items per page to return. For details on pagination please head over to the [pagination documentation](https://www.ory.sh/docs/ecosystem/api-design#pagination). (optional) (default to 250)
let pageToken = "pageToken_example" // String | Next Page Token  The next page token. For details on pagination please head over to the [pagination documentation](https://www.ory.sh/docs/ecosystem/api-design#pagination). (optional) (default to "1")

// Get all Identity Schemas
IdentityAPI.listIdentitySchemas(perPage: perPage, page: page, pageSize: pageSize, pageToken: pageToken) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **perPage** | **Int64** | Deprecated Items per Page  DEPRECATED: Please use &#x60;page_token&#x60; instead. This parameter will be removed in the future.  This is the number of items per page. | [optional] [default to 250]
 **page** | **Int64** | Deprecated Pagination Page  DEPRECATED: Please use &#x60;page_token&#x60; instead. This parameter will be removed in the future.  This value is currently an integer, but it is not sequential. The value is not the page number, but a reference. The next page can be any number and some numbers might return an empty list.  For example, page 2 might not follow after page 1. And even if page 3 and 5 exist, but page 4 might not exist. The first page can be retrieved by omitting this parameter. Following page pointers will be returned in the &#x60;Link&#x60; header. | [optional] 
 **pageSize** | **Int64** | Page Size  This is the number of items per page to return. For details on pagination please head over to the [pagination documentation](https://www.ory.sh/docs/ecosystem/api-design#pagination). | [optional] [default to 250]
 **pageToken** | **String** | Next Page Token  The next page token. For details on pagination please head over to the [pagination documentation](https://www.ory.sh/docs/ecosystem/api-design#pagination). | [optional] [default to &quot;1&quot;]

### Return type

[**[OryIdentitySchemaContainer]**](OryIdentitySchemaContainer.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listIdentitySessions**
```swift
    open class func listIdentitySessions(id: String, perPage: Int64? = nil, page: Int64? = nil, pageSize: Int64? = nil, pageToken: String? = nil, active: Bool? = nil, completion: @escaping (_ data: [OrySession]?, _ error: Error?) -> Void)
```

List an Identity's Sessions

This endpoint returns all sessions that belong to the given Identity.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OryKratosSwift

let id = "id_example" // String | ID is the identity's ID.
let perPage = 987 // Int64 | Deprecated Items per Page  DEPRECATED: Please use `page_token` instead. This parameter will be removed in the future.  This is the number of items per page. (optional) (default to 250)
let page = 987 // Int64 | Deprecated Pagination Page  DEPRECATED: Please use `page_token` instead. This parameter will be removed in the future.  This value is currently an integer, but it is not sequential. The value is not the page number, but a reference. The next page can be any number and some numbers might return an empty list.  For example, page 2 might not follow after page 1. And even if page 3 and 5 exist, but page 4 might not exist. The first page can be retrieved by omitting this parameter. Following page pointers will be returned in the `Link` header. (optional)
let pageSize = 987 // Int64 | Page Size  This is the number of items per page to return. For details on pagination please head over to the [pagination documentation](https://www.ory.sh/docs/ecosystem/api-design#pagination). (optional) (default to 250)
let pageToken = "pageToken_example" // String | Next Page Token  The next page token. For details on pagination please head over to the [pagination documentation](https://www.ory.sh/docs/ecosystem/api-design#pagination). (optional) (default to "1")
let active = true // Bool | Active is a boolean flag that filters out sessions based on the state. If no value is provided, all sessions are returned. (optional)

// List an Identity's Sessions
IdentityAPI.listIdentitySessions(id: id, perPage: perPage, page: page, pageSize: pageSize, pageToken: pageToken, active: active) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String** | ID is the identity&#39;s ID. | 
 **perPage** | **Int64** | Deprecated Items per Page  DEPRECATED: Please use &#x60;page_token&#x60; instead. This parameter will be removed in the future.  This is the number of items per page. | [optional] [default to 250]
 **page** | **Int64** | Deprecated Pagination Page  DEPRECATED: Please use &#x60;page_token&#x60; instead. This parameter will be removed in the future.  This value is currently an integer, but it is not sequential. The value is not the page number, but a reference. The next page can be any number and some numbers might return an empty list.  For example, page 2 might not follow after page 1. And even if page 3 and 5 exist, but page 4 might not exist. The first page can be retrieved by omitting this parameter. Following page pointers will be returned in the &#x60;Link&#x60; header. | [optional] 
 **pageSize** | **Int64** | Page Size  This is the number of items per page to return. For details on pagination please head over to the [pagination documentation](https://www.ory.sh/docs/ecosystem/api-design#pagination). | [optional] [default to 250]
 **pageToken** | **String** | Next Page Token  The next page token. For details on pagination please head over to the [pagination documentation](https://www.ory.sh/docs/ecosystem/api-design#pagination). | [optional] [default to &quot;1&quot;]
 **active** | **Bool** | Active is a boolean flag that filters out sessions based on the state. If no value is provided, all sessions are returned. | [optional] 

### Return type

[**[OrySession]**](OrySession.md)

### Authorization

[oryAccessToken](../README.md#oryAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listSessions**
```swift
    open class func listSessions(pageSize: Int64? = nil, pageToken: String? = nil, active: Bool? = nil, expand: [OryExpand_listSessions]? = nil, completion: @escaping (_ data: [OrySession]?, _ error: Error?) -> Void)
```

List All Sessions

Listing all sessions that exist.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OryKratosSwift

let pageSize = 987 // Int64 | Items per Page  This is the number of items per page to return. For details on pagination please head over to the [pagination documentation](https://www.ory.sh/docs/ecosystem/api-design#pagination). (optional) (default to 250)
let pageToken = "pageToken_example" // String | Next Page Token  The next page token. For details on pagination please head over to the [pagination documentation](https://www.ory.sh/docs/ecosystem/api-design#pagination). (optional)
let active = true // Bool | Active is a boolean flag that filters out sessions based on the state. If no value is provided, all sessions are returned. (optional)
let expand = ["expand_example"] // [String] | ExpandOptions is a query parameter encoded list of all properties that must be expanded in the Session. If no value is provided, the expandable properties are skipped. (optional)

// List All Sessions
IdentityAPI.listSessions(pageSize: pageSize, pageToken: pageToken, active: active, expand: expand) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pageSize** | **Int64** | Items per Page  This is the number of items per page to return. For details on pagination please head over to the [pagination documentation](https://www.ory.sh/docs/ecosystem/api-design#pagination). | [optional] [default to 250]
 **pageToken** | **String** | Next Page Token  The next page token. For details on pagination please head over to the [pagination documentation](https://www.ory.sh/docs/ecosystem/api-design#pagination). | [optional] 
 **active** | **Bool** | Active is a boolean flag that filters out sessions based on the state. If no value is provided, all sessions are returned. | [optional] 
 **expand** | [**[String]**](String.md) | ExpandOptions is a query parameter encoded list of all properties that must be expanded in the Session. If no value is provided, the expandable properties are skipped. | [optional] 

### Return type

[**[OrySession]**](OrySession.md)

### Authorization

[oryAccessToken](../README.md#oryAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **patchIdentity**
```swift
    open class func patchIdentity(id: String, oryJsonPatch: [OryJsonPatch]? = nil, completion: @escaping (_ data: OryIdentity?, _ error: Error?) -> Void)
```

Patch an Identity

Partially updates an [identity's](https://www.ory.sh/docs/kratos/concepts/identity-user-model) field using [JSON Patch](https://jsonpatch.com/). The fields `id`, `stateChangedAt` and `credentials` can not be updated using this method.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OryKratosSwift

let id = "id_example" // String | ID must be set to the ID of identity you want to update
let oryJsonPatch = [jsonPatch(from: "from_example", op: "op_example", path: "path_example", value: 123)] // [OryJsonPatch] |  (optional)

// Patch an Identity
IdentityAPI.patchIdentity(id: id, oryJsonPatch: oryJsonPatch) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String** | ID must be set to the ID of identity you want to update | 
 **oryJsonPatch** | [**[OryJsonPatch]**](OryJsonPatch.md) |  | [optional] 

### Return type

[**OryIdentity**](OryIdentity.md)

### Authorization

[oryAccessToken](../README.md#oryAccessToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateIdentity**
```swift
    open class func updateIdentity(id: String, oryUpdateIdentityBody: OryUpdateIdentityBody? = nil, completion: @escaping (_ data: OryIdentity?, _ error: Error?) -> Void)
```

Update an Identity

This endpoint updates an [identity](https://www.ory.sh/docs/kratos/concepts/identity-user-model). The full identity payload (except credentials) is expected. It is possible to update the identity's credentials as well.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OryKratosSwift

let id = "id_example" // String | ID must be set to the ID of identity you want to update
let oryUpdateIdentityBody = updateIdentityBody(credentials: identityWithCredentials(oidc: identityWithCredentialsOidc(config: identityWithCredentialsOidcConfig(config: identityWithCredentialsPasswordConfig(hashedPassword: "hashedPassword_example", password: "password_example", usePasswordMigrationHook: false), providers: [identityWithCredentialsOidcConfigProvider(provider: "provider_example", subject: "subject_example")])), password: identityWithCredentialsPassword(config: nil)), metadataAdmin: 123, metadataPublic: 123, schemaId: "schemaId_example", state: "state_example", traits: 123) // OryUpdateIdentityBody |  (optional)

// Update an Identity
IdentityAPI.updateIdentity(id: id, oryUpdateIdentityBody: oryUpdateIdentityBody) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String** | ID must be set to the ID of identity you want to update | 
 **oryUpdateIdentityBody** | [**OryUpdateIdentityBody**](OryUpdateIdentityBody.md) |  | [optional] 

### Return type

[**OryIdentity**](OryIdentity.md)

### Authorization

[oryAccessToken](../README.md#oryAccessToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

