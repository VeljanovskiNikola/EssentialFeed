//
//  FeedImageDataStore.swift
//  EssentialFeed
//
//  Created by Nikola Veljanovski on 22.7.25.
//

import Foundation

public protocol FeedImageDataStore {
	typealias Result = Swift.Result<Data?, Error>

	func retrieve(dataForURL url: URL, completion: @escaping (Result) -> Void)
}
