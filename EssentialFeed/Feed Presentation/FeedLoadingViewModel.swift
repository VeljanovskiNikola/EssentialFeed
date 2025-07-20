//
//  FeedLoadingViewModel.swift
//  EssentialFeed
//
//  Created by Nikola Veljanovski on 20.7.25.
//

public struct FeedLoadingViewModel {
    public let isLoading: Bool
}

public protocol FeedLoadingView {
    func display(_ viewModel: FeedLoadingViewModel)
}

