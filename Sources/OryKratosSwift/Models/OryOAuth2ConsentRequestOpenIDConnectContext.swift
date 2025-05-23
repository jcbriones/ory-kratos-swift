//
// OryOAuth2ConsentRequestOpenIDConnectContext.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

/** OAuth2ConsentRequestOpenIDConnectContext struct for OAuth2ConsentRequestOpenIDConnectContext */
public struct OryOAuth2ConsentRequestOpenIDConnectContext: Sendable, Codable, ParameterConvertible, Hashable {

    public var additionalProperties: [String: JSONValue]?
    /** ACRValues is the Authentication AuthorizationContext Class Reference requested in the OAuth 2.0 Authorization request. It is a parameter defined by OpenID Connect and expresses which level of authentication (e.g. 2FA) is required.  OpenID Connect defines it as follows: > Requested Authentication AuthorizationContext Class Reference values. Space-separated string that specifies the acr values that the Authorization Server is being requested to use for processing this Authentication Request, with the values appearing in order of preference. The Authentication AuthorizationContext Class satisfied by the authentication performed is returned as the acr Claim Value, as specified in Section 2. The acr Claim is requested as a Voluntary Claim by this parameter. */
    public var acrValues: [String]?
    /** Display is a string value that specifies how the Authorization Server displays the authentication and consent user interface pages to the End-User. The defined values are: page: The Authorization Server SHOULD display the authentication and consent UI consistent with a full User Agent page view. If the display parameter is not specified, this is the default display mode. popup: The Authorization Server SHOULD display the authentication and consent UI consistent with a popup User Agent window. The popup User Agent window should be of an appropriate size for a login-focused dialog and should not obscure the entire window that it is popping up over. touch: The Authorization Server SHOULD display the authentication and consent UI consistent with a device that leverages a touch interface. wap: The Authorization Server SHOULD display the authentication and consent UI consistent with a \\\"feature phone\\\" type display.  The Authorization Server MAY also attempt to detect the capabilities of the User Agent and present an appropriate display. */
    public var display: String?
    /** IDTokenHintClaims are the claims of the ID Token previously issued by the Authorization Server being passed as a hint about the End-User's current or past authenticated session with the Client. */
    public var idTokenHintClaims: [String: JSONValue]?
    /** LoginHint hints about the login identifier the End-User might use to log in (if necessary). This hint can be used by an RP if it first asks the End-User for their e-mail address (or other identifier) and then wants to pass that value as a hint to the discovered authorization service. This value MAY also be a phone number in the format specified for the phone_number Claim. The use of this parameter is optional. */
    public var loginHint: String?
    /** UILocales is the End-User'id preferred languages and scripts for the user interface, represented as a space-separated list of BCP47 [RFC5646] language tag values, ordered by preference. For instance, the value \\\"fr-CA fr en\\\" represents a preference for French as spoken in Canada, then French (without a region designation), followed by English (without a region designation). An error SHOULD NOT result if some or all of the requested locales are not supported by the OpenID Provider. */
    public var uiLocales: [String]?

    public init(additionalProperties: [String: JSONValue]? = nil, acrValues: [String]? = nil, display: String? = nil, idTokenHintClaims: [String: JSONValue]? = nil, loginHint: String? = nil, uiLocales: [String]? = nil) {
        self.additionalProperties = additionalProperties
        self.acrValues = acrValues
        self.display = display
        self.idTokenHintClaims = idTokenHintClaims
        self.loginHint = loginHint
        self.uiLocales = uiLocales
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case additionalProperties = "AdditionalProperties"
        case acrValues = "acr_values"
        case display
        case idTokenHintClaims = "id_token_hint_claims"
        case loginHint = "login_hint"
        case uiLocales = "ui_locales"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(additionalProperties, forKey: .additionalProperties)
        try container.encodeIfPresent(acrValues, forKey: .acrValues)
        try container.encodeIfPresent(display, forKey: .display)
        try container.encodeIfPresent(idTokenHintClaims, forKey: .idTokenHintClaims)
        try container.encodeIfPresent(loginHint, forKey: .loginHint)
        try container.encodeIfPresent(uiLocales, forKey: .uiLocales)
    }
}

