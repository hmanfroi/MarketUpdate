//
//  InstrumentCell.swift
//  MarketUpdate
//
//  Created by Henrique Manfroi da Silveira on 21/04/2018.
//  Copyright © 2018 Henrique Manfroi da Silveira. All rights reserved.
//

import Foundation
import UIKit

// MARK: - Class

class InstrumentCell: UITableViewCell {
    
    // MARK: Variables
    
    @IBOutlet private weak var descriptionLabel: UILabel!
    @IBOutlet private weak var levelLabel: UILabel!
    
    // MARK: Methods
    
    func configure(instrument: InstrumentData){
        self.descriptionLabel.text = instrument.description
        self.levelLabel.text = "\(instrument.level)"
    }
}
