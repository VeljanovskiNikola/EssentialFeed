//
//  UIRefreshControl+Helpers.swift
//  EssentialFeediOS
//
//  Created by Nikola Veljanovski on 20.7.25.
//

import UIKit

extension UIRefreshControl {
    func update(isRefreshing: Bool) {
        isRefreshing ? beginRefreshing() : endRefreshing()
    }
}
