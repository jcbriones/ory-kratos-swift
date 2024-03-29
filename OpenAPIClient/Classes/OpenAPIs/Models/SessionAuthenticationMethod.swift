//
// SessionAuthenticationMethod.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** A singular authenticator used during authentication / login. */
public struct SessionAuthenticationMethod: Codable, JSONEncodable, Hashable {

    public enum Method: String, Codable, CaseIterable {
        case linkRecovery = "link_recovery"
        case codeRecovery = "code_recovery"
        case password = "password"
        case totp = "totp"
        case oidc = "oidc"
        case webauthn = "webauthn"
        case lookupSecret = "lookup_secret"
        case v0Period6LegacySession = "v0.6_legacy_session"
    }
    public var aal: AuthenticatorAssuranceLevel?
    /** When the authentication challenge was completed. */
    public var completedAt: Date?
    public var method: Method?
    /** OIDC or SAML provider id used for authentication */
    public var provider: String?

    public init(aal: AuthenticatorAssuranceLevel? = nil, completedAt: Date? = nil, method: Method? = nil, provider: String? = nil) {
        self.aal = aal
        self.completedAt = completedAt
        self.method = method
        self.provider = provider
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case aal
        case completedAt = "completed_at"
        case method
        case provider
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(aal, forKey: .aal)
        try container.encodeIfPresent(completedAt, forKey: .completedAt)
        try container.encodeIfPresent(method, forKey: .method)
        try container.encodeIfPresent(provider, forKey: .provider)
    }
}

