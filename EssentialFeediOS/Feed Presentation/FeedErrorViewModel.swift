//
//  FeedErrorViewModel.swift
//  EssentialFeed
//
//  Created by Nikola Veljanovski on 20.7.25.
//


struct FeedErrorViewModel {
    let message: String?
    
    static var noError: FeedErrorViewModel {
        return FeedErrorViewModel(message: nil)
    }
    
    static func error(message: String) -> FeedErrorViewModel {
        return FeedErrorViewModel(message: message)
    }
}

