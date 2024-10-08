//
//  UIView+PinExtension.swift
//  HeartRateMonitor
//
//  Created by Abdulmedzid Pehlic on 8. 10. 2024..
//

import UIKit

public extension UIView {
    @discardableResult
    func pin(
        _ pinSelf: XAxisPin,
        to view: AnyObject,
        _ pinTo: XAxisPin,
        padding: UIEdgeInsets = .zero,
        multiplier: CGFloat = 1.0,
        activate: Bool = true
    ) -> Constraints {
        pinAny(pinSelf, to: view, pinTo, padding: padding, multiplier: multiplier, activate: activate)
    }


    @discardableResult
    func pin(
        _ pinSelf: YAxisPin,
        to view: AnyObject,
        _ pinTo: YAxisPin,
        padding: UIEdgeInsets = .zero,
        multiplier: CGFloat = 1.0,
        activate: Bool = true
    ) -> Constraints {
        pinAny(pinSelf, to: view, pinTo, padding: padding, multiplier: multiplier, activate: activate)
    }

    @discardableResult
    func pin(
        _ pinSelf: XYAxisPin,
        to view: AnyObject,
        _ pinTo: XYAxisPin,
        padding: UIEdgeInsets = .zero,
        multiplier: CGFloat = 1.0,
        activate: Bool = true
    ) -> Constraints {
        pinAny(pinSelf, to: view, pinTo, padding: padding, multiplier: multiplier, activate: activate)
    }

    @discardableResult
    func pin(
        _ pinSelf: FillPin,
        to view: AnyObject,
        _ pinTo: FillPin,
        padding: UIEdgeInsets = .zero,
        multiplier: CGFloat = 1.0,
        activate: Bool = true
    ) -> Constraints {
        pinAny(pinSelf, to: view, pinTo, padding: padding, multiplier: multiplier, activate: activate)
    }

    @discardableResult
    fileprivate func pinAny<T: Pin>(
        _ pinSelf: T,
        to view: AnyObject,
        _ pinTo: T,
        padding: UIEdgeInsets = .zero,
        multiplier: CGFloat = 1.0,
        activate: Bool = true
    ) -> Constraints {
        translatesAutoresizingMaskIntoConstraints = false

        let pinnedViewAttributes = pinSelf.constraintAttributes
        let pinnedToViewAttributes = pinTo.constraintAttributes

        let constraints = Constraints()
        for (firstAttribute, secondAttribute) in zip(pinnedViewAttributes, pinnedToViewAttributes) {
            let constraint = NSLayoutConstraint(
                item: self,
                attribute: firstAttribute,
                relatedBy: .equal,
                toItem: view,
                attribute: secondAttribute,
                multiplier: multiplier,
                constant: firstAttribute.getConstant(from: padding)
            )
            constraints.addConstraint(constraint)
        }
        if activate {
            constraints.activate()
        }

        return constraints
    }

    @discardableResult
    func pin(_ pin: DimensionPin, constant: CGFloat, multiplier: CGFloat = 1.0, activate: Bool = true) -> Constraints {
        translatesAutoresizingMaskIntoConstraints = false

        let pinnedViewAttributes = pin.constraintAttributes

        let constraints = Constraints()
        for firstAttribute in pinnedViewAttributes {
            let constraint = NSLayoutConstraint(
                item: self,
                attribute: firstAttribute,
                relatedBy: .equal,
                toItem: nil,
                attribute: .notAnAttribute,
                multiplier: multiplier,
                constant: constant
            )
            constraints.addConstraint(constraint)
        }
        if activate {
            constraints.activate()
        }

        return constraints
    }

    @discardableResult
    func fill(view: UIView, edges: UIEdgeInsets = .zero, activate: Bool = true) -> Constraints {
        pin(.fill, to: view, .fill, padding: edges, activate: activate)
    }
}
