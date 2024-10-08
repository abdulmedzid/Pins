//
//  XYAxisPin.swift
//  HeartRateMonitor
//
//  Created by Abdulmedzid Pehlic on 8. 10. 2024..
//

import UIKit.NSLayoutConstraint

public enum XYAxisPin: Pin {
    case topLeading
    case topTrailing
    case bottomLeading
    case bottomTrailing
    case center

    public var constraintAttributes: [NSLayoutConstraint.Attribute] {
        switch self {
        case .topLeading:
            [ .top, .leading ]
        case .topTrailing:
            [ .top, .trailing ]
        case .bottomLeading:
            [ .bottom, .leading ]
        case .bottomTrailing:
            [ .bottom, .trailing ]
        case .center:
            [ .centerX, .centerY ]
        }
    }
}
