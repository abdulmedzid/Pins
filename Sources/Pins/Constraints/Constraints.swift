//
//  Constraints.swift
//  HeartRateMonitor
//
//  Created by Abdulmedzid Pehlic on 8. 10. 2024..
//

import UIKit.NSLayoutConstraint

public class Constraints {
    var top: NSLayoutConstraint?
    var bottom: NSLayoutConstraint?
    var leading: NSLayoutConstraint?
    var trailing: NSLayoutConstraint?
    var centerX: NSLayoutConstraint?
    var centerY: NSLayoutConstraint?
    var height: NSLayoutConstraint?
    var width: NSLayoutConstraint?

    var all: [NSLayoutConstraint?] {
        [
            top,
            bottom,
            leading,
            trailing,
            centerX,
            centerY,
            height,
            width
        ]
    }

    func addConstraint(_ constraint: NSLayoutConstraint) {
        switch constraint.firstAttribute {
        case .left, .leading:
            leading = constraint
        case .right, .trailing:
            trailing = constraint
        case .top:
            top = constraint
        case .bottom:
            bottom = constraint
        case .width:
            width = constraint
        case .height:
            height = constraint
        case .centerX:
            centerX = constraint
        case .centerY:
            centerY = constraint
        default:
            return
        }
    }

    @discardableResult
    func append(other constraints: Constraints) -> Constraints {
        if top == nil {
            top = constraints.top
        }
        if bottom == nil {
            bottom = constraints.bottom
        }
        if leading == nil {
            leading = constraints.leading
        }
        if trailing == nil {
            trailing = constraints.trailing
        }
        if centerX == nil {
            centerX = constraints.centerX
        }
        if centerY == nil {
            centerY = constraints.centerY
        }
        if height == nil {
            height = constraints.height
        }
        if width == nil {
            width = constraints.width
        }
        return self
    }

    func activate() {
        NSLayoutConstraint.activate(
            [
                top,
                bottom,
                leading,
                trailing,
                centerX,
                centerY,
                height,
                width
            ].compactMap { $0 }
        )
    }

    static func + (left: Constraints, right: Constraints) -> Constraints {
        left.append(other: right)
    }

    static func buildConstraints(@ConstraintsBuilder block: () -> Constraints, activate: Bool = true) -> Constraints {
        let constraints = block()
        if activate {
            constraints.activate()
        }
        return constraints
    }
}
