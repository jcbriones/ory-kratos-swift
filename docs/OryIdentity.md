# OryIdentity

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**createdAt** | **Date** | CreatedAt is a helper struct field for gobuffalo.pop. | [optional] 
**credentials** | [String: OryIdentityCredentials] | Credentials represents all credentials that can be used for authenticating this identity. | [optional] 
**id** | **String** | ID is the identity&#39;s unique identifier.  The Identity ID can not be changed and can not be chosen. This ensures future compatibility and optimization for distributed stores such as CockroachDB. | 
**metadataAdmin** | **JSONValue** | NullJSONRawMessage represents a json.RawMessage that works well with JSON, SQL, and Swagger and is NULLable- | [optional] 
**metadataPublic** | **JSONValue** | NullJSONRawMessage represents a json.RawMessage that works well with JSON, SQL, and Swagger and is NULLable- | [optional] 
**organizationId** | **String** |  | [optional] 
**recoveryAddresses** | [OryRecoveryIdentityAddress] | RecoveryAddresses contains all the addresses that can be used to recover an identity. | [optional] 
**schemaId** | **String** | SchemaID is the ID of the JSON Schema to be used for validating the identity&#39;s traits. | 
**schemaUrl** | **String** | SchemaURL is the URL of the endpoint where the identity&#39;s traits schema can be fetched from.  format: url | 
**state** | **String** | State is the identity&#39;s state.  This value has currently no effect. active StateActive inactive StateInactive | [optional] 
**stateChangedAt** | **Date** |  | [optional] 
**traits** | **JSONValue** | Traits represent an identity&#39;s traits. The identity is able to create, modify, and delete traits in a self-service manner. The input will always be validated against the JSON Schema defined in &#x60;schema_url&#x60;. | 
**updatedAt** | **Date** | UpdatedAt is a helper struct field for gobuffalo.pop. | [optional] 
**verifiableAddresses** | [OryVerifiableIdentityAddress] | VerifiableAddresses contains all the addresses that can be verified by the user. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


