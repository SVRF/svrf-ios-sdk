struct SvrfTrendingResponse: Codable {

    /** If the request was successful */
    let success: Bool?
    /** The next page to query to see more results, whether or not the next page actually exists. */
    let nextPageNum: Int?
    /** The current page number */
    let pageNum: Int?
    /** Trending media */
    let media: [SvrfMedia]?
}
