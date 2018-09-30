//
//  Storyboard.swift
//  Movement
//
//  Created by CMR on 16/09/2018.
//  Copyright © 2018 lyle. All rights reserved.
//

import UIKit

public enum Storyboard: String {
    case Main
    case PullUp
    case Ingredients
    
    public func instantiate<VC: UIViewController>(_ viewController: VC.Type,
                                                  inBundle bundle: Bundle = .framework) -> VC {
        
        guard let vc = UIStoryboard(name: self.rawValue, bundle: Bundle(identifier: bundle.bundleIdentifier!))
            .instantiateViewController(withIdentifier: VC.storyboardIdentifier) as? VC else {
                fatalError("Couldn't instantiate \(VC.storyboardIdentifier) from \(self.rawValue)")
        }
        return vc
    }
}
extension UIViewController {
    public static var storyboardIdentifier: String {
        return self.description().components(separatedBy: ".").dropFirst().joined(separator: ".")
    }
}
