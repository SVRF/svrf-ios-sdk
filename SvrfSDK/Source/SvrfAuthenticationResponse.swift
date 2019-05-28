struct SvrfAuthenticationResponse: Codable {
    let success: Bool?
    let message: String?
    let token: String?
    let expiresIn: Int?
}
