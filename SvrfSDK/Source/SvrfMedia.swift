public struct SvrfMedia: Codable {
    /** Whether the Media is adult content */
    public let adult: Bool?
    /** The Media&#39;s authors. This should be displayed when possible. */
    public let authors: [String]?
    /** The canonical page this Media can be found at via SVRF. */
    public let canonical: String?
    /** A description of the Media */
    public let description: String?
    /** The duration of the Media in seconds. */
    public let duration: Double?
    /** An &#x60;&lt;iframe&gt;&#x60; tag that embeds a player that plays the Media. */
    public let embedHtml: String?
    /** A player that can be embedded using an &#x60;&lt;iframe&gt;&#x60; tag to play the Media. */
    public let embedUrl: String?
    public let files: SvrfMediaFiles?
    /** The height, in pixels, of the Media&#39;s source */
    public let height: Double?
    /** The unique ID of this Media */
    public let id: String?
    public let metadata: SvrfMediaMetadata?
    /** The site that this Media came from. This should be displayed when possible. */
    public let site: String?
    /** The title of the Media, suitable for displaying */
    public let title: String?
    public let type: SvrfMediaType?
    /** The original page this Media is located at. */
    public let url: String?
    /** The width, in pixels, of the Media&#39;s source */
    public let width: Double?
}
