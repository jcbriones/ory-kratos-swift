# UiNodeAttributes

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**autocomplete** | **String** | The autocomplete attribute for the input. email InputAttributeAutocompleteEmail tel InputAttributeAutocompleteTel url InputAttributeAutocompleteUrl current-password InputAttributeAutocompleteCurrentPassword new-password InputAttributeAutocompleteNewPassword one-time-code InputAttributeAutocompleteOneTimeCode | [optional] 
**disabled** | **Bool** | Sets the input&#39;s disabled field to true or false. | 
**label** | [**UiText**](UiText.md) |  | [optional] 
**name** | **String** | The input&#39;s element name. | 
**nodeType** | **String** | NodeType represents this node&#39;s types. It is a mirror of &#x60;node.type&#x60; and is primarily used to allow compatibility with OpenAPI 3.0. In this struct it technically always is \&quot;script\&quot;. | 
**onclick** | **String** | OnClick may contain javascript which should be executed on click. This is primarily used for WebAuthn. | [optional] 
**pattern** | **String** | The input&#39;s pattern. | [optional] 
**_required** | **Bool** | Mark this input field as required. | [optional] 
**type** | **String** | The script MIME type | 
**value** | **AnyCodable** | The input&#39;s value. | [optional] 
**id** | **String** | A unique identifier | 
**text** | [**UiText**](UiText.md) |  | 
**height** | **Int64** | Height of the image | 
**src** | **String** | The script source | 
**width** | **Int64** | Width of the image | 
**href** | **String** | The link&#39;s href (destination) URL.  format: uri | 
**title** | [**UiText**](UiText.md) |  | 
**async** | **Bool** | The script async type | 
**crossorigin** | **String** | The script cross origin policy | 
**integrity** | **String** | The script&#39;s integrity hash | 
**nonce** | **String** | Nonce for CSP  A nonce you may want to use to improve your Content Security Policy. You do not have to use this value but if you want to improve your CSP policies you may use it. You can also choose to use your own nonce value! | 
**referrerpolicy** | **String** | The script referrer policy | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


