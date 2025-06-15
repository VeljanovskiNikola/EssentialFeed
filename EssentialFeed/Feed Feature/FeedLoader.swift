//
//  FeedLoader.swift
//  EssentialFeed
//
//  Created by Nikola Veljanovski on 15.8.24.
//

import Foundation

public protocol FeedLoader {
    typealias Result = Swift.Result<[FeedImage], Error>

    func load(completion: @escaping (Result) -> Void)
}
