//
//  Extensions.swift
//  MarketUpdate
//
//  Created by Henrique Manfroi da Silveira on 21/04/2018.
//  Copyright © 2018 Henrique Manfroi da Silveira. All rights reserved.
//

import UIKit

// MARK: UIApplication

extension UIApplication {
    
    // From: https://stackoverflow.com/questions/42540644/how-to-get-current-viewcontroller-through-any-background-process-in-ios-swift
    
    class func topViewController(_ base: UIViewController? = UIApplication.shared.keyWindow?.rootViewController) -> UIViewController? {
        
        if let nav = base as? UINavigationController {
            let top = topViewController(nav.visibleViewController)
            return top
        }
        
        if let tab = base as? UITabBarController {
            if let selected = tab.selectedViewController {
                let top = topViewController(selected)
                return top
            }
        }
        
        if let presented = base?.presentedViewController {
            let top = topViewController(presented)
            return top
        }
        
        return base
    }
}
