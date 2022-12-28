//
// RecoveryCodeForIdentity.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Used when an administrator creates a recovery code for an identity. */
public struct RecoveryCodeForIdentity: Codable, JSONEncodable, Hashable {

    /** Expires At is the timestamp of when the recovery flow expires  The timestamp when the recovery link expires. */
    public var expiresAt: Date?
    /** RecoveryCode is the code that can be used to recover the account */
    public var recoveryCode: String
    /** RecoveryLink with flow  This link opens the recovery UI with an empty `code` field. */
    public var recoveryLink: String

    public init(expiresAt: Date? = nil, recoveryCode: String, recoveryLink: String) {
        self.expiresAt = expiresAt
        self.recoveryCode = recoveryCode
        self.recoveryLink = recoveryLink
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case expiresAt = "expires_at"
        case recoveryCode = "recovery_code"
        case recoveryLink = "recovery_link"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(expiresAt, forKey: .expiresAt)
        try container.encode(recoveryCode, forKey: .recoveryCode)
        try container.encode(recoveryLink, forKey: .recoveryLink)
    }
}
