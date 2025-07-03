//
//  FeedViewModel.swift
//  EssentialFeed
//
//  Created by Nikola Veljanovski on 3.7.25.
//

import EssentialFeed

final class FeedViewModel {
    let feedLoader: FeedLoader
    
    init(feedLoader: FeedLoader) {
        self.feedLoader = feedLoader
    }
    var onChange: ((FeedViewModel) -> Void)?
    var onFeedLoad: (([FeedImage]) -> Void)?

    
   private(set) var isLoading: Bool = false {
       didSet { onChange?(self)}
    }
    
    func loadFeed() {
        isLoading = true
        feedLoader.load { [weak self] result in
            if let feed = try? result.get() {
                self?.onFeedLoad?(feed)
            }
            self?.isLoading = false
        }
    }
}
