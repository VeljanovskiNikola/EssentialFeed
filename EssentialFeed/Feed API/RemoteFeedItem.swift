//
//  RemoteFeedItem.swift
//  EssentialFeed
//
//  Created by Nikola Veljanovski on 26.4.25.
//

import Foundation

internal struct RemoteFeedItem: Decodable {
    internal let id: UUID
    internal let description: String?
    internal let location: String?
    internal let image: URL
}
