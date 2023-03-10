//
// UiNodeAttributes.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public enum UiNodeAttributes: Codable, JSONEncodable, Hashable {
    case typeUiNodeAnchorAttributes(UiNodeAnchorAttributes)
    case typeUiNodeImageAttributes(UiNodeImageAttributes)
    case typeUiNodeInputAttributes(UiNodeInputAttributes)
    case typeUiNodeScriptAttributes(UiNodeScriptAttributes)
    case typeUiNodeTextAttributes(UiNodeTextAttributes)

    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        switch self {
        case .typeUiNodeAnchorAttributes(let value):
            try container.encode(value)
        case .typeUiNodeImageAttributes(let value):
            try container.encode(value)
        case .typeUiNodeInputAttributes(let value):
            try container.encode(value)
        case .typeUiNodeScriptAttributes(let value):
            try container.encode(value)
        case .typeUiNodeTextAttributes(let value):
            try container.encode(value)
        }
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        if let value = try? container.decode(UiNodeAnchorAttributes.self) {
            self = .typeUiNodeAnchorAttributes(value)
        } else if let value = try? container.decode(UiNodeImageAttributes.self) {
            self = .typeUiNodeImageAttributes(value)
        } else if let value = try? container.decode(UiNodeInputAttributes.self) {
            self = .typeUiNodeInputAttributes(value)
        } else if let value = try? container.decode(UiNodeScriptAttributes.self) {
            self = .typeUiNodeScriptAttributes(value)
        } else if let value = try? container.decode(UiNodeTextAttributes.self) {
            self = .typeUiNodeTextAttributes(value)
        } else {
            throw DecodingError.typeMismatch(Self.Type.self, .init(codingPath: decoder.codingPath, debugDescription: "Unable to decode instance of UiNodeAttributes"))
        }
    }
}

