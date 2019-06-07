//
//  SvrfMediaImages.swift
//  SvrfSDK
//
//  Created by Andrei Evstratenko on 28/05/2019.
//  Copyright © 2019 Svrf, Inc. All rights reserved.
//

public struct SvrfMediaImages: Codable {

    /** 136px wide image. This image may be used for thumbnailing. */
    public let _136: String?
    /** 540px wide image. This image may be used for thumbnailing. */
    public let _540: String?
    /** 720px wide image. This image may be used for thumbnailing. */
    public let _720: String?
    /** 1080px wide image. This image should be used for previews or
     other uses requiring clear resolution at low bandwidth. */
    public let _1080: String?
    /** 4096px wide image. This image should be used on mobile devices,
     as larger images may cause some devices to crash. */
    public let _4096: String?
    /** The image at a reasonably large resolution that can be used for a better desktop experience. */
    public let _8192: String?
    /** 1080px wide watermarked image. This image should be used for sharing on social media. */
    public let _1080Watermarked: String?
    /** A 16:9 image. This image may be used for thumbnailing. */
    public let _720x405: String?
    /** A 4:3 image. This image may be used for thumbnailing. */
    public let _720x540: String?
    /** A 1:1 image. This image may be used for thumbnailing. */
    public let _720x720: String?
    /** The image in its largest available size (the original size). This image should be used in
     third-party applications for the best experience, except on mobile devices (see _4096). */
    public let max: String?

    private enum CodingKeys: String, CodingKey {
        case _136 = "136"
        case _540 = "540"
        case _720 = "720"
        case _1080 = "1080"
        case _4096 = "4096"
        case _8192 = "8192"
        case _1080Watermarked = "1080Watermarked"
        case _720x405 = "720x405"
        case _720x540 = "720x540"
        case _720x720 = "720x720"
        case max
    }
}
