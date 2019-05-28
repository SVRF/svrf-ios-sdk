struct MediaVideos: Codable {

    /** 848px wide video with a 1.3MBps video rate, 96KBps audio rate. */
    let px848: String?
    /** 1440px wide video with a 4.4MBps video rate, 128KBps audio rate. */
    let px1440: String?
    /** 2160px wide video with a 10MBps video rate, 192KBps audio rate. */
    let px2160: String?
    /** 4096px wide video with a 20MBps video rate, 256KBps audio rate. */
    let px4096: String?
    /** A 6-second, 1440px wide clip, with a 2MBps video rate, no audio. */
    let clip: String?
    /** URL for an HLS master playlist containing streams in all of the above
     resolutions which are no wider than the original Media.
     This should be used for streaming unless the platform does not support HLS. */
    let hls: String?
    /** Maximum resolution video (original source video),
     &#x60;width&#x60; pixels wide at unspecified video and audio rates. */
    let max: String?
}
