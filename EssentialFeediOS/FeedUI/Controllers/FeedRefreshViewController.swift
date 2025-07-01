//
//  FeedRefreshViewController.swift
//  EssentialFeed
//
//  Created by Nikola Veljanovski on 30.6.25.
//

import UIKit
import EssentialFeed


public final class FeedRefreshViewController: NSObject {
    let feedLoader: FeedLoader
    var onRefresh: (([FeedImage]) -> Void)?
    
    public init(feedLoader: FeedLoader) {
        self.feedLoader = feedLoader
    }
    
    public lazy var view: UIRefreshControl = {
        let view = UIRefreshControl()
        view.addTarget(self, action: #selector(refresh), for: .valueChanged)
        return view
    }()
    
    @objc func refresh() {
        view.beginRefreshing()
        feedLoader.load { [weak self] result in
            if let feed = try? result.get() {
                self?.onRefresh?(feed)
            }
            self?.view.endRefreshing()
        }
    }
}
