//
//  SvrfAuthenticationResponse.swift
//  SvrfSDK
//
//  Created by Andrei Evstratenko on 28/05/2019.
//  Copyright © 2019 Svrf, Inc. All rights reserved.
//

struct SvrfAuthenticationResponse: Codable {
    let success: Bool?
    let message: String?
    let token: String?
    let expiresIn: Int?
}
