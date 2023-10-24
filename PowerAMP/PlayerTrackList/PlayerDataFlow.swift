//
//  PlayerDataFlow.swift
//  PowerAMP
//
//  Created by Artur on 16.10.2023.
//

import Foundation

enum PlayerDataFlow {
    
    enum Tracks {
        struct Request {
            
        }
        
        struct Response {
            let result: Result<[Track], Error>
        }
        
//        struct ViewModel {
//            var state: PlayerTableView.State
//        }
    }
}
