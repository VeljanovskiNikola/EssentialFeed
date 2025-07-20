//
//  FeedViewModel.swift
//  EssentialFeed
//
//  Created by Nikola Veljanovski on 20.7.25.
//

public struct FeedViewModel {
    public let feed: [FeedImage]
}

public protocol FeedView {
    func display(_ viewModel: FeedViewModel)
}
