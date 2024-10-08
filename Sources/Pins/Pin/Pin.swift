//
//  Pin.swift
//  Pins
//
//  Created by Abdulmedzid Pehlic on 8. 10. 2024..
//

import UIKit.NSLayoutConstraint

public protocol Pin {
    var constraintAttributes: [NSLayoutConstraint.Attribute] { get }
}
