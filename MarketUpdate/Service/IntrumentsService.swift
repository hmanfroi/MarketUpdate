//
//  IntrumentsService.swift
//  MarketUpdate
//
//  Created by Henrique Manfroi da Silveira on 21/04/2018.
//  Copyright © 2018 Henrique Manfroi da Silveira. All rights reserved.
//

import Foundation
import UIKit
import GameplayKit //Generate Random Values

// MARK: - Class

class InstrumentService {
    
    // MARK: Singleton
    
    static let shared = InstrumentService()
    
    private init() {}
    
    // MARK: Constants
    let prefix = "Bitcoin "
    let levelKey = "level"
    let descriptionKey = "description"
    
    // MARK: Variables
    
    var instruments: [InstrumentData]?
    private var inLoad = false
    
    // MARK: Methods
    
    func load(){
        self.inLoad = true
        
        // I don't make the request to load data
        // The most usual is request using Alamofire
        
        // For this sample I generate Random Values
        var instrumentTemp: [InstrumentData] = []
        for i in 0 ..< GKRandomSource.sharedRandom().nextInt(upperBound: 100) {
            
            instrumentTemp.append( randomInstrument(numberID: i))
        }
        
        self.instruments = instrumentTemp
        self.callUpdateVC()
        
        self.inLoad = false
    }
    
    // Update, it is possible use RxSwift to make more elegant than this code
    func callUpdateVC(){
        if let updaterVC = UIApplication.topViewController() as? UpdateVCProtocol {
            updaterVC.updateVC()
        }
    }
    
    // Random Values
    func randomInstrument(numberID: Int) -> InstrumentData {
        let level = GKRandomSource.sharedRandom().nextInt(upperBound: 1000)
        let description = "\(prefix)\(numberID)"
        let dict = [levelKey: Double(level), descriptionKey : description] as [String : Any]
        
        let instument = InstrumentData.init(fromDict: dict)
        return instument
    }
}
