//
//  UpdaterViewController.swift
//  MarketUpdate
//
//  Created by Henrique Manfroi da Silveira on 21/04/2018.
//  Copyright © 2018 Henrique Manfroi da Silveira. All rights reserved.
//

import UIKit

// MARK: - Protocol

protocol UpdateVCProtocol {
    
    func updateVC()
}

// MARK: - Class

class UpdaterViewController: UIViewController, UpdateVCProtocol {

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        updateVC()
    }
    
    // MARK: UpdateVCProtocol
    
    func updateVC() {

    }
}
