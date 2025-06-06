//
// OryUpdateRegistrationFlowWithWebAuthnMethod.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

/** Update Registration Flow with WebAuthn Method */
public struct OryUpdateRegistrationFlowWithWebAuthnMethod: Sendable, Codable, ParameterConvertible, Hashable {

    /** CSRFToken is the anti-CSRF token */
    public var csrfToken: String?
    /** Method  Should be set to \"webauthn\" when trying to add, update, or remove a webAuthn pairing. */
    public var method: String
    /** The identity's traits */
    public var traits: JSONValue
    /** Transient data to pass along to any webhooks */
    public var transientPayload: JSONValue?
    /** Register a WebAuthn Security Key  It is expected that the JSON returned by the WebAuthn registration process is included here. */
    public var webauthnRegister: String?
    /** Name of the WebAuthn Security Key to be Added  A human-readable name for the security key which will be added. */
    public var webauthnRegisterDisplayname: String?

    public init(csrfToken: String? = nil, method: String, traits: JSONValue, transientPayload: JSONValue? = nil, webauthnRegister: String? = nil, webauthnRegisterDisplayname: String? = nil) {
        self.csrfToken = csrfToken
        self.method = method
        self.traits = traits
        self.transientPayload = transientPayload
        self.webauthnRegister = webauthnRegister
        self.webauthnRegisterDisplayname = webauthnRegisterDisplayname
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case csrfToken = "csrf_token"
        case method
        case traits
        case transientPayload = "transient_payload"
        case webauthnRegister = "webauthn_register"
        case webauthnRegisterDisplayname = "webauthn_register_displayname"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(csrfToken, forKey: .csrfToken)
        try container.encode(method, forKey: .method)
        try container.encode(traits, forKey: .traits)
        try container.encodeIfPresent(transientPayload, forKey: .transientPayload)
        try container.encodeIfPresent(webauthnRegister, forKey: .webauthnRegister)
        try container.encodeIfPresent(webauthnRegisterDisplayname, forKey: .webauthnRegisterDisplayname)
    }
}

