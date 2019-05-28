/** The type of the Media. This should influence the media controls displayed to the user. */
public enum MediaType: String, Codable {
    case photo = "photo"
    case video = "video"
    case _3d = "3d"
}
