//
// UiNode.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Nodes are represented as HTML elements or their native UI equivalents. For example, a node can be an &#x60;&lt;img&gt;&#x60; tag, or an &#x60;&lt;input element&gt;&#x60; but also &#x60;some plain text&#x60;. */
public struct UiNode: Codable, JSONEncodable, Hashable {

    public enum Group: String, Codable, CaseIterable {
        case _default = "default"
        case password = "password"
        case oidc = "oidc"
        case profile = "profile"
        case link = "link"
        case code = "code"
        case totp = "totp"
        case lookupSecret = "lookup_secret"
        case webauthn = "webauthn"
    }
    public enum ModelType: String, Codable, CaseIterable {
        case text = "text"
        case input = "input"
        case img = "img"
        case a = "a"
        case script = "script"
    }
    public var attributes: UiNodeAttributes
    /** Group specifies which group (e.g. password authenticator) this node belongs to. default DefaultGroup password PasswordGroup oidc OpenIDConnectGroup profile ProfileGroup link LinkGroup code CodeGroup totp TOTPGroup lookup_secret LookupGroup webauthn WebAuthnGroup */
    public var group: Group
    public var messages: [UiText]
    public var meta: UiNodeMeta
    /** The node's type text Text input Input img Image a Anchor script Script */
    public var type: ModelType

    public init(attributes: UiNodeAttributes, group: Group, messages: [UiText], meta: UiNodeMeta, type: ModelType) {
        self.attributes = attributes
        self.group = group
        self.messages = messages
        self.meta = meta
        self.type = type
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case attributes
        case group
        case messages
        case meta
        case type
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(attributes, forKey: .attributes)
        try container.encode(group, forKey: .group)
        try container.encode(messages, forKey: .messages)
        try container.encode(meta, forKey: .meta)
        try container.encode(type, forKey: .type)
    }
}

