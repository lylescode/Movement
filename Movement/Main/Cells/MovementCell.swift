//
//  MovementCell.swift
//  Movement
//
//  Created by CMR on 16/09/2018.
//  Copyright © 2018 lyle. All rights reserved.
//

import UIKit

class MovementCell: UICollectionViewCell {
    @IBOutlet var titleLabel: UILabel!
    public static var cellHeight: CGFloat {
        if UIDevice.current.userInterfaceIdiom == .phone {
            return 100
        } else {
            return 140
        }
    }
    
    public override var isHighlighted: Bool {
        didSet {
            if self.isHighlighted {
                UIView.animate(withDuration: 0.45, delay: 0, options: .curveEaseOut,
                               animations: {
                                self.alpha = 0.87
                                self.transform = CGAffineTransform(scaleX: 0.93, y: 0.93)
                })
            } else {
                UIView.animate(withDuration: 0.45, delay: 0, options: .curveEaseInOut,
                               animations: {
                                self.alpha = 1
                                self.transform = CGAffineTransform.identity
                })
            }
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    
    override func preferredLayoutAttributesFitting(_ layoutAttributes: UICollectionViewLayoutAttributes) -> UICollectionViewLayoutAttributes {
        guard UIDevice.current.userInterfaceIdiom == .phone else {
            return layoutAttributes
        }
        //setNeedsLayout()
        layoutIfNeeded()
        //print("\(#function) layoutAttributes.size : \(layoutAttributes.size)")
        let size = contentView.systemLayoutSizeFitting(layoutAttributes.size)
        var frame = layoutAttributes.frame
        frame.size.height = ceil(size.height)
        layoutAttributes.frame = frame
        return layoutAttributes
    }
}
