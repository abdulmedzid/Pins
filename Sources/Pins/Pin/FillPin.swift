//
//  FillPin.swift
//  HeartRateMonitor
//
//  Created by Abdulmedzid Pehlic on 8. 10. 2024..
//

import UIKit.NSLayoutConstraint

public enum FillPin: Pin {
    case fill

    public var constraintAttributes: [NSLayoutConstraint.Attribute] {
        [ .top, .leading, .bottom, .trailing ]
    }
}
