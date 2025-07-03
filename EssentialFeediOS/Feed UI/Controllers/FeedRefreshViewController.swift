//
//  FeedRefreshViewController.swift
//  EssentialFeed
//
//  Created by Nikola Veljanovski on 30.6.25.
//

import UIKit

public final class FeedRefreshViewController: NSObject {
    
    private let viewModel: FeedViewModel
    
    init(viewModel: FeedViewModel) {
        self.viewModel = viewModel
    }
    
    public lazy var view: UIRefreshControl = {
        return bind(UIRefreshControl())
    }()
    
    @objc func refresh() {
        viewModel.loadFeed()
    }
    
    private func bind(_ view: UIRefreshControl) -> UIRefreshControl {
        viewModel.onLoadingStateChange = { [weak self] isLoading in
            if isLoading {
                self?.view.beginRefreshing()
            } else {
                self?.view.endRefreshing()
            }
    }
        view.addTarget(self, action: #selector(refresh), for: .valueChanged)
        return view
    }
}
