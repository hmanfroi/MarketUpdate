//
//  InstrumentData.swift
//  MarketUpdate
//
//  Created by Henrique Manfroi da Silveira on 21/04/2018.
//  Copyright © 2018 Henrique Manfroi da Silveira. All rights reserved.
//

import Foundation

// MARK: - Struct Key

fileprivate struct jsonKey {
 
    static let level = "level"
    
    static let description = "description"
}

// MARK: - InstrumentData

struct InstrumentData {
    
    var level: Double = 0.0
    
    var description: String = ""
    
    // MARK: Init
    
    init(fromDict: [String: Any]) {
        self.level = fromDict[jsonKey.level] as? Double ?? 0.0
        self.description = fromDict[jsonKey.description] as? String ?? ""
    }
}
