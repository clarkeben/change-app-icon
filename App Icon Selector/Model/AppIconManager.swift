//
//  AppIconManager.swift
//  App Icon Selector
//
//  Created by Ben Clarke on 21/12/2020.
//

import Foundation
import UIKit

struct AppIconManager {

    static func setIcon(_ appIcon: String, completion: ((Bool) -> Void)? = nil) {
      UIApplication.shared.setAlternateIconName(appIcon) { error in
        if let error = error {
            print("Error setting alternate icon \(appIcon): \(error.localizedDescription)")
        }
        completion?(error != nil)
      }
    }
    
    
    static func doesNotSupport() {
        UIApplication.shared.setAlternateIconName(nil)
    }
    
    
    
}
