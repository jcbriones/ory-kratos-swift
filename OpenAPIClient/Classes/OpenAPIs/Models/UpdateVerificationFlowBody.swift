//
// UpdateVerificationFlowBody.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** nolint:deadcode,unused */
public enum UpdateVerificationFlowBody: Codable, JSONEncodable, Hashable {
    case typeUpdateVerificationFlowWithLinkMethod(UpdateVerificationFlowWithLinkMethod)

    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        switch self {
        case .typeUpdateVerificationFlowWithLinkMethod(let value):
            try container.encode(value)
        }
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        if let value = try? container.decode(UpdateVerificationFlowWithLinkMethod.self) {
            self = .typeUpdateVerificationFlowWithLinkMethod(value)
        } else {
            throw DecodingError.typeMismatch(Self.Type.self, .init(codingPath: decoder.codingPath, debugDescription: "Unable to decode instance of UpdateVerificationFlowBody"))
        }
    }
}

