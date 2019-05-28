struct SearchResponse: Codable {

    /** If the request was successful */
    let success: Bool?
    /** The next page to query to see more results, whether or not the next page actually exists. */
    let nextPageNum: Int?
    /** The current page number */
    let pageNum: Int?
    /** The search results */
    let media: [Media]?
    /** The number of milliseconds the request took */
    let tookMs: Int?
    /** The number of total results for query */
    let totalNum: Int?
}
