//
// UpdateRegistrationFlowWithOidcMethod.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Update Registration Flow with OpenID Connect Method */
public struct UpdateRegistrationFlowWithOidcMethod: Codable, JSONEncodable, Hashable {

    /** The CSRF Token */
    public var csrfToken: String?
    /** Method to use  This field must be set to `oidc` when using the oidc method. */
    public var method: String
    /** The provider to register with */
    public var provider: String
    /** The identity traits */
    public var traits: AnyCodable?

    public init(csrfToken: String? = nil, method: String, provider: String, traits: AnyCodable? = nil) {
        self.csrfToken = csrfToken
        self.method = method
        self.provider = provider
        self.traits = traits
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case csrfToken = "csrf_token"
        case method
        case provider
        case traits
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(csrfToken, forKey: .csrfToken)
        try container.encode(method, forKey: .method)
        try container.encode(provider, forKey: .provider)
        try container.encodeIfPresent(traits, forKey: .traits)
    }
}

