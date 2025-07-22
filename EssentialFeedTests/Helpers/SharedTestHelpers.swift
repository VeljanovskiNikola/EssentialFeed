//
//  SharedTestHelpers.swift
//  EssentialFeedTests
//
//  Created by Nikola Veljanovski on 29.4.25.
//

import Foundation

func anyNSError() -> NSError {
    NSError(domain: "any error", code: 0)
}

func anyURL() -> URL {
    URL(string: "http://any-url.com")!
}

func anyData() -> Data {
    return Data("any data".utf8)
}
