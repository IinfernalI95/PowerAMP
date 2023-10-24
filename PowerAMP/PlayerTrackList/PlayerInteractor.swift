//
//  PlayerInteractor.swift
//  PowerAMP
//
//  Created by Artur on 17.10.2023.
//

import Foundation

protocol PlayerBusinesLogic {
    func getTracks()
}

final class PlayerInteractor: PlayerBusinesLogic {
    
    private let presenter: PlayerPresentationLogic
    
    init(presenter: PlayerPresentationLogic) {
        self.presenter = presenter
    }
    
    func getTracks() {
        
    }
}
