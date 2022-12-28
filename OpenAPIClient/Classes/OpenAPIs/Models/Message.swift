//
// Message.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct Message: Codable, JSONEncodable, Hashable {

    public enum TemplateType: String, Codable, CaseIterable {
        case recoveryInvalid = "recovery_invalid"
        case recoveryValid = "recovery_valid"
        case recoveryCodeInvalid = "recovery_code_invalid"
        case recoveryCodeValid = "recovery_code_valid"
        case verificationInvalid = "verification_invalid"
        case verificationValid = "verification_valid"
        case verificationCodeInvalid = "verification_code_invalid"
        case verificationCodeValid = "verification_code_valid"
        case otp = "otp"
        case stub = "stub"
    }
    public var body: String?
    /** CreatedAt is a helper struct field for gobuffalo.pop. */
    public var createdAt: Date?
    public var id: String?
    public var recipient: String?
    public var sendCount: Int64?
    public var status: CourierMessageStatus?
    public var subject: String?
    public var templateType: TemplateType?
    public var type: CourierMessageType?
    /** UpdatedAt is a helper struct field for gobuffalo.pop. */
    public var updatedAt: Date?

    public init(body: String? = nil, createdAt: Date? = nil, id: String? = nil, recipient: String? = nil, sendCount: Int64? = nil, status: CourierMessageStatus? = nil, subject: String? = nil, templateType: TemplateType? = nil, type: CourierMessageType? = nil, updatedAt: Date? = nil) {
        self.body = body
        self.createdAt = createdAt
        self.id = id
        self.recipient = recipient
        self.sendCount = sendCount
        self.status = status
        self.subject = subject
        self.templateType = templateType
        self.type = type
        self.updatedAt = updatedAt
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case body
        case createdAt = "created_at"
        case id
        case recipient
        case sendCount = "send_count"
        case status
        case subject
        case templateType = "template_type"
        case type
        case updatedAt = "updated_at"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(body, forKey: .body)
        try container.encodeIfPresent(createdAt, forKey: .createdAt)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(recipient, forKey: .recipient)
        try container.encodeIfPresent(sendCount, forKey: .sendCount)
        try container.encodeIfPresent(status, forKey: .status)
        try container.encodeIfPresent(subject, forKey: .subject)
        try container.encodeIfPresent(templateType, forKey: .templateType)
        try container.encodeIfPresent(type, forKey: .type)
        try container.encodeIfPresent(updatedAt, forKey: .updatedAt)
    }
}
