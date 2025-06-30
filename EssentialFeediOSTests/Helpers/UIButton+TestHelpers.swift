//
//  UIButton+TestHelpers.swift
//  EssentialFeed
//
//  Created by Nikola Veljanovski on 30.6.25.
//

import UIKit

public extension UIButton {
    func simulateTap() {
        simulate(event: .touchUpInside)
    }
}
