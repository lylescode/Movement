//
//  RoundedView.swift
//  Movement
//
//  Created by CMR on 16/09/2018.
//  Copyright © 2018 lyle. All rights reserved.
//

import UIKit

@IBDesignable class RoundedView: UIView {
    @IBInspectable public var cornerRadius: CGFloat = 10 {
        didSet { refreshCorners(cornerRadius) }
    }
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)!
        renderView()
    }
    override init(frame: CGRect) {
        super.init(frame: frame)
        renderView()
    }
    init() {
        super.init(frame: CGRect.zero)
        renderView()
    }
    private func renderView() {
        refreshCorners(cornerRadius)
    }
    private func refreshCorners(_ value: CGFloat) {
        layer.cornerRadius = value
        self.layer.masksToBounds = true
    }
}
