//
//  ShadowView.swift
//  Movement
//
//  Created by CMR on 16/09/2018.
//  Copyright © 2018 lyle. All rights reserved.
//

import UIKit

@IBDesignable class ShadowView: UIView {
    @IBInspectable public var cornerRadius: CGFloat = 10 {
        didSet { self.layer.cornerRadius = cornerRadius }
    }
    @IBInspectable public var shadowColor: UIColor = .black {
        didSet { self.layer.shadowColor = shadowColor.cgColor }
    }
    @IBInspectable public var shadowOpacity: Float = 0.1 {
        didSet { self.layer.shadowOpacity = shadowOpacity }
    }
    @IBInspectable public var shadowRadius: CGFloat = 5 {
        didSet { self.layer.shadowRadius = shadowRadius }
    }
    @IBInspectable public var shadowOffset: CGSize = CGSize(width: 0, height: 3) {
        didSet { self.layer.shadowOffset = shadowOffset }
    }
    
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)!
    }
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    init() {
        super.init(frame: CGRect.zero)
    }
    
    override func layoutSubviews() {
        self.layer.cornerRadius = cornerRadius
        let shadowPath = UIBezierPath(rect: self.bounds)
        self.layer.masksToBounds = false
        self.layer.shadowColor = shadowColor.cgColor
        self.layer.shadowOpacity = shadowOpacity
        self.layer.shadowRadius = shadowRadius
        self.layer.shadowOffset = shadowOffset
        self.layer.shadowPath = shadowPath.cgPath
    }
}
