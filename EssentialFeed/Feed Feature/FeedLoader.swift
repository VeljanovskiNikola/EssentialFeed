//
//  FeedLoader.swift
//  EssentialFeed
//
//  Created by Nikola Veljanovski on 15.8.24.
//

import Foundation

enum LoadFeedResult {
    case success([FeedItem])
    case error(Error)
}


protocol FeedLoader {
    func load(completion: @escaping (LoadFeedResult) -> Void)
}
