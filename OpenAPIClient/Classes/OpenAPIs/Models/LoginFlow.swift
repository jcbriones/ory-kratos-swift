//
// LoginFlow.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** This object represents a login flow. A login flow is initiated at the \&quot;Initiate Login API / Browser Flow\&quot; endpoint by a client.  Once a login flow is completed successfully, a session cookie or session token will be issued. */
public struct LoginFlow: Codable, JSONEncodable, Hashable {

    public var active: IdentityCredentialsType?
    /** CreatedAt is a helper struct field for gobuffalo.pop. */
    public var createdAt: Date?
    /** ExpiresAt is the time (UTC) when the flow expires. If the user still wishes to log in, a new flow has to be initiated. */
    public var expiresAt: Date
    /** ID represents the flow's unique ID. When performing the login flow, this represents the id in the login UI's query parameter: http://<selfservice.flows.login.ui_url>/?flow=<flow_id> */
    public var id: String
    /** IssuedAt is the time (UTC) when the flow started. */
    public var issuedAt: Date
    public var oauth2LoginChallenge: String?
    public var oauth2LoginRequest: OAuth2LoginRequest?
    /** Refresh stores whether this login flow should enforce re-authentication. */
    public var refresh: Bool?
    /** RequestURL is the initial URL that was requested from Ory Kratos. It can be used to forward information contained in the URL's path or query for example. */
    public var requestUrl: String
    public var requestedAal: AuthenticatorAssuranceLevel?
    /** ReturnTo contains the requested return_to URL. */
    public var returnTo: String?
    /** The flow type can either be `api` or `browser`. */
    public var type: String
    public var ui: UiContainer
    /** UpdatedAt is a helper struct field for gobuffalo.pop. */
    public var updatedAt: Date?

    public init(active: IdentityCredentialsType? = nil, createdAt: Date? = nil, expiresAt: Date, id: String, issuedAt: Date, oauth2LoginChallenge: String? = nil, oauth2LoginRequest: OAuth2LoginRequest? = nil, refresh: Bool? = nil, requestUrl: String, requestedAal: AuthenticatorAssuranceLevel? = nil, returnTo: String? = nil, type: String, ui: UiContainer, updatedAt: Date? = nil) {
        self.active = active
        self.createdAt = createdAt
        self.expiresAt = expiresAt
        self.id = id
        self.issuedAt = issuedAt
        self.oauth2LoginChallenge = oauth2LoginChallenge
        self.oauth2LoginRequest = oauth2LoginRequest
        self.refresh = refresh
        self.requestUrl = requestUrl
        self.requestedAal = requestedAal
        self.returnTo = returnTo
        self.type = type
        self.ui = ui
        self.updatedAt = updatedAt
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case active
        case createdAt = "created_at"
        case expiresAt = "expires_at"
        case id
        case issuedAt = "issued_at"
        case oauth2LoginChallenge = "oauth2_login_challenge"
        case oauth2LoginRequest = "oauth2_login_request"
        case refresh
        case requestUrl = "request_url"
        case requestedAal = "requested_aal"
        case returnTo = "return_to"
        case type
        case ui
        case updatedAt = "updated_at"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(active, forKey: .active)
        try container.encodeIfPresent(createdAt, forKey: .createdAt)
        try container.encode(expiresAt, forKey: .expiresAt)
        try container.encode(id, forKey: .id)
        try container.encode(issuedAt, forKey: .issuedAt)
        try container.encodeIfPresent(oauth2LoginChallenge, forKey: .oauth2LoginChallenge)
        try container.encodeIfPresent(oauth2LoginRequest, forKey: .oauth2LoginRequest)
        try container.encodeIfPresent(refresh, forKey: .refresh)
        try container.encode(requestUrl, forKey: .requestUrl)
        try container.encodeIfPresent(requestedAal, forKey: .requestedAal)
        try container.encodeIfPresent(returnTo, forKey: .returnTo)
        try container.encode(type, forKey: .type)
        try container.encode(ui, forKey: .ui)
        try container.encodeIfPresent(updatedAt, forKey: .updatedAt)
    }
}

