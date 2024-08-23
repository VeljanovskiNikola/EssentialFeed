//
//  RemoteFeedLoaderTests.swift
//  EssentialFeed
//
//  Created by Nikola Veljanovski on 23.8.24.
//

import XCTest

class RemoteFeedLoader { }
class HTTPClient {
    var requestedURL: URL?
}

class RemoteFeedLoaderTests: XCTestCase {
    
    func test_init_doesNotRequestDataFromURL() {
        let client = HTTPClient()
        _ = RemoteFeedLoader()
        
        XCTAssertNil(client.requestedURL)
    }
}
