//
//  XAxisPin.swift
//  HeartRateMonitor
//
//  Created by Abdulmedzid Pehlic on 8. 10. 2024..
//

import UIKit.NSLayoutConstraint

public enum XAxisPin: Pin {
    case leading
    case trailing
    case centerX

    public var constraintAttributes: [NSLayoutConstraint.Attribute] {
        switch self {
        case .leading:
            [ .leading ]
        case .trailing:
            [ .trailing ]
        case .centerX:
            [ .centerX ]
        }
    }
}
