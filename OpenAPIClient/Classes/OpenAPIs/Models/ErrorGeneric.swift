//
// ErrorGeneric.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** The standard Ory JSON API error format. */
public struct ErrorGeneric: Codable, JSONEncodable, Hashable {

    public var error: GenericError

    public init(error: GenericError) {
        self.error = error
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case error
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(error, forKey: .error)
    }
}

