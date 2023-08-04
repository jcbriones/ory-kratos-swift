# Swift5 API client for OpenAPIClient

This is the API specification for Ory Identities with features such as registration, login, recovery, account verification, profile settings, password reset, identity management, session management, email and sms delivery, and more.


## Overview
This API client was generated by the [OpenAPI Generator](https://openapi-generator.tech) project.  By using the [openapi-spec](https://github.com/OAI/OpenAPI-Specification) from a remote server, you can easily generate an API client.

- API version: 
- Package version: 
- Build package: org.openapitools.codegen.languages.Swift5ClientCodegen

## Installation

### Carthage

Run `carthage update`

### CocoaPods

Run `pod install`

## Documentation for API Endpoints

All URIs are relative to *http://localhost*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*CourierAPI* | [**getCourierMessage**](docs/CourierAPI.md#getcouriermessage) | **GET** /admin/courier/messages/{id} | Get a Message
*CourierAPI* | [**listCourierMessages**](docs/CourierAPI.md#listcouriermessages) | **GET** /admin/courier/messages | List Messages
*FrontendAPI* | [**createBrowserLoginFlow**](docs/FrontendAPI.md#createbrowserloginflow) | **GET** /self-service/login/browser | Create Login Flow for Browsers
*FrontendAPI* | [**createBrowserLogoutFlow**](docs/FrontendAPI.md#createbrowserlogoutflow) | **GET** /self-service/logout/browser | Create a Logout URL for Browsers
*FrontendAPI* | [**createBrowserRecoveryFlow**](docs/FrontendAPI.md#createbrowserrecoveryflow) | **GET** /self-service/recovery/browser | Create Recovery Flow for Browsers
*FrontendAPI* | [**createBrowserRegistrationFlow**](docs/FrontendAPI.md#createbrowserregistrationflow) | **GET** /self-service/registration/browser | Create Registration Flow for Browsers
*FrontendAPI* | [**createBrowserSettingsFlow**](docs/FrontendAPI.md#createbrowsersettingsflow) | **GET** /self-service/settings/browser | Create Settings Flow for Browsers
*FrontendAPI* | [**createBrowserVerificationFlow**](docs/FrontendAPI.md#createbrowserverificationflow) | **GET** /self-service/verification/browser | Create Verification Flow for Browser Clients
*FrontendAPI* | [**createNativeLoginFlow**](docs/FrontendAPI.md#createnativeloginflow) | **GET** /self-service/login/api | Create Login Flow for Native Apps
*FrontendAPI* | [**createNativeRecoveryFlow**](docs/FrontendAPI.md#createnativerecoveryflow) | **GET** /self-service/recovery/api | Create Recovery Flow for Native Apps
*FrontendAPI* | [**createNativeRegistrationFlow**](docs/FrontendAPI.md#createnativeregistrationflow) | **GET** /self-service/registration/api | Create Registration Flow for Native Apps
*FrontendAPI* | [**createNativeSettingsFlow**](docs/FrontendAPI.md#createnativesettingsflow) | **GET** /self-service/settings/api | Create Settings Flow for Native Apps
*FrontendAPI* | [**createNativeVerificationFlow**](docs/FrontendAPI.md#createnativeverificationflow) | **GET** /self-service/verification/api | Create Verification Flow for Native Apps
*FrontendAPI* | [**disableMyOtherSessions**](docs/FrontendAPI.md#disablemyothersessions) | **DELETE** /sessions | Disable my other sessions
*FrontendAPI* | [**disableMySession**](docs/FrontendAPI.md#disablemysession) | **DELETE** /sessions/{id} | Disable one of my sessions
*FrontendAPI* | [**exchangeSessionToken**](docs/FrontendAPI.md#exchangesessiontoken) | **GET** /sessions/token-exchange | Exchange Session Token
*FrontendAPI* | [**getFlowError**](docs/FrontendAPI.md#getflowerror) | **GET** /self-service/errors | Get User-Flow Errors
*FrontendAPI* | [**getLoginFlow**](docs/FrontendAPI.md#getloginflow) | **GET** /self-service/login/flows | Get Login Flow
*FrontendAPI* | [**getRecoveryFlow**](docs/FrontendAPI.md#getrecoveryflow) | **GET** /self-service/recovery/flows | Get Recovery Flow
*FrontendAPI* | [**getRegistrationFlow**](docs/FrontendAPI.md#getregistrationflow) | **GET** /self-service/registration/flows | Get Registration Flow
*FrontendAPI* | [**getSettingsFlow**](docs/FrontendAPI.md#getsettingsflow) | **GET** /self-service/settings/flows | Get Settings Flow
*FrontendAPI* | [**getVerificationFlow**](docs/FrontendAPI.md#getverificationflow) | **GET** /self-service/verification/flows | Get Verification Flow
*FrontendAPI* | [**getWebAuthnJavaScript**](docs/FrontendAPI.md#getwebauthnjavascript) | **GET** /.well-known/ory/webauthn.js | Get WebAuthn JavaScript
*FrontendAPI* | [**listMySessions**](docs/FrontendAPI.md#listmysessions) | **GET** /sessions | Get My Active Sessions
*FrontendAPI* | [**performNativeLogout**](docs/FrontendAPI.md#performnativelogout) | **DELETE** /self-service/logout/api | Perform Logout for Native Apps
*FrontendAPI* | [**toSession**](docs/FrontendAPI.md#tosession) | **GET** /sessions/whoami | Check Who the Current HTTP Session Belongs To
*FrontendAPI* | [**updateLoginFlow**](docs/FrontendAPI.md#updateloginflow) | **POST** /self-service/login | Submit a Login Flow
*FrontendAPI* | [**updateLogoutFlow**](docs/FrontendAPI.md#updatelogoutflow) | **GET** /self-service/logout | Update Logout Flow
*FrontendAPI* | [**updateRecoveryFlow**](docs/FrontendAPI.md#updaterecoveryflow) | **POST** /self-service/recovery | Complete Recovery Flow
*FrontendAPI* | [**updateRegistrationFlow**](docs/FrontendAPI.md#updateregistrationflow) | **POST** /self-service/registration | Update Registration Flow
*FrontendAPI* | [**updateSettingsFlow**](docs/FrontendAPI.md#updatesettingsflow) | **POST** /self-service/settings | Complete Settings Flow
*FrontendAPI* | [**updateVerificationFlow**](docs/FrontendAPI.md#updateverificationflow) | **POST** /self-service/verification | Complete Verification Flow
*IdentityAPI* | [**batchPatchIdentities**](docs/IdentityAPI.md#batchpatchidentities) | **PATCH** /admin/identities | Create and deletes multiple identities
*IdentityAPI* | [**createIdentity**](docs/IdentityAPI.md#createidentity) | **POST** /admin/identities | Create an Identity
*IdentityAPI* | [**createRecoveryCodeForIdentity**](docs/IdentityAPI.md#createrecoverycodeforidentity) | **POST** /admin/recovery/code | Create a Recovery Code
*IdentityAPI* | [**createRecoveryLinkForIdentity**](docs/IdentityAPI.md#createrecoverylinkforidentity) | **POST** /admin/recovery/link | Create a Recovery Link
*IdentityAPI* | [**deleteIdentity**](docs/IdentityAPI.md#deleteidentity) | **DELETE** /admin/identities/{id} | Delete an Identity
*IdentityAPI* | [**deleteIdentityCredentials**](docs/IdentityAPI.md#deleteidentitycredentials) | **DELETE** /admin/identities/{id}/credentials/{type} | Delete a credential for a specific identity
*IdentityAPI* | [**deleteIdentitySessions**](docs/IdentityAPI.md#deleteidentitysessions) | **DELETE** /admin/identities/{id}/sessions | Delete &amp; Invalidate an Identity&#39;s Sessions
*IdentityAPI* | [**disableSession**](docs/IdentityAPI.md#disablesession) | **DELETE** /admin/sessions/{id} | Deactivate a Session
*IdentityAPI* | [**extendSession**](docs/IdentityAPI.md#extendsession) | **PATCH** /admin/sessions/{id}/extend | Extend a Session
*IdentityAPI* | [**getIdentity**](docs/IdentityAPI.md#getidentity) | **GET** /admin/identities/{id} | Get an Identity
*IdentityAPI* | [**getIdentitySchema**](docs/IdentityAPI.md#getidentityschema) | **GET** /schemas/{id} | Get Identity JSON Schema
*IdentityAPI* | [**getSession**](docs/IdentityAPI.md#getsession) | **GET** /admin/sessions/{id} | Get Session
*IdentityAPI* | [**listIdentities**](docs/IdentityAPI.md#listidentities) | **GET** /admin/identities | List Identities
*IdentityAPI* | [**listIdentitySchemas**](docs/IdentityAPI.md#listidentityschemas) | **GET** /schemas | Get all Identity Schemas
*IdentityAPI* | [**listIdentitySessions**](docs/IdentityAPI.md#listidentitysessions) | **GET** /admin/identities/{id}/sessions | List an Identity&#39;s Sessions
*IdentityAPI* | [**listSessions**](docs/IdentityAPI.md#listsessions) | **GET** /admin/sessions | List All Sessions
*IdentityAPI* | [**patchIdentity**](docs/IdentityAPI.md#patchidentity) | **PATCH** /admin/identities/{id} | Patch an Identity
*IdentityAPI* | [**updateIdentity**](docs/IdentityAPI.md#updateidentity) | **PUT** /admin/identities/{id} | Update an Identity
*MetadataAPI* | [**getVersion**](docs/MetadataAPI.md#getversion) | **GET** /version | Return Running Software Version.
*MetadataAPI* | [**isAlive**](docs/MetadataAPI.md#isalive) | **GET** /health/alive | Check HTTP Server Status
*MetadataAPI* | [**isReady**](docs/MetadataAPI.md#isready) | **GET** /health/ready | Check HTTP Server and Database Status


## Documentation For Models

 - [AuthenticatorAssuranceLevel](docs/AuthenticatorAssuranceLevel.md)
 - [BatchPatchIdentitiesResponse](docs/BatchPatchIdentitiesResponse.md)
 - [ContinueWith](docs/ContinueWith.md)
 - [ContinueWithSetOrySessionToken](docs/ContinueWithSetOrySessionToken.md)
 - [ContinueWithVerificationUi](docs/ContinueWithVerificationUi.md)
 - [ContinueWithVerificationUiFlow](docs/ContinueWithVerificationUiFlow.md)
 - [CourierMessageStatus](docs/CourierMessageStatus.md)
 - [CourierMessageType](docs/CourierMessageType.md)
 - [CreateIdentityBody](docs/CreateIdentityBody.md)
 - [CreateRecoveryCodeForIdentityBody](docs/CreateRecoveryCodeForIdentityBody.md)
 - [CreateRecoveryLinkForIdentityBody](docs/CreateRecoveryLinkForIdentityBody.md)
 - [DeleteMySessionsCount](docs/DeleteMySessionsCount.md)
 - [ErrorAuthenticatorAssuranceLevelNotSatisfied](docs/ErrorAuthenticatorAssuranceLevelNotSatisfied.md)
 - [ErrorBrowserLocationChangeRequired](docs/ErrorBrowserLocationChangeRequired.md)
 - [ErrorFlowReplaced](docs/ErrorFlowReplaced.md)
 - [ErrorGeneric](docs/ErrorGeneric.md)
 - [FlowError](docs/FlowError.md)
 - [GenericError](docs/GenericError.md)
 - [GetVersion200Response](docs/GetVersion200Response.md)
 - [HealthNotReadyStatus](docs/HealthNotReadyStatus.md)
 - [HealthStatus](docs/HealthStatus.md)
 - [Identity](docs/Identity.md)
 - [IdentityCredentials](docs/IdentityCredentials.md)
 - [IdentityCredentialsOidc](docs/IdentityCredentialsOidc.md)
 - [IdentityCredentialsOidcProvider](docs/IdentityCredentialsOidcProvider.md)
 - [IdentityCredentialsPassword](docs/IdentityCredentialsPassword.md)
 - [IdentityCredentialsType](docs/IdentityCredentialsType.md)
 - [IdentityPatch](docs/IdentityPatch.md)
 - [IdentityPatchResponse](docs/IdentityPatchResponse.md)
 - [IdentitySchemaContainer](docs/IdentitySchemaContainer.md)
 - [IdentityState](docs/IdentityState.md)
 - [IdentityWithCredentials](docs/IdentityWithCredentials.md)
 - [IdentityWithCredentialsOidc](docs/IdentityWithCredentialsOidc.md)
 - [IdentityWithCredentialsOidcConfig](docs/IdentityWithCredentialsOidcConfig.md)
 - [IdentityWithCredentialsOidcConfigProvider](docs/IdentityWithCredentialsOidcConfigProvider.md)
 - [IdentityWithCredentialsPassword](docs/IdentityWithCredentialsPassword.md)
 - [IdentityWithCredentialsPasswordConfig](docs/IdentityWithCredentialsPasswordConfig.md)
 - [IsAlive200Response](docs/IsAlive200Response.md)
 - [IsReady503Response](docs/IsReady503Response.md)
 - [JsonPatch](docs/JsonPatch.md)
 - [LoginFlow](docs/LoginFlow.md)
 - [LogoutFlow](docs/LogoutFlow.md)
 - [Message](docs/Message.md)
 - [MessageDispatch](docs/MessageDispatch.md)
 - [NeedsPrivilegedSessionError](docs/NeedsPrivilegedSessionError.md)
 - [OAuth2Client](docs/OAuth2Client.md)
 - [OAuth2ConsentRequestOpenIDConnectContext](docs/OAuth2ConsentRequestOpenIDConnectContext.md)
 - [OAuth2LoginRequest](docs/OAuth2LoginRequest.md)
 - [Pagination](docs/Pagination.md)
 - [PatchIdentitiesBody](docs/PatchIdentitiesBody.md)
 - [PerformNativeLogoutBody](docs/PerformNativeLogoutBody.md)
 - [RecoveryCodeForIdentity](docs/RecoveryCodeForIdentity.md)
 - [RecoveryFlow](docs/RecoveryFlow.md)
 - [RecoveryFlowState](docs/RecoveryFlowState.md)
 - [RecoveryIdentityAddress](docs/RecoveryIdentityAddress.md)
 - [RecoveryLinkForIdentity](docs/RecoveryLinkForIdentity.md)
 - [RegistrationFlow](docs/RegistrationFlow.md)
 - [SelfServiceFlowExpiredError](docs/SelfServiceFlowExpiredError.md)
 - [Session](docs/Session.md)
 - [SessionAuthenticationMethod](docs/SessionAuthenticationMethod.md)
 - [SessionDevice](docs/SessionDevice.md)
 - [SettingsFlow](docs/SettingsFlow.md)
 - [SettingsFlowState](docs/SettingsFlowState.md)
 - [SuccessfulCodeExchangeResponse](docs/SuccessfulCodeExchangeResponse.md)
 - [SuccessfulNativeLogin](docs/SuccessfulNativeLogin.md)
 - [SuccessfulNativeRegistration](docs/SuccessfulNativeRegistration.md)
 - [TokenPagination](docs/TokenPagination.md)
 - [TokenPaginationHeaders](docs/TokenPaginationHeaders.md)
 - [UiContainer](docs/UiContainer.md)
 - [UiNode](docs/UiNode.md)
 - [UiNodeAnchorAttributes](docs/UiNodeAnchorAttributes.md)
 - [UiNodeAttributes](docs/UiNodeAttributes.md)
 - [UiNodeImageAttributes](docs/UiNodeImageAttributes.md)
 - [UiNodeInputAttributes](docs/UiNodeInputAttributes.md)
 - [UiNodeMeta](docs/UiNodeMeta.md)
 - [UiNodeScriptAttributes](docs/UiNodeScriptAttributes.md)
 - [UiNodeTextAttributes](docs/UiNodeTextAttributes.md)
 - [UiText](docs/UiText.md)
 - [UpdateIdentityBody](docs/UpdateIdentityBody.md)
 - [UpdateLoginFlowBody](docs/UpdateLoginFlowBody.md)
 - [UpdateLoginFlowWithLookupSecretMethod](docs/UpdateLoginFlowWithLookupSecretMethod.md)
 - [UpdateLoginFlowWithOidcMethod](docs/UpdateLoginFlowWithOidcMethod.md)
 - [UpdateLoginFlowWithPasswordMethod](docs/UpdateLoginFlowWithPasswordMethod.md)
 - [UpdateLoginFlowWithTotpMethod](docs/UpdateLoginFlowWithTotpMethod.md)
 - [UpdateLoginFlowWithWebAuthnMethod](docs/UpdateLoginFlowWithWebAuthnMethod.md)
 - [UpdateRecoveryFlowBody](docs/UpdateRecoveryFlowBody.md)
 - [UpdateRecoveryFlowWithCodeMethod](docs/UpdateRecoveryFlowWithCodeMethod.md)
 - [UpdateRecoveryFlowWithLinkMethod](docs/UpdateRecoveryFlowWithLinkMethod.md)
 - [UpdateRegistrationFlowBody](docs/UpdateRegistrationFlowBody.md)
 - [UpdateRegistrationFlowWithOidcMethod](docs/UpdateRegistrationFlowWithOidcMethod.md)
 - [UpdateRegistrationFlowWithPasswordMethod](docs/UpdateRegistrationFlowWithPasswordMethod.md)
 - [UpdateRegistrationFlowWithWebAuthnMethod](docs/UpdateRegistrationFlowWithWebAuthnMethod.md)
 - [UpdateSettingsFlowBody](docs/UpdateSettingsFlowBody.md)
 - [UpdateSettingsFlowWithLookupMethod](docs/UpdateSettingsFlowWithLookupMethod.md)
 - [UpdateSettingsFlowWithOidcMethod](docs/UpdateSettingsFlowWithOidcMethod.md)
 - [UpdateSettingsFlowWithPasswordMethod](docs/UpdateSettingsFlowWithPasswordMethod.md)
 - [UpdateSettingsFlowWithProfileMethod](docs/UpdateSettingsFlowWithProfileMethod.md)
 - [UpdateSettingsFlowWithTotpMethod](docs/UpdateSettingsFlowWithTotpMethod.md)
 - [UpdateSettingsFlowWithWebAuthnMethod](docs/UpdateSettingsFlowWithWebAuthnMethod.md)
 - [UpdateVerificationFlowBody](docs/UpdateVerificationFlowBody.md)
 - [UpdateVerificationFlowWithCodeMethod](docs/UpdateVerificationFlowWithCodeMethod.md)
 - [UpdateVerificationFlowWithLinkMethod](docs/UpdateVerificationFlowWithLinkMethod.md)
 - [VerifiableIdentityAddress](docs/VerifiableIdentityAddress.md)
 - [VerificationFlow](docs/VerificationFlow.md)
 - [VerificationFlowState](docs/VerificationFlowState.md)
 - [Version](docs/Version.md)


<a id="documentation-for-authorization"></a>
## Documentation For Authorization


Authentication schemes defined for the API:
<a id="oryAccessToken"></a>
### oryAccessToken

- **Type**: API key
- **API key parameter name**: Authorization
- **Location**: HTTP header


## Author

office@ory.sh

