//
// OryUpdateSettingsFlowWithProfileMethod.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

/** Update Settings Flow with Profile Method */
public struct OryUpdateSettingsFlowWithProfileMethod: Sendable, Codable, ParameterConvertible, Hashable {

    /** The Anti-CSRF Token  This token is only required when performing browser flows. */
    public var csrfToken: String?
    /** Method  Should be set to profile when trying to update a profile. */
    public var method: String
    /** Traits  The identity's traits. */
    public var traits: JSONValue
    /** Transient data to pass along to any webhooks */
    public var transientPayload: JSONValue?

    public init(csrfToken: String? = nil, method: String, traits: JSONValue, transientPayload: JSONValue? = nil) {
        self.csrfToken = csrfToken
        self.method = method
        self.traits = traits
        self.transientPayload = transientPayload
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case csrfToken = "csrf_token"
        case method
        case traits
        case transientPayload = "transient_payload"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(csrfToken, forKey: .csrfToken)
        try container.encode(method, forKey: .method)
        try container.encode(traits, forKey: .traits)
        try container.encodeIfPresent(transientPayload, forKey: .transientPayload)
    }
}

