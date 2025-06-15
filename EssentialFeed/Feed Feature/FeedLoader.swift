//
//  FeedLoader.swift
//  EssentialFeed
//
//  Created by Nikola Veljanovski on 15.8.24.
//

import Foundation

public typealias LoadFeedResult = Result<[FeedImage], Error>

public protocol FeedLoader {
    func load(completion: @escaping (LoadFeedResult) -> Void)
}
