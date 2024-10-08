//
//  YAxisPin.swift
//  HeartRateMonitor
//
//  Created by Abdulmedzid Pehlic on 8. 10. 2024..
//

import UIKit.NSLayoutConstraint

public enum YAxisPin: Pin {
    case top
    case bottom
    case centerY

    public var constraintAttributes: [NSLayoutConstraint.Attribute] {
        switch self {
        case .top:
            [ .top ]
        case .bottom:
            [ .bottom ]
        case .centerY:
            [ .centerY ]
        }
    }
}
