//
//  MainTabBarController.swift
//  MarketUpdate
//
//  Created by Henrique Manfroi da Silveira on 22/04/2018.
//  Copyright © 2018 Henrique Manfroi da Silveira. All rights reserved.
//

import UIKit

// MARK: - Class

class MainTabBarController: UITabBarController {

    // Mark: Methods
    override func viewDidLoad() {
        super.viewDidLoad()

         InstrumentService.shared.load()
        // Do any additional setup after loading the view.
    }

}
