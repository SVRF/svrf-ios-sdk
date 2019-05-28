struct MediaImages: Codable {

    /** 136px wide image. This image may be used for thumbnailing. */
    let px136: String?
    /** 540px wide image. This image may be used for thumbnailing. */
    let px540: String?
    /** 720px wide image. This image may be used for thumbnailing. */
    let px720: String?
    /** 1080px wide image. This image should be used for previews or
     other uses requiring clear resolution at low bandwidth. */
    let px1080: String?
    /** 4096px wide image. This image should be used on mobile devices,
     as larger images may cause some devices to crash. */
    let px4096: String?
    /** The image at a reasonably large resolution that can be used for a better desktop experience. */
    let px8192: String?
    /** 1080px wide watermarked image. This image should be used for sharing on social media. */
    let px1080Watermarked: String?
    /** A 16:9 image. This image may be used for thumbnailing. */
    let px720x405: String?
    /** A 4:3 image. This image may be used for thumbnailing. */
    let px720x540: String?
    /** A 1:1 image. This image may be used for thumbnailing. */
    let px720x720: String?
    /** The image in its largest available size (the original size). This image should be used in
     third-party applications for the best experience, except on mobile devices (see &#x60;4096&#x60;). */
    let max: String?
}
