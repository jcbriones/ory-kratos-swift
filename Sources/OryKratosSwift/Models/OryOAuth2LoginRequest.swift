//
// OryOAuth2LoginRequest.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

/** OAuth2LoginRequest struct for OAuth2LoginRequest */
public struct OryOAuth2LoginRequest: Sendable, Codable, ParameterConvertible, Hashable {

    public var additionalProperties: [String: JSONValue]?
    /** ID is the identifier (\\\"login challenge\\\") of the login request. It is used to identify the session. */
    public var challenge: String?
    public var client: OryOAuth2Client?
    public var oidcContext: OryOAuth2ConsentRequestOpenIDConnectContext?
    /** RequestURL is the original OAuth 2.0 Authorization URL requested by the OAuth 2.0 client. It is the URL which initiates the OAuth 2.0 Authorization Code or OAuth 2.0 Implicit flow. This URL is typically not needed, but might come in handy if you want to deal with additional request parameters. */
    public var requestUrl: String?
    public var requestedAccessTokenAudience: [String]?
    public var requestedScope: [String]?
    /** SessionID is the login session ID. If the user-agent reuses a login session (via cookie / remember flag) this ID will remain the same. If the user-agent did not have an existing authentication session (e.g. remember is false) this will be a new random value. This value is used as the \\\"sid\\\" parameter in the ID Token and in OIDC Front-/Back- channel logout. It's value can generally be used to associate consecutive login requests by a certain user. */
    public var sessionId: String?
    /** Skip, if true, implies that the client has requested the same scopes from the same user previously. If true, you can skip asking the user to grant the requested scopes, and simply forward the user to the redirect URL.  This feature allows you to update / set session information. */
    public var skip: Bool?
    /** Subject is the user ID of the end-user that authenticated. Now, that end user needs to grant or deny the scope requested by the OAuth 2.0 client. If this value is set and `skip` is true, you MUST include this subject type when accepting the login request, or the request will fail. */
    public var subject: String?

    public init(additionalProperties: [String: JSONValue]? = nil, challenge: String? = nil, client: OryOAuth2Client? = nil, oidcContext: OryOAuth2ConsentRequestOpenIDConnectContext? = nil, requestUrl: String? = nil, requestedAccessTokenAudience: [String]? = nil, requestedScope: [String]? = nil, sessionId: String? = nil, skip: Bool? = nil, subject: String? = nil) {
        self.additionalProperties = additionalProperties
        self.challenge = challenge
        self.client = client
        self.oidcContext = oidcContext
        self.requestUrl = requestUrl
        self.requestedAccessTokenAudience = requestedAccessTokenAudience
        self.requestedScope = requestedScope
        self.sessionId = sessionId
        self.skip = skip
        self.subject = subject
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case additionalProperties = "AdditionalProperties"
        case challenge
        case client
        case oidcContext = "oidc_context"
        case requestUrl = "request_url"
        case requestedAccessTokenAudience = "requested_access_token_audience"
        case requestedScope = "requested_scope"
        case sessionId = "session_id"
        case skip
        case subject
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(additionalProperties, forKey: .additionalProperties)
        try container.encodeIfPresent(challenge, forKey: .challenge)
        try container.encodeIfPresent(client, forKey: .client)
        try container.encodeIfPresent(oidcContext, forKey: .oidcContext)
        try container.encodeIfPresent(requestUrl, forKey: .requestUrl)
        try container.encodeIfPresent(requestedAccessTokenAudience, forKey: .requestedAccessTokenAudience)
        try container.encodeIfPresent(requestedScope, forKey: .requestedScope)
        try container.encodeIfPresent(sessionId, forKey: .sessionId)
        try container.encodeIfPresent(skip, forKey: .skip)
        try container.encodeIfPresent(subject, forKey: .subject)
    }
}

