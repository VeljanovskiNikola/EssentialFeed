//
//  RemoteFeedLoader.swift
//  EssentialFeed
//
//  Created by Nikola Veljanovski on 23.8.24.
//

import Foundation

public protocol HTTPClient {
    func get(from url: URL)
}

public final class RemoteFeedLoader {
    let url: URL
    let client: HTTPClient
    
    public init(url: URL, client: HTTPClient) {
        self.url = url
        self.client = client
    }
    
    public func load() {
        client.get(from: url)
    }
}