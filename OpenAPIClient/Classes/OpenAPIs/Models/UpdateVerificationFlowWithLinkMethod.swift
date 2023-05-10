//
// UpdateVerificationFlowWithLinkMethod.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Update Verification Flow with Link Method */
public struct UpdateVerificationFlowWithLinkMethod: Codable, JSONEncodable, Hashable {

    /** Sending the anti-csrf token is only required for browser login flows. */
    public var csrfToken: String?
    /** Email to Verify  Needs to be set when initiating the flow. If the email is a registered verification email, a verification link will be sent. If the email is not known, a email with details on what happened will be sent instead.  format: email */
    public var email: String
    /** Method is the method that should be used for this verification flow  Allowed values are `link` and `code` */
    public var method: String

    public init(csrfToken: String? = nil, email: String, method: String) {
        self.csrfToken = csrfToken
        self.email = email
        self.method = method
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case csrfToken = "csrf_token"
        case email
        case method
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(csrfToken, forKey: .csrfToken)
        try container.encode(email, forKey: .email)
        try container.encode(method, forKey: .method)
    }
}

