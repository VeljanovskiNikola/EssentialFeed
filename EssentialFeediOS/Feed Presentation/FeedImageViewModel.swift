//
//  FeedImageViewModel.swift
//  EssentialFeediOS
//
//  Created by Nikola Veljanovski on 3.7.25.
//

import Foundation
import EssentialFeed

struct FeedImageViewModel<Image> {
    let description: String?
    let location: String?
    let image: Image?
    let isLoading: Bool
    let shouldRetry: Bool
    
    var hasLocation: Bool {
        location != nil
    }
}
