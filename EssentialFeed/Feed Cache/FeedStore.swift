//
//  FeedStore.swift
//  EssentialFeed
//
//  Created by Nikola Veljanovski on 30.1.25.
//

import Foundation

public protocol FeedStore {
    typealias DeletionCompletion = (Error?) -> Void
    typealias InsertionCompletion = (Error?) -> Void

    func deleteCachedFeed(completion: @escaping DeletionCompletion)
    func insert(_ items: [LocalFeedImage],
                timestamp: Date,
                completion: @escaping InsertionCompletion)
}
