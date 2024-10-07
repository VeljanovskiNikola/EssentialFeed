//
//  FeedItem.swift
//  EssentialFeed
//
//  Created by Nikola Veljanovski on 15.8.24.
//

import Foundation

public struct FeedItem: Equatable {
    let id: UUID
    let description: String?
    let location: String?
    let imageURL: URL
}
