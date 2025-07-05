//
//  FeedRefreshViewController.swift
//  EssentialFeed
//
//  Created by Nikola Veljanovski on 30.6.25.
//

import UIKit

protocol FeedRefreshViewControllerDelegate {
    func didRequestFeedRefresh()
}

public final class FeedRefreshViewController: NSObject, FeedLoadingView {
    private let delegate: FeedRefreshViewControllerDelegate
    
    init(delegate: FeedRefreshViewControllerDelegate) {
        self.delegate = delegate
    }
    
    public lazy var view: UIRefreshControl = {
        return loadView()
    }()
    
    @objc func refresh() {
        delegate.didRequestFeedRefresh()
    }
    
    func display(_ viewModel: FeedLoadingViewModel) {
        if viewModel.isLoading {
            view.beginRefreshing()
        } else {
            view.endRefreshing()
        }
    }
    
    private func loadView() -> UIRefreshControl {
        let view = UIRefreshControl()
        view.addTarget(self, action: #selector(refresh), for: .valueChanged)
        return view
    }
}
