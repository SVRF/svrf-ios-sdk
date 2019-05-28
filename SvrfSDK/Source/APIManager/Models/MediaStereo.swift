struct MediaStereo: Codable {

    /** 848px wide video with a 1.3MBps video rate, 96KBps audio rate.
     Only included if the Media is a &#x60;video&#x60;. */
    let _848: String?
    /** 1440px wide video with a 4.4MBps video rate, 128KBps audio rate.
     Only included if the Media is a &#x60;video&#x60;. */
    let _1440: String?
    /** 2160px wide video with a 10MBps video rate, 192KBps audio rate.
     Only included if the Media is a &#x60;video&#x60;. */
    let _2160: String?
    /** 4096px wide image. This image should be used on mobile devices,
     as larger images may cause some devices to crash. Only included if the Media is a &#x60;photo&#x60;. */
    let _4096: String?
    /** URL for an HLS master playlist containing streams in all of
     the above resolutions which are no wider than the original Media.
     Only included if the Media is a &#x60;video&#x60;. */
    let hls: String?
    /** The Media in its largest available size (the original size). */
    let max: String?
}
