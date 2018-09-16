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
    private let isPhone = UIDevice.current.userInterfaceIdiom == .phone
    internal static var cellHeight: CGFloat {
        if UIDevice.current.userInterfaceIdiom == .phone {
            return 100
        } else {
            return 140
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override func preferredLayoutAttributesFitting(_ layoutAttributes: UICollectionViewLayoutAttributes) -> UICollectionViewLayoutAttributes {
        guard isPhone == true else {
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
