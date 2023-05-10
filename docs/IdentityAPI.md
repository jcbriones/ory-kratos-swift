# IdentityAPI

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**batchPatchIdentities**](IdentityAPI.md#batchpatchidentities) | **PATCH** /admin/identities | Create and deletes multiple identities
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
    open class func batchPatchIdentities(patchIdentitiesBody: PatchIdentitiesBody? = nil, completion: @escaping (_ data: BatchPatchIdentitiesResponse?, _ error: Error?) -> Void)
```

Create and deletes multiple identities

Creates or delete multiple [identities](https://www.ory.sh/docs/kratos/concepts/identity-user-model). This endpoint can also be used to [import credentials](https://www.ory.sh/docs/kratos/manage-identities/import-user-accounts-identities) for instance passwords, social sign in configurations or multifactor methods.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let patchIdentitiesBody = patchIdentitiesBody(identities: [identityPatch(create: createIdentityBody(credentials: identityWithCredentials(oidc: identityWithCredentialsOidc(config: identityWithCredentialsOidcConfig(config: identityWithCredentialsPasswordConfig(hashedPassword: "hashedPassword_example", password: "password_example"), providers: [identityWithCredentialsOidcConfigProvider(provider: "provider_example", subject: "subject_example")])), password: identityWithCredentialsPassword(config: nil)), metadataAdmin: 123, metadataPublic: 123, recoveryAddresses: [recoveryIdentityAddress(createdAt: Date(), id: "id_example", updatedAt: Date(), value: "value_example", via: "via_example")], schemaId: "schemaId_example", state: identityState(), traits: 123, verifiableAddresses: [verifiableIdentityAddress(createdAt: Date(), id: "id_example", status: "status_example", updatedAt: Date(), value: "value_example", verified: true, verifiedAt: Date(), via: "via_example")]), patchId: "patchId_example")]) // PatchIdentitiesBody |  (optional)

// Create and deletes multiple identities
IdentityAPI.batchPatchIdentities(patchIdentitiesBody: patchIdentitiesBody) { (response, error) in
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
 **patchIdentitiesBody** | [**PatchIdentitiesBody**](PatchIdentitiesBody.md) |  | [optional] 

### Return type

[**BatchPatchIdentitiesResponse**](BatchPatchIdentitiesResponse.md)

### Authorization

[oryAccessToken](../README.md#oryAccessToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createIdentity**
```swift
    open class func createIdentity(createIdentityBody: CreateIdentityBody? = nil, completion: @escaping (_ data: Identity?, _ error: Error?) -> Void)
```

Create an Identity

Create an [identity](https://www.ory.sh/docs/kratos/concepts/identity-user-model).  This endpoint can also be used to [import credentials](https://www.ory.sh/docs/kratos/manage-identities/import-user-accounts-identities) for instance passwords, social sign in configurations or multifactor methods.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let createIdentityBody = createIdentityBody(credentials: identityWithCredentials(oidc: identityWithCredentialsOidc(config: identityWithCredentialsOidcConfig(config: identityWithCredentialsPasswordConfig(hashedPassword: "hashedPassword_example", password: "password_example"), providers: [identityWithCredentialsOidcConfigProvider(provider: "provider_example", subject: "subject_example")])), password: identityWithCredentialsPassword(config: nil)), metadataAdmin: 123, metadataPublic: 123, recoveryAddresses: [recoveryIdentityAddress(createdAt: Date(), id: "id_example", updatedAt: Date(), value: "value_example", via: "via_example")], schemaId: "schemaId_example", state: identityState(), traits: 123, verifiableAddresses: [verifiableIdentityAddress(createdAt: Date(), id: "id_example", status: "status_example", updatedAt: Date(), value: "value_example", verified: true, verifiedAt: Date(), via: "via_example")]) // CreateIdentityBody |  (optional)

// Create an Identity
IdentityAPI.createIdentity(createIdentityBody: createIdentityBody) { (response, error) in
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
 **createIdentityBody** | [**CreateIdentityBody**](CreateIdentityBody.md) |  | [optional] 

### Return type

[**Identity**](Identity.md)

### Authorization

[oryAccessToken](../README.md#oryAccessToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createRecoveryCodeForIdentity**
```swift
    open class func createRecoveryCodeForIdentity(createRecoveryCodeForIdentityBody: CreateRecoveryCodeForIdentityBody? = nil, completion: @escaping (_ data: RecoveryCodeForIdentity?, _ error: Error?) -> Void)
```

Create a Recovery Code

This endpoint creates a recovery code which should be given to the user in order for them to recover (or activate) their account.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let createRecoveryCodeForIdentityBody = createRecoveryCodeForIdentityBody(expiresIn: "expiresIn_example", identityId: "identityId_example") // CreateRecoveryCodeForIdentityBody |  (optional)

// Create a Recovery Code
IdentityAPI.createRecoveryCodeForIdentity(createRecoveryCodeForIdentityBody: createRecoveryCodeForIdentityBody) { (response, error) in
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
 **createRecoveryCodeForIdentityBody** | [**CreateRecoveryCodeForIdentityBody**](CreateRecoveryCodeForIdentityBody.md) |  | [optional] 

### Return type

[**RecoveryCodeForIdentity**](RecoveryCodeForIdentity.md)

### Authorization

[oryAccessToken](../README.md#oryAccessToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createRecoveryLinkForIdentity**
```swift
    open class func createRecoveryLinkForIdentity(createRecoveryLinkForIdentityBody: CreateRecoveryLinkForIdentityBody? = nil, completion: @escaping (_ data: RecoveryLinkForIdentity?, _ error: Error?) -> Void)
```

Create a Recovery Link

This endpoint creates a recovery link which should be given to the user in order for them to recover (or activate) their account.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let createRecoveryLinkForIdentityBody = createRecoveryLinkForIdentityBody(expiresIn: "expiresIn_example", identityId: "identityId_example") // CreateRecoveryLinkForIdentityBody |  (optional)

// Create a Recovery Link
IdentityAPI.createRecoveryLinkForIdentity(createRecoveryLinkForIdentityBody: createRecoveryLinkForIdentityBody) { (response, error) in
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
 **createRecoveryLinkForIdentityBody** | [**CreateRecoveryLinkForIdentityBody**](CreateRecoveryLinkForIdentityBody.md) |  | [optional] 

### Return type

[**RecoveryLinkForIdentity**](RecoveryLinkForIdentity.md)

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
import OpenAPIClient

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
    open class func deleteIdentityCredentials(id: String, type: ModelType_deleteIdentityCredentials, completion: @escaping (_ data: Identity?, _ error: Error?) -> Void)
```

Delete a credential for a specific identity

Delete an [identity](https://www.ory.sh/docs/kratos/concepts/identity-user-model) credential by its type You can only delete second factor (aal2) credentials.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = "id_example" // String | ID is the identity's ID.
let type = "type_example" // String | Type is the credential's Type. One of totp, webauthn, lookup

// Delete a credential for a specific identity
IdentityAPI.deleteIdentityCredentials(id: id, type: type) { (response, error) in
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
 **type** | **String** | Type is the credential&#39;s Type. One of totp, webauthn, lookup | 

### Return type

[**Identity**](Identity.md)

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
import OpenAPIClient

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
import OpenAPIClient

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
    open class func extendSession(id: String, completion: @escaping (_ data: Session?, _ error: Error?) -> Void)
```

Extend a Session

Calling this endpoint extends the given session ID. If `session.earliest_possible_extend` is set it will only extend the session after the specified time has passed.  Retrieve the session ID from the `/sessions/whoami` endpoint / `toSession` SDK method.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

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

[**Session**](Session.md)

### Authorization

[oryAccessToken](../README.md#oryAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getIdentity**
```swift
    open class func getIdentity(id: String, includeCredential: [String]? = nil, completion: @escaping (_ data: Identity?, _ error: Error?) -> Void)
```

Get an Identity

Return an [identity](https://www.ory.sh/docs/kratos/concepts/identity-user-model) by its ID. You can optionally include credentials (e.g. social sign in connections) in the response by using the `include_credential` query parameter.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = "id_example" // String | ID must be set to the ID of identity you want to get
let includeCredential = ["inner_example"] // [String] | Include Credentials in Response  Currently, only `oidc` is supported. This will return the initial OAuth 2.0 Access, Refresh and (optionally) OpenID Connect ID Token. (optional)

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
 **includeCredential** | [**[String]**](String.md) | Include Credentials in Response  Currently, only &#x60;oidc&#x60; is supported. This will return the initial OAuth 2.0 Access, Refresh and (optionally) OpenID Connect ID Token. | [optional] 

### Return type

[**Identity**](Identity.md)

### Authorization

[oryAccessToken](../README.md#oryAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getIdentitySchema**
```swift
    open class func getIdentitySchema(id: String, completion: @escaping (_ data: AnyCodable?, _ error: Error?) -> Void)
```

Get Identity JSON Schema

Return a specific identity schema.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

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

**AnyCodable**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getSession**
```swift
    open class func getSession(id: String, expand: [Expand_getSession]? = nil, completion: @escaping (_ data: Session?, _ error: Error?) -> Void)
```

Get Session

This endpoint is useful for:  Getting a session object with all specified expandables that exist in an administrative context.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = "id_example" // String | ID is the session's ID.
let expand = ["inner_example"] // [String] | ExpandOptions is a query parameter encoded list of all properties that must be expanded in the Session. Example - ?expand=Identity&expand=Devices If no value is provided, the expandable properties are skipped. (optional)

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

[**Session**](Session.md)

### Authorization

[oryAccessToken](../README.md#oryAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listIdentities**
```swift
    open class func listIdentities(perPage: Int64? = nil, page: Int64? = nil, credentialsIdentifier: String? = nil, completion: @escaping (_ data: [Identity]?, _ error: Error?) -> Void)
```

List Identities

Lists all [identities](https://www.ory.sh/docs/kratos/concepts/identity-user-model) in the system.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let perPage = 987 // Int64 | Items per Page  This is the number of items per page. (optional) (default to 250)
let page = 987 // Int64 | Pagination Page  This value is currently an integer, but it is not sequential. The value is not the page number, but a reference. The next page can be any number and some numbers might return an empty list.  For example, page 2 might not follow after page 1. And even if page 3 and 5 exist, but page 4 might not exist. (optional) (default to 1)
let credentialsIdentifier = "credentialsIdentifier_example" // String | CredentialsIdentifier is the identifier (username, email) of the credentials to look up. (optional)

// List Identities
IdentityAPI.listIdentities(perPage: perPage, page: page, credentialsIdentifier: credentialsIdentifier) { (response, error) in
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
 **perPage** | **Int64** | Items per Page  This is the number of items per page. | [optional] [default to 250]
 **page** | **Int64** | Pagination Page  This value is currently an integer, but it is not sequential. The value is not the page number, but a reference. The next page can be any number and some numbers might return an empty list.  For example, page 2 might not follow after page 1. And even if page 3 and 5 exist, but page 4 might not exist. | [optional] [default to 1]
 **credentialsIdentifier** | **String** | CredentialsIdentifier is the identifier (username, email) of the credentials to look up. | [optional] 

### Return type

[**[Identity]**](Identity.md)

### Authorization

[oryAccessToken](../README.md#oryAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listIdentitySchemas**
```swift
    open class func listIdentitySchemas(perPage: Int64? = nil, page: Int64? = nil, completion: @escaping (_ data: [IdentitySchemaContainer]?, _ error: Error?) -> Void)
```

Get all Identity Schemas

Returns a list of all identity schemas currently in use.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let perPage = 987 // Int64 | Items per Page  This is the number of items per page. (optional) (default to 250)
let page = 987 // Int64 | Pagination Page  This value is currently an integer, but it is not sequential. The value is not the page number, but a reference. The next page can be any number and some numbers might return an empty list.  For example, page 2 might not follow after page 1. And even if page 3 and 5 exist, but page 4 might not exist. (optional) (default to 1)

// Get all Identity Schemas
IdentityAPI.listIdentitySchemas(perPage: perPage, page: page) { (response, error) in
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
 **perPage** | **Int64** | Items per Page  This is the number of items per page. | [optional] [default to 250]
 **page** | **Int64** | Pagination Page  This value is currently an integer, but it is not sequential. The value is not the page number, but a reference. The next page can be any number and some numbers might return an empty list.  For example, page 2 might not follow after page 1. And even if page 3 and 5 exist, but page 4 might not exist. | [optional] [default to 1]

### Return type

[**[IdentitySchemaContainer]**](IdentitySchemaContainer.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listIdentitySessions**
```swift
    open class func listIdentitySessions(id: String, perPage: Int64? = nil, page: Int64? = nil, active: Bool? = nil, completion: @escaping (_ data: [Session]?, _ error: Error?) -> Void)
```

List an Identity's Sessions

This endpoint returns all sessions that belong to the given Identity.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = "id_example" // String | ID is the identity's ID.
let perPage = 987 // Int64 | Items per Page  This is the number of items per page. (optional) (default to 250)
let page = 987 // Int64 | Pagination Page  This value is currently an integer, but it is not sequential. The value is not the page number, but a reference. The next page can be any number and some numbers might return an empty list.  For example, page 2 might not follow after page 1. And even if page 3 and 5 exist, but page 4 might not exist. (optional) (default to 1)
let active = true // Bool | Active is a boolean flag that filters out sessions based on the state. If no value is provided, all sessions are returned. (optional)

// List an Identity's Sessions
IdentityAPI.listIdentitySessions(id: id, perPage: perPage, page: page, active: active) { (response, error) in
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
 **perPage** | **Int64** | Items per Page  This is the number of items per page. | [optional] [default to 250]
 **page** | **Int64** | Pagination Page  This value is currently an integer, but it is not sequential. The value is not the page number, but a reference. The next page can be any number and some numbers might return an empty list.  For example, page 2 might not follow after page 1. And even if page 3 and 5 exist, but page 4 might not exist. | [optional] [default to 1]
 **active** | **Bool** | Active is a boolean flag that filters out sessions based on the state. If no value is provided, all sessions are returned. | [optional] 

### Return type

[**[Session]**](Session.md)

### Authorization

[oryAccessToken](../README.md#oryAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listSessions**
```swift
    open class func listSessions(pageSize: Int64? = nil, pageToken: String? = nil, active: Bool? = nil, expand: [Expand_listSessions]? = nil, completion: @escaping (_ data: [Session]?, _ error: Error?) -> Void)
```

List All Sessions

Listing all sessions that exist.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let pageSize = 987 // Int64 | Items per Page  This is the number of items per page to return. For details on pagination please head over to the [pagination documentation](https://www.ory.sh/docs/ecosystem/api-design#pagination). (optional) (default to 250)
let pageToken = "pageToken_example" // String | Next Page Token  The next page token. For details on pagination please head over to the [pagination documentation](https://www.ory.sh/docs/ecosystem/api-design#pagination). (optional)
let active = true // Bool | Active is a boolean flag that filters out sessions based on the state. If no value is provided, all sessions are returned. (optional)
let expand = ["inner_example"] // [String] | ExpandOptions is a query parameter encoded list of all properties that must be expanded in the Session. If no value is provided, the expandable properties are skipped. (optional)

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

[**[Session]**](Session.md)

### Authorization

[oryAccessToken](../README.md#oryAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **patchIdentity**
```swift
    open class func patchIdentity(id: String, jsonPatch: [JsonPatch]? = nil, completion: @escaping (_ data: Identity?, _ error: Error?) -> Void)
```

Patch an Identity

Partially updates an [identity's](https://www.ory.sh/docs/kratos/concepts/identity-user-model) field using [JSON Patch](https://jsonpatch.com/). The fields `id`, `stateChangedAt` and `credentials` can not be updated using this method.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = "id_example" // String | ID must be set to the ID of identity you want to update
let jsonPatch = [jsonPatch(from: "from_example", op: "op_example", path: "path_example", value: 123)] // [JsonPatch] |  (optional)

// Patch an Identity
IdentityAPI.patchIdentity(id: id, jsonPatch: jsonPatch) { (response, error) in
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
 **jsonPatch** | [**[JsonPatch]**](JsonPatch.md) |  | [optional] 

### Return type

[**Identity**](Identity.md)

### Authorization

[oryAccessToken](../README.md#oryAccessToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateIdentity**
```swift
    open class func updateIdentity(id: String, updateIdentityBody: UpdateIdentityBody? = nil, completion: @escaping (_ data: Identity?, _ error: Error?) -> Void)
```

Update an Identity

This endpoint updates an [identity](https://www.ory.sh/docs/kratos/concepts/identity-user-model). The full identity payload (except credentials) is expected. It is possible to update the identity's credentials as well.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = "id_example" // String | ID must be set to the ID of identity you want to update
let updateIdentityBody = updateIdentityBody(credentials: identityWithCredentials(oidc: identityWithCredentialsOidc(config: identityWithCredentialsOidcConfig(config: identityWithCredentialsPasswordConfig(hashedPassword: "hashedPassword_example", password: "password_example"), providers: [identityWithCredentialsOidcConfigProvider(provider: "provider_example", subject: "subject_example")])), password: identityWithCredentialsPassword(config: nil)), metadataAdmin: 123, metadataPublic: 123, schemaId: "schemaId_example", state: identityState(), traits: 123) // UpdateIdentityBody |  (optional)

// Update an Identity
IdentityAPI.updateIdentity(id: id, updateIdentityBody: updateIdentityBody) { (response, error) in
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
 **updateIdentityBody** | [**UpdateIdentityBody**](UpdateIdentityBody.md) |  | [optional] 

### Return type

[**Identity**](Identity.md)

### Authorization

[oryAccessToken](../README.md#oryAccessToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

