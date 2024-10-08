//
//  DimensionPin.swift
//  HeartRateMonitor
//
//  Created by Abdulmedzid Pehlic on 8. 10. 2024..
//

import UIKit.NSLayoutConstraint

public enum DimensionPin {
    case width
    case height
    case widthHeight

    var constraintAttributes: [NSLayoutConstraint.Attribute] {
        switch self {
        case .width:
            [ .width ]
        case .height:
            [ .height ]
        case .widthHeight:
            [ .width, .height ]
        }
    }
}
