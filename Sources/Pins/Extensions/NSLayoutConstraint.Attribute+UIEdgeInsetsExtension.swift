//
//  NSLayoutConstraint.Attribute+UIEdgeInsets.swift
//  HeartRateMonitor
//
//  Created by Abdulmedzid Pehlic on 8. 10. 2024..
//

import UIKit.NSLayoutConstraint

extension NSLayoutConstraint.Attribute {
    func getConstant(from edgeInsets: UIEdgeInsets) -> CGFloat {
        switch self {
        case .left, .leading, .centerX:
            edgeInsets.left
        case .right, .trailing:
            -edgeInsets.right
        case .top, .centerY:
            edgeInsets.top
        case .bottom:
            -edgeInsets.bottom
        default:
            0
        }
    }
}
