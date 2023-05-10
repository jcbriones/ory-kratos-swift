//
// RegistrationFlow.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct RegistrationFlow: Codable, JSONEncodable, Hashable {

    public var active: IdentityCredentialsType?
    /** ExpiresAt is the time (UTC) when the flow expires. If the user still wishes to log in, a new flow has to be initiated. */
    public var expiresAt: Date
    /** ID represents the flow's unique ID. When performing the registration flow, this represents the id in the registration ui's query parameter: http://<selfservice.flows.registration.ui_url>/?flow=<id> */
    public var id: String
    /** IssuedAt is the time (UTC) when the flow occurred. */
    public var issuedAt: Date
    public var oauth2LoginChallenge: String?
    public var oauth2LoginRequest: OAuth2LoginRequest?
    /** RequestURL is the initial URL that was requested from Ory Kratos. It can be used to forward information contained in the URL's path or query for example. */
    public var requestUrl: String
    /** ReturnTo contains the requested return_to URL. */
    public var returnTo: String?
    /** TransientPayload is used to pass data from the registration to a webhook */
    public var transientPayload: AnyCodable?
    /** The flow type can either be `api` or `browser`. */
    public var type: String
    public var ui: UiContainer

    public init(active: IdentityCredentialsType? = nil, expiresAt: Date, id: String, issuedAt: Date, oauth2LoginChallenge: String? = nil, oauth2LoginRequest: OAuth2LoginRequest? = nil, requestUrl: String, returnTo: String? = nil, transientPayload: AnyCodable? = nil, type: String, ui: UiContainer) {
        self.active = active
        self.expiresAt = expiresAt
        self.id = id
        self.issuedAt = issuedAt
        self.oauth2LoginChallenge = oauth2LoginChallenge
        self.oauth2LoginRequest = oauth2LoginRequest
        self.requestUrl = requestUrl
        self.returnTo = returnTo
        self.transientPayload = transientPayload
        self.type = type
        self.ui = ui
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case active
        case expiresAt = "expires_at"
        case id
        case issuedAt = "issued_at"
        case oauth2LoginChallenge = "oauth2_login_challenge"
        case oauth2LoginRequest = "oauth2_login_request"
        case requestUrl = "request_url"
        case returnTo = "return_to"
        case transientPayload = "transient_payload"
        case type
        case ui
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(active, forKey: .active)
        try container.encode(expiresAt, forKey: .expiresAt)
        try container.encode(id, forKey: .id)
        try container.encode(issuedAt, forKey: .issuedAt)
        try container.encodeIfPresent(oauth2LoginChallenge, forKey: .oauth2LoginChallenge)
        try container.encodeIfPresent(oauth2LoginRequest, forKey: .oauth2LoginRequest)
        try container.encode(requestUrl, forKey: .requestUrl)
        try container.encodeIfPresent(returnTo, forKey: .returnTo)
        try container.encodeIfPresent(transientPayload, forKey: .transientPayload)
        try container.encode(type, forKey: .type)
        try container.encode(ui, forKey: .ui)
    }
}

