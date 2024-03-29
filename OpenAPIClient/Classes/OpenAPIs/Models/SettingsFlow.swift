//
// SettingsFlow.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** This flow is used when an identity wants to update settings (e.g. profile data, passwords, ...) in a selfservice manner.  We recommend reading the [User Settings Documentation](../self-service/flows/user-settings) */
public struct SettingsFlow: Codable, JSONEncodable, Hashable {

    /** Active, if set, contains the registration method that is being used. It is initially not set. */
    public var active: String?
    /** Contains a list of actions, that could follow this flow  It can, for example, contain a reference to the verification flow, created as part of the user's registration. */
    public var continueWith: [ContinueWith]?
    /** ExpiresAt is the time (UTC) when the flow expires. If the user still wishes to update the setting, a new flow has to be initiated. */
    public var expiresAt: Date
    /** ID represents the flow's unique ID. When performing the settings flow, this represents the id in the settings ui's query parameter: http://<selfservice.flows.settings.ui_url>?flow=<id> */
    public var id: String
    public var identity: Identity
    /** IssuedAt is the time (UTC) when the flow occurred. */
    public var issuedAt: Date
    /** RequestURL is the initial URL that was requested from Ory Kratos. It can be used to forward information contained in the URL's path or query for example. */
    public var requestUrl: String
    /** ReturnTo contains the requested return_to URL. */
    public var returnTo: String?
    public var state: SettingsFlowState
    /** The flow type can either be `api` or `browser`. */
    public var type: String
    public var ui: UiContainer

    public init(active: String? = nil, continueWith: [ContinueWith]? = nil, expiresAt: Date, id: String, identity: Identity, issuedAt: Date, requestUrl: String, returnTo: String? = nil, state: SettingsFlowState, type: String, ui: UiContainer) {
        self.active = active
        self.continueWith = continueWith
        self.expiresAt = expiresAt
        self.id = id
        self.identity = identity
        self.issuedAt = issuedAt
        self.requestUrl = requestUrl
        self.returnTo = returnTo
        self.state = state
        self.type = type
        self.ui = ui
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case active
        case continueWith = "continue_with"
        case expiresAt = "expires_at"
        case id
        case identity
        case issuedAt = "issued_at"
        case requestUrl = "request_url"
        case returnTo = "return_to"
        case state
        case type
        case ui
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(active, forKey: .active)
        try container.encodeIfPresent(continueWith, forKey: .continueWith)
        try container.encode(expiresAt, forKey: .expiresAt)
        try container.encode(id, forKey: .id)
        try container.encode(identity, forKey: .identity)
        try container.encode(issuedAt, forKey: .issuedAt)
        try container.encode(requestUrl, forKey: .requestUrl)
        try container.encodeIfPresent(returnTo, forKey: .returnTo)
        try container.encode(state, forKey: .state)
        try container.encode(type, forKey: .type)
        try container.encode(ui, forKey: .ui)
    }
}

