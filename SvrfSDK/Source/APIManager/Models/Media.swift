public struct Media: Codable {
    /** Whether the Media is adult content */
    let adult: Bool?
    /** The Media&#39;s authors. This should be displayed when possible. */
    let authors: [String]?
    /** The canonical page this Media can be found at via SVRF. */
    let canonical: String?
    /** A description of the Media */
    let description: String?
    /** The duration of the Media in seconds. */
    let duration: Double?
    /** An &#x60;&lt;iframe&gt;&#x60; tag that embeds a player that plays the Media. */
    let embedHtml: String?
    /** A player that can be embedded using an &#x60;&lt;iframe&gt;&#x60; tag to play the Media. */
    let embedUrl: String?
    let files: MediaFiles?
    /** The height, in pixels, of the Media&#39;s source */
    let height: Double?
    /** The unique ID of this Media */
    let id: String?
    let metadata: MediaMetadata?
    /** The site that this Media came from. This should be displayed when possible. */
    let site: String?
    /** The title of the Media, suitable for displaying */
    let title: String?
    let type: MediaType?
    /** The original page this Media is located at. */
    let url: String?
    /** The width, in pixels, of the Media&#39;s source */
    let width: Double?
}
