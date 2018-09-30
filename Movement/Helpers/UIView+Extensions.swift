//
//  UIView+Extensions.swift
//  Movement
//
//  Created by CMR on 30/09/2018.
//  Copyright © 2018 lyle. All rights reserved.
//

import UIKit

extension UIView {
    // Simplified and adapted from https://stackoverflow.com/questions/29618760/create-a-rectangle-with-just-two-rounded-corners-in-swift/35621736#35621736
    func round(corners: UIRectCorner, radius: CGFloat) {
        let path = UIBezierPath(roundedRect: bounds,
                                byRoundingCorners: corners,
                                cornerRadii: CGSize(width: radius, height: radius))
        let mask = CAShapeLayer()
        mask.path = path.cgPath
        layer.mask = mask
    }
}


extension UIView {
    func createSnapshotImage() -> UIImage? {
        UIGraphicsBeginImageContextWithOptions(frame.size, false, 0)
        // blur 같은 그래픽 효과를 스냅샷에 적용하는 경우 drawHierarchy(in:afterScreenUpdates:)를 사용한다.snapshotView(afterScreenUpdates:)보다 속도가 느리다.
        drawHierarchy(in: frame, afterScreenUpdates: true)
        
        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return image
    }
}

