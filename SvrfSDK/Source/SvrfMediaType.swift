//
//  SvrfMediaType.swift
//  SvrfSDK
//
//  Created by Andrei Evstratenko on 28/05/2019.
//  Copyright © 2019 Svrf, Inc. All rights reserved.
//

/** The type of the Media. This should influence the media controls displayed to the user. */
public enum SvrfMediaType: String, Codable {
    case photo = "photo"
    case video = "video"
    case _3d = "3d"
}
