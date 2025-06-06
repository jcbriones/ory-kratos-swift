# OryUpdateIdentityBody

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**credentials** | [**OryIdentityWithCredentials**](OryIdentityWithCredentials.md) |  | [optional] 
**metadataAdmin** | **JSONValue** | Store metadata about the user which is only accessible through admin APIs such as &#x60;GET /admin/identities/&lt;id&gt;&#x60;. | [optional] 
**metadataPublic** | **JSONValue** | Store metadata about the identity which the identity itself can see when calling for example the session endpoint. Do not store sensitive information (e.g. credit score) about the identity in this field. | [optional] 
**schemaId** | **String** | SchemaID is the ID of the JSON Schema to be used for validating the identity&#39;s traits. If set will update the Identity&#39;s SchemaID. | 
**state** | **String** | State is the identity&#39;s state. active StateActive inactive StateInactive | 
**traits** | **JSONValue** | Traits represent an identity&#39;s traits. The identity is able to create, modify, and delete traits in a self-service manner. The input will always be validated against the JSON Schema defined in &#x60;schema_id&#x60;. | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


