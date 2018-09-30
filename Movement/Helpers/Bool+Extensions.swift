//
//  Bool+Extensions.swift
//  Movement
//
//  Created by CMR on 30/09/2018.
//  Copyright © 2018 lyle. All rights reserved.
//

import Foundation

extension String {
    func boolValue() -> Bool? {
        switch lowercased() {
        case "true", "yes", "1":
            return true
        case "false", "no", "0":
            return false
        default:
            return nil
        }
    }
}

