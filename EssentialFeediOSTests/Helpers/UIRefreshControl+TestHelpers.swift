//
//  UIRefreshControl+TestHelpers.swift
//  EssentialFeed
//
//  Created by Nikola Veljanovski on 30.6.25.
//

import UIKit

public extension UIRefreshControl {
    func simulatePullToRefresh() {
        simulate(event: .valueChanged)
    }
}

public class FakeUIRefreshControl: UIRefreshControl {
    private var _isRefreshing = false
    
    public override var isRefreshing: Bool { _isRefreshing }
    
    public override func beginRefreshing() {
        _isRefreshing = true
    }
    
    public override func endRefreshing() {
        _isRefreshing = false
    }
}
