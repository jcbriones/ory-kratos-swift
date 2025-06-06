//
// OryContinueWithSetOrySessionToken.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

/** Indicates that a session was issued, and the application should use this token for authenticated requests */
public struct OryContinueWithSetOrySessionToken: Sendable, Codable, ParameterConvertible, Hashable {

    public enum OryAction: String, Sendable, Codable, CaseIterable {
        case setOrySessionToken = "set_ory_session_token"
    }
    /** Action will always be `set_ory_session_token` set_ory_session_token ContinueWithActionSetOrySessionTokenString */
    public var action: OryAction
    /** Token is the token of the session */
    public var orySessionToken: String

    public init(action: OryAction, orySessionToken: String) {
        self.action = action
        self.orySessionToken = orySessionToken
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case action
        case orySessionToken = "ory_session_token"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(action, forKey: .action)
        try container.encode(orySessionToken, forKey: .orySessionToken)
    }
}

