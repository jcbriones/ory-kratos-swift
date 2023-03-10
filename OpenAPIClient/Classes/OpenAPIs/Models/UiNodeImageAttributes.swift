//
// UiNodeImageAttributes.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct UiNodeImageAttributes: Codable, JSONEncodable, Hashable {

    /** Height of the image */
    public var height: Int64
    /** A unique identifier */
    public var id: String
    /** NodeType represents this node's types. It is a mirror of `node.type` and is primarily used to allow compatibility with OpenAPI 3.0.  In this struct it technically always is \"img\". */
    public var nodeType: String
    /** The image's source URL.  format: uri */
    public var src: String
    /** Width of the image */
    public var width: Int64

    public init(height: Int64, id: String, nodeType: String, src: String, width: Int64) {
        self.height = height
        self.id = id
        self.nodeType = nodeType
        self.src = src
        self.width = width
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case height
        case id
        case nodeType = "node_type"
        case src
        case width
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(height, forKey: .height)
        try container.encode(id, forKey: .id)
        try container.encode(nodeType, forKey: .nodeType)
        try container.encode(src, forKey: .src)
        try container.encode(width, forKey: .width)
    }
}

