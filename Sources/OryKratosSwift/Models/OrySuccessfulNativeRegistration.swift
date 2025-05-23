//
// OrySuccessfulNativeRegistration.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

/** The Response for Registration Flows via API */
public struct OrySuccessfulNativeRegistration: Sendable, Codable, ParameterConvertible, Hashable {

    /** Contains a list of actions, that could follow this flow  It can, for example, this will contain a reference to the verification flow, created as part of the user's registration or the token of the session. */
    public var continueWith: [OryContinueWith]?
    public var identity: OryIdentity
    public var session: OrySession?
    /** The Session Token  This field is only set when the session hook is configured as a post-registration hook.  A session token is equivalent to a session cookie, but it can be sent in the HTTP Authorization Header:  Authorization: bearer ${session-token}  The session token is only issued for API flows, not for Browser flows! */
    public var sessionToken: String?

    public init(continueWith: [OryContinueWith]? = nil, identity: OryIdentity, session: OrySession? = nil, sessionToken: String? = nil) {
        self.continueWith = continueWith
        self.identity = identity
        self.session = session
        self.sessionToken = sessionToken
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case continueWith = "continue_with"
        case identity
        case session
        case sessionToken = "session_token"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(continueWith, forKey: .continueWith)
        try container.encode(identity, forKey: .identity)
        try container.encodeIfPresent(session, forKey: .session)
        try container.encodeIfPresent(sessionToken, forKey: .sessionToken)
    }
}

