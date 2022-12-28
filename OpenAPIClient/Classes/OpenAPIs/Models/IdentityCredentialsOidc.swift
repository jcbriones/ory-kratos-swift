//
// IdentityCredentialsOidc.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct IdentityCredentialsOidc: Codable, JSONEncodable, Hashable {

    public var providers: [IdentityCredentialsOidcProvider]?

    public init(providers: [IdentityCredentialsOidcProvider]? = nil) {
        self.providers = providers
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case providers
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(providers, forKey: .providers)
    }
}

