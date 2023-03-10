//
// IdentityWithCredentialsPasswordConfig.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Create Identity and Import Password Credentials Configuration */
public struct IdentityWithCredentialsPasswordConfig: Codable, JSONEncodable, Hashable {

    /** The hashed password in [PHC format]( https://www.ory.sh/docs/kratos/concepts/credentials/username-email-password#hashed-password-format) */
    public var hashedPassword: String?
    /** The password in plain text if no hash is available. */
    public var password: String?

    public init(hashedPassword: String? = nil, password: String? = nil) {
        self.hashedPassword = hashedPassword
        self.password = password
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case hashedPassword = "hashed_password"
        case password
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(hashedPassword, forKey: .hashedPassword)
        try container.encodeIfPresent(password, forKey: .password)
    }
}

