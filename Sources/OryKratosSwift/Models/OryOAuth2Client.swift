//
// OryOAuth2Client.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

public struct OryOAuth2Client: Sendable, Codable, ParameterConvertible, Hashable {

    public var additionalProperties: [String: JSONValue]?
    /** OAuth 2.0 Access Token Strategy  AccessTokenStrategy is the strategy used to generate access tokens. Valid options are `jwt` and `opaque`. `jwt` is a bad idea, see https://www.ory.sh/docs/hydra/advanced#json-web-tokens Setting the stragegy here overrides the global setting in `strategies.access_token`. */
    public var accessTokenStrategy: String?
    public var allowedCorsOrigins: [String]?
    public var audience: [String]?
    /** Specify a time duration in milliseconds, seconds, minutes, hours. */
    public var authorizationCodeGrantAccessTokenLifespan: String?
    /** Specify a time duration in milliseconds, seconds, minutes, hours. */
    public var authorizationCodeGrantIdTokenLifespan: String?
    /** Specify a time duration in milliseconds, seconds, minutes, hours. */
    public var authorizationCodeGrantRefreshTokenLifespan: String?
    /** OpenID Connect Back-Channel Logout Session Required  Boolean value specifying whether the RP requires that a sid (session ID) Claim be included in the Logout Token to identify the RP session with the OP when the backchannel_logout_uri is used. If omitted, the default value is false. */
    public var backchannelLogoutSessionRequired: Bool?
    /** OpenID Connect Back-Channel Logout URI  RP URL that will cause the RP to log itself out when sent a Logout Token by the OP. */
    public var backchannelLogoutUri: String?
    /** Specify a time duration in milliseconds, seconds, minutes, hours. */
    public var clientCredentialsGrantAccessTokenLifespan: String?
    /** OAuth 2.0 Client ID  The ID is immutable. If no ID is provided, a UUID4 will be generated. */
    public var clientId: String?
    /** OAuth 2.0 Client Name  The human-readable name of the client to be presented to the end-user during authorization. */
    public var clientName: String?
    /** OAuth 2.0 Client Secret  The secret will be included in the create request as cleartext, and then never again. The secret is kept in hashed format and is not recoverable once lost. */
    public var clientSecret: String?
    /** OAuth 2.0 Client Secret Expires At  The field is currently not supported and its value is always 0. */
    public var clientSecretExpiresAt: Int64?
    /** OAuth 2.0 Client URI  ClientURI is a URL string of a web page providing information about the client. If present, the server SHOULD display this URL to the end-user in a clickable fashion. */
    public var clientUri: String?
    public var contacts: [String]?
    /** OAuth 2.0 Client Creation Date  CreatedAt returns the timestamp of the client's creation. */
    public var createdAt: Date?
    /** OpenID Connect Front-Channel Logout Session Required  Boolean value specifying whether the RP requires that iss (issuer) and sid (session ID) query parameters be included to identify the RP session with the OP when the frontchannel_logout_uri is used. If omitted, the default value is false. */
    public var frontchannelLogoutSessionRequired: Bool?
    /** OpenID Connect Front-Channel Logout URI  RP URL that will cause the RP to log itself out when rendered in an iframe by the OP. An iss (issuer) query parameter and a sid (session ID) query parameter MAY be included by the OP to enable the RP to validate the request and to determine which of the potentially multiple sessions is to be logged out; if either is included, both MUST be. */
    public var frontchannelLogoutUri: String?
    public var grantTypes: [String]?
    /** Specify a time duration in milliseconds, seconds, minutes, hours. */
    public var implicitGrantAccessTokenLifespan: String?
    /** Specify a time duration in milliseconds, seconds, minutes, hours. */
    public var implicitGrantIdTokenLifespan: String?
    /** OAuth 2.0 Client JSON Web Key Set  Client's JSON Web Key Set [JWK] document, passed by value. The semantics of the jwks parameter are the same as the jwks_uri parameter, other than that the JWK Set is passed by value, rather than by reference. This parameter is intended only to be used by Clients that, for some reason, are unable to use the jwks_uri parameter, for instance, by native applications that might not have a location to host the contents of the JWK Set. If a Client can use jwks_uri, it MUST NOT use jwks. One significant downside of jwks is that it does not enable key rotation (which jwks_uri does, as described in Section 10 of OpenID Connect Core 1.0 [OpenID.Core]). The jwks_uri and jwks parameters MUST NOT be used together. */
    public var jwks: JSONValue?
    /** OAuth 2.0 Client JSON Web Key Set URL  URL for the Client's JSON Web Key Set [JWK] document. If the Client signs requests to the Server, it contains the signing key(s) the Server uses to validate signatures from the Client. The JWK Set MAY also contain the Client's encryption keys(s), which are used by the Server to encrypt responses to the Client. When both signing and encryption keys are made available, a use (Key Use) parameter value is REQUIRED for all keys in the referenced JWK Set to indicate each key's intended usage. Although some algorithms allow the same key to be used for both signatures and encryption, doing so is NOT RECOMMENDED, as it is less secure. The JWK x5c parameter MAY be used to provide X.509 representations of keys provided. When used, the bare key values MUST still be present and MUST match those in the certificate. */
    public var jwksUri: String?
    /** Specify a time duration in milliseconds, seconds, minutes, hours. */
    public var jwtBearerGrantAccessTokenLifespan: String?
    /** OAuth 2.0 Client Logo URI  A URL string referencing the client's logo. */
    public var logoUri: String?
    public var metadata: JSONValue?
    /** OAuth 2.0 Client Owner  Owner is a string identifying the owner of the OAuth 2.0 Client. */
    public var owner: String?
    /** OAuth 2.0 Client Policy URI  PolicyURI is a URL string that points to a human-readable privacy policy document that describes how the deployment organization collects, uses, retains, and discloses personal data. */
    public var policyUri: String?
    public var postLogoutRedirectUris: [String]?
    public var redirectUris: [String]?
    /** Specify a time duration in milliseconds, seconds, minutes, hours. */
    public var refreshTokenGrantAccessTokenLifespan: String?
    /** Specify a time duration in milliseconds, seconds, minutes, hours. */
    public var refreshTokenGrantIdTokenLifespan: String?
    /** Specify a time duration in milliseconds, seconds, minutes, hours. */
    public var refreshTokenGrantRefreshTokenLifespan: String?
    /** OpenID Connect Dynamic Client Registration Access Token  RegistrationAccessToken can be used to update, get, or delete the OAuth2 Client. It is sent when creating a client using Dynamic Client Registration. */
    public var registrationAccessToken: String?
    /** OpenID Connect Dynamic Client Registration URL  RegistrationClientURI is the URL used to update, get, or delete the OAuth2 Client. */
    public var registrationClientUri: String?
    /** OpenID Connect Request Object Signing Algorithm  JWS [JWS] alg algorithm [JWA] that MUST be used for signing Request Objects sent to the OP. All Request Objects from this Client MUST be rejected, if not signed with this algorithm. */
    public var requestObjectSigningAlg: String?
    public var requestUris: [String]?
    public var responseTypes: [String]?
    /** OAuth 2.0 Client Scope  Scope is a string containing a space-separated list of scope values (as described in Section 3.3 of OAuth 2.0 [RFC6749]) that the client can use when requesting access tokens. */
    public var scope: String?
    /** OpenID Connect Sector Identifier URI  URL using the https scheme to be used in calculating Pseudonymous Identifiers by the OP. The URL references a file with a single JSON array of redirect_uri values. */
    public var sectorIdentifierUri: String?
    /** SkipConsent skips the consent screen for this client. This field can only be set from the admin API. */
    public var skipConsent: Bool?
    /** SkipLogoutConsent skips the logout consent screen for this client. This field can only be set from the admin API. */
    public var skipLogoutConsent: Bool?
    /** OpenID Connect Subject Type  The `subject_types_supported` Discovery parameter contains a list of the supported subject_type values for this server. Valid types include `pairwise` and `public`. */
    public var subjectType: String?
    /** OAuth 2.0 Token Endpoint Authentication Method  Requested Client Authentication method for the Token Endpoint. The options are:  `client_secret_basic`: (default) Send `client_id` and `client_secret` as `application/x-www-form-urlencoded` encoded in the HTTP Authorization header. `client_secret_post`: Send `client_id` and `client_secret` as `application/x-www-form-urlencoded` in the HTTP body. `private_key_jwt`: Use JSON Web Tokens to authenticate the client. `none`: Used for public clients (native apps, mobile apps) which can not have secrets. */
    public var tokenEndpointAuthMethod: String?
    /** OAuth 2.0 Token Endpoint Signing Algorithm  Requested Client Authentication signing algorithm for the Token Endpoint. */
    public var tokenEndpointAuthSigningAlg: String?
    /** OAuth 2.0 Client Terms of Service URI  A URL string pointing to a human-readable terms of service document for the client that describes a contractual relationship between the end-user and the client that the end-user accepts when authorizing the client. */
    public var tosUri: String?
    /** OAuth 2.0 Client Last Update Date  UpdatedAt returns the timestamp of the last update. */
    public var updatedAt: Date?
    /** OpenID Connect Request Userinfo Signed Response Algorithm  JWS alg algorithm [JWA] REQUIRED for signing UserInfo Responses. If this is specified, the response will be JWT [JWT] serialized, and signed using JWS. The default, if omitted, is for the UserInfo Response to return the Claims as a UTF-8 encoded JSON object using the application/json content-type. */
    public var userinfoSignedResponseAlg: String?

