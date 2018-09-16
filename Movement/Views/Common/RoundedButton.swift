//
//  RoundedButton.swift
//  Movement
//
//  Created by CMR on 16/09/2018.
//  Copyright © 2018 lyle. All rights reserved.
//

import UIKit

@IBDesignable class RoundedButton: UIButton {
    @IBInspectable public var cornerRadius: CGFloat = 10 {
        didSet { self.layer.cornerRadius = cornerRadius }
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
        self.layer.masksToBounds = true
    }
}
