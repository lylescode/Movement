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
        didSet { refreshCorners(cornerRadius) }
    }
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)!
        renderButton()
    }
    override init(frame: CGRect) {
        super.init(frame: frame)
        renderButton()
    }
    init() {
        super.init(frame: CGRect.zero)
        renderButton()
    }
    private func renderButton() {
        refreshCorners(cornerRadius)
    }
    private func refreshCorners(_ value: CGFloat) {
        layer.cornerRadius = value
    }
}
