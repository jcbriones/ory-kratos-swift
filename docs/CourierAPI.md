# CourierAPI

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**listCourierMessages**](CourierAPI.md#listcouriermessages) | **GET** /admin/courier/messages | List Messages


# **listCourierMessages**
```swift
    open class func listCourierMessages(perPage: Int64? = nil, page: Int64? = nil, status: CourierMessageStatus? = nil, recipient: String? = nil, completion: @escaping (_ data: [Message]?, _ error: Error?) -> Void)
```

List Messages

Lists all messages by given status and recipient.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let perPage = 987 // Int64 | Items per Page  This is the number of items per page. (optional) (default to 250)
let page = 987 // Int64 | Pagination Page  This value is currently an integer, but it is not sequential. The value is not the page number, but a reference. The next page can be any number and some numbers might return an empty list.  For example, page 2 might not follow after page 1. And even if page 3 and 5 exist, but page 4 might not exist. (optional) (default to 1)
let status = courierMessageStatus() // CourierMessageStatus | Status filters out messages based on status. If no value is provided, it doesn't take effect on filter. (optional)
let recipient = "recipient_example" // String | Recipient filters out messages based on recipient. If no value is provided, it doesn't take effect on filter. (optional)

// List Messages
CourierAPI.listCourierMessages(perPage: perPage, page: page, status: status, recipient: recipient) { (response, error) in
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
 **status** | [**CourierMessageStatus**](.md) | Status filters out messages based on status. If no value is provided, it doesn&#39;t take effect on filter. | [optional] 
 **recipient** | **String** | Recipient filters out messages based on recipient. If no value is provided, it doesn&#39;t take effect on filter. | [optional] 

### Return type

[**[Message]**](Message.md)

### Authorization

[oryAccessToken](../README.md#oryAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