    public init(additionalProperties: [String: JSONValue]? = nil, accessTokenStrategy: String? = nil, allowedCorsOrigins: [String]? = nil, audience: [String]? = nil, authorizationCodeGrantAccessTokenLifespan: String? = nil, authorizationCodeGrantIdTokenLifespan: String? = nil, authorizationCodeGrantRefreshTokenLifespan: String? = nil, backchannelLogoutSessionRequired: Bool? = nil, backchannelLogoutUri: String? = nil, clientCredentialsGrantAccessTokenLifespan: String? = nil, clientId: String? = nil, clientName: String? = nil, clientSecret: String? = nil, clientSecretExpiresAt: Int64? = nil, clientUri: String? = nil, contacts: [String]? = nil, createdAt: Date? = nil, frontchannelLogoutSessionRequired: Bool? = nil, frontchannelLogoutUri: String? = nil, grantTypes: [String]? = nil, implicitGrantAccessTokenLifespan: String? = nil, implicitGrantIdTokenLifespan: String? = nil, jwks: JSONValue? = nil, jwksUri: String? = nil, jwtBearerGrantAccessTokenLifespan: String? = nil, logoUri: String? = nil, metadata: JSONValue? = nil, owner: String? = nil, policyUri: String? = nil, postLogoutRedirectUris: [String]? = nil, redirectUris: [String]? = nil, refreshTokenGrantAccessTokenLifespan: String? = nil, refreshTokenGrantIdTokenLifespan: String? = nil, refreshTokenGrantRefreshTokenLifespan: String? = nil, registrationAccessToken: String? = nil, registrationClientUri: String? = nil, requestObjectSigningAlg: String? = nil, requestUris: [String]? = nil, responseTypes: [String]? = nil, scope: String? = nil, sectorIdentifierUri: String? = nil, skipConsent: Bool? = nil, skipLogoutConsent: Bool? = nil, subjectType: String? = nil, tokenEndpointAuthMethod: String? = nil, tokenEndpointAuthSigningAlg: String? = nil, tosUri: String? = nil, updatedAt: Date? = nil, userinfoSignedResponseAlg: String? = nil) {
        self.additionalProperties = additionalProperties
        self.accessTokenStrategy = accessTokenStrategy
        self.allowedCorsOrigins = allowedCorsOrigins
        self.audience = audience
        self.authorizationCodeGrantAccessTokenLifespan = authorizationCodeGrantAccessTokenLifespan
        self.authorizationCodeGrantIdTokenLifespan = authorizationCodeGrantIdTokenLifespan
        self.authorizationCodeGrantRefreshTokenLifespan = authorizationCodeGrantRefreshTokenLifespan
        self.backchannelLogoutSessionRequired = backchannelLogoutSessionRequired
        self.backchannelLogoutUri = backchannelLogoutUri
        self.clientCredentialsGrantAccessTokenLifespan = clientCredentialsGrantAccessTokenLifespan
        self.clientId = clientId
        self.clientName = clientName
        self.clientSecret = clientSecret
        self.clientSecretExpiresAt = clientSecretExpiresAt
        self.clientUri = clientUri
        self.contacts = contacts
        self.createdAt = createdAt
        self.frontchannelLogoutSessionRequired = frontchannelLogoutSessionRequired
        self.frontchannelLogoutUri = frontchannelLogoutUri
        self.grantTypes = grantTypes
        self.implicitGrantAccessTokenLifespan = implicitGrantAccessTokenLifespan
        self.implicitGrantIdTokenLifespan = implicitGrantIdTokenLifespan
        self.jwks = jwks
        self.jwksUri = jwksUri
        self.jwtBearerGrantAccessTokenLifespan = jwtBearerGrantAccessTokenLifespan
        self.logoUri = logoUri
        self.metadata = metadata
        self.owner = owner
        self.policyUri = policyUri
        self.postLogoutRedirectUris = postLogoutRedirectUris
        self.redirectUris = redirectUris
        self.refreshTokenGrantAccessTokenLifespan = refreshTokenGrantAccessTokenLifespan
        self.refreshTokenGrantIdTokenLifespan = refreshTokenGrantIdTokenLifespan
        self.refreshTokenGrantRefreshTokenLifespan = refreshTokenGrantRefreshTokenLifespan
        self.registrationAccessToken = registrationAccessToken
        self.registrationClientUri = registrationClientUri
        self.requestObjectSigningAlg = requestObjectSigningAlg
        self.requestUris = requestUris
        self.responseTypes = responseTypes
        self.scope = scope
        self.sectorIdentifierUri = sectorIdentifierUri
        self.skipConsent = skipConsent
        self.skipLogoutConsent = skipLogoutConsent
        self.subjectType = subjectType
        self.tokenEndpointAuthMethod = tokenEndpointAuthMethod
        self.tokenEndpointAuthSigningAlg = tokenEndpointAuthSigningAlg
        self.tosUri = tosUri
        self.updatedAt = updatedAt
        self.userinfoSignedResponseAlg = userinfoSignedResponseAlg
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case additionalProperties = "AdditionalProperties"
        case accessTokenStrategy = "access_token_strategy"
        case allowedCorsOrigins = "allowed_cors_origins"
        case audience
        case authorizationCodeGrantAccessTokenLifespan = "authorization_code_grant_access_token_lifespan"
        case authorizationCodeGrantIdTokenLifespan = "authorization_code_grant_id_token_lifespan"
        case authorizationCodeGrantRefreshTokenLifespan = "authorization_code_grant_refresh_token_lifespan"
        case backchannelLogoutSessionRequired = "backchannel_logout_session_required"
        case backchannelLogoutUri = "backchannel_logout_uri"
        case clientCredentialsGrantAccessTokenLifespan = "client_credentials_grant_access_token_lifespan"
        case clientId = "client_id"
        case clientName = "client_name"
        case clientSecret = "client_secret"
        case clientSecretExpiresAt = "client_secret_expires_at"
        case clientUri = "client_uri"
        case contacts
        case createdAt = "created_at"
        case frontchannelLogoutSessionRequired = "frontchannel_logout_session_required"
        case frontchannelLogoutUri = "frontchannel_logout_uri"
        case grantTypes = "grant_types"
        case implicitGrantAccessTokenLifespan = "implicit_grant_access_token_lifespan"
        case implicitGrantIdTokenLifespan = "implicit_grant_id_token_lifespan"
        case jwks
        case jwksUri = "jwks_uri"
        case jwtBearerGrantAccessTokenLifespan = "jwt_bearer_grant_access_token_lifespan"
        case logoUri = "logo_uri"
        case metadata
        case owner
        case policyUri = "policy_uri"
        case postLogoutRedirectUris = "post_logout_redirect_uris"
        case redirectUris = "redirect_uris"
        case refreshTokenGrantAccessTokenLifespan = "refresh_token_grant_access_token_lifespan"
        case refreshTokenGrantIdTokenLifespan = "refresh_token_grant_id_token_lifespan"
        case refreshTokenGrantRefreshTokenLifespan = "refresh_token_grant_refresh_token_lifespan"
        case registrationAccessToken = "registration_access_token"
        case registrationClientUri = "registration_client_uri"
        case requestObjectSigningAlg = "request_object_signing_alg"
        case requestUris = "request_uris"
        case responseTypes = "response_types"
        case scope
        case sectorIdentifierUri = "sector_identifier_uri"
        case skipConsent = "skip_consent"
        case skipLogoutConsent = "skip_logout_consent"
        case subjectType = "subject_type"
        case tokenEndpointAuthMethod = "token_endpoint_auth_method"
        case tokenEndpointAuthSigningAlg = "token_endpoint_auth_signing_alg"
        case tosUri = "tos_uri"
        case updatedAt = "updated_at"
        case userinfoSignedResponseAlg = "userinfo_signed_response_alg"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(additionalProperties, forKey: .additionalProperties)
        try container.encodeIfPresent(accessTokenStrategy, forKey: .accessTokenStrategy)
        try container.encodeIfPresent(allowedCorsOrigins, forKey: .allowedCorsOrigins)
        try container.encodeIfPresent(audience, forKey: .audience)
        try container.encodeIfPresent(authorizationCodeGrantAccessTokenLifespan, forKey: .authorizationCodeGrantAccessTokenLifespan)
        try container.encodeIfPresent(authorizationCodeGrantIdTokenLifespan, forKey: .authorizationCodeGrantIdTokenLifespan)
        try container.encodeIfPresent(authorizationCodeGrantRefreshTokenLifespan, forKey: .authorizationCodeGrantRefreshTokenLifespan)
        try container.encodeIfPresent(backchannelLogoutSessionRequired, forKey: .backchannelLogoutSessionRequired)
        try container.encodeIfPresent(backchannelLogoutUri, forKey: .backchannelLogoutUri)
        try container.encodeIfPresent(clientCredentialsGrantAccessTokenLifespan, forKey: .clientCredentialsGrantAccessTokenLifespan)
        try container.encodeIfPresent(clientId, forKey: .clientId)
        try container.encodeIfPresent(clientName, forKey: .clientName)
        try container.encodeIfPresent(clientSecret, forKey: .clientSecret)
        try container.encodeIfPresent(clientSecretExpiresAt, forKey: .clientSecretExpiresAt)
        try container.encodeIfPresent(clientUri, forKey: .clientUri)
        try container.encodeIfPresent(contacts, forKey: .contacts)
        try container.encodeIfPresent(createdAt, forKey: .createdAt)
        try container.encodeIfPresent(frontchannelLogoutSessionRequired, forKey: .frontchannelLogoutSessionRequired)
        try container.encodeIfPresent(frontchannelLogoutUri, forKey: .frontchannelLogoutUri)
        try container.encodeIfPresent(grantTypes, forKey: .grantTypes)
        try container.encodeIfPresent(implicitGrantAccessTokenLifespan, forKey: .implicitGrantAccessTokenLifespan)
        try container.encodeIfPresent(implicitGrantIdTokenLifespan, forKey: .implicitGrantIdTokenLifespan)
        try container.encodeIfPresent(jwks, forKey: .jwks)
        try container.encodeIfPresent(jwksUri, forKey: .jwksUri)
        try container.encodeIfPresent(jwtBearerGrantAccessTokenLifespan, forKey: .jwtBearerGrantAccessTokenLifespan)
        try container.encodeIfPresent(logoUri, forKey: .logoUri)
        try container.encodeIfPresent(metadata, forKey: .metadata)
        try container.encodeIfPresent(owner, forKey: .owner)
        try container.encodeIfPresent(policyUri, forKey: .policyUri)
        try container.encodeIfPresent(postLogoutRedirectUris, forKey: .postLogoutRedirectUris)
        try container.encodeIfPresent(redirectUris, forKey: .redirectUris)
        try container.encodeIfPresent(refreshTokenGrantAccessTokenLifespan, forKey: .refreshTokenGrantAccessTokenLifespan)
        try container.encodeIfPresent(refreshTokenGrantIdTokenLifespan, forKey: .refreshTokenGrantIdTokenLifespan)
        try container.encodeIfPresent(refreshTokenGrantRefreshTokenLifespan, forKey: .refreshTokenGrantRefreshTokenLifespan)
        try container.encodeIfPresent(registrationAccessToken, forKey: .registrationAccessToken)
        try container.encodeIfPresent(registrationClientUri, forKey: .registrationClientUri)
        try container.encodeIfPresent(requestObjectSigningAlg, forKey: .requestObjectSigningAlg)
        try container.encodeIfPresent(requestUris, forKey: .requestUris)
        try container.encodeIfPresent(responseTypes, forKey: .responseTypes)
        try container.encodeIfPresent(scope, forKey: .scope)
        try container.encodeIfPresent(sectorIdentifierUri, forKey: .sectorIdentifierUri)
        try container.encodeIfPresent(skipConsent, forKey: .skipConsent)
        try container.encodeIfPresent(skipLogoutConsent, forKey: .skipLogoutConsent)
        try container.encodeIfPresent(subjectType, forKey: .subjectType)
        try container.encodeIfPresent(tokenEndpointAuthMethod, forKey: .tokenEndpointAuthMethod)
        try container.encodeIfPresent(tokenEndpointAuthSigningAlg, forKey: .tokenEndpointAuthSigningAlg)
        try container.encodeIfPresent(tosUri, forKey: .tosUri)
        try container.encodeIfPresent(updatedAt, forKey: .updatedAt)
        try container.encodeIfPresent(userinfoSignedResponseAlg, forKey: .userinfoSignedResponseAlg)
    }
}

