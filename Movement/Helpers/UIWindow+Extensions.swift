//
//  UIWindow+Extensions.swift
//  Movement
//
//  Created by CMR on 30/09/2018.
//  Copyright © 2018 lyle. All rights reserved.
//

import Foundation
import UIKit

extension UIWindow {
    
    class var key: UIWindow {
        guard let keyWindow = UIApplication.shared.keyWindow else { fatalError("Fatal Error: now window is set to keyWindow") }
        return keyWindow
    }
    
    class var keySafeAreaInsets: UIEdgeInsets {
        guard #available(iOS 11.0, *) else { return .zero }
        return UIWindow.key.safeAreaInsets
    }
}

