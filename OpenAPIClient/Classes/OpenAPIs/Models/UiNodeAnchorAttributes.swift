//
// UiNodeAnchorAttributes.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct UiNodeAnchorAttributes: Codable, JSONEncodable, Hashable {

    /** The link's href (destination) URL.  format: uri */
    public var href: String
    /** A unique identifier */
    public var id: String
    /** NodeType represents this node's types. It is a mirror of `node.type` and is primarily used to allow compatibility with OpenAPI 3.0.  In this struct it technically always is \"a\". */
    public var nodeType: String
    public var title: UiText

    public init(href: String, id: String, nodeType: String, title: UiText) {
        self.href = href
        self.id = id
        self.nodeType = nodeType
        self.title = title
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case href
        case id
        case nodeType = "node_type"
        case title
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(href, forKey: .href)
        try container.encode(id, forKey: .id)
        try container.encode(nodeType, forKey: .nodeType)
        try container.encode(title, forKey: .title)
    }
}

