//
//  PlayerBuilder.swift
//  PowerAMP
//
//  Created by Artur on 16.10.2023.
//

import UIKit

//public protocol ModuleBuilder {
//    func build() -> UIViewController
//    func buildWithNav() -> UINavigationController
//}

final class PlayerBuilder {
    
    private let state: PlayerTableView.State
    
    init(state: PlayerTableView.State) {
        self.state = state
    }
    
    func build() -> UINavigationController {
        let presenter = PlayerPresenter()
        let interactor = PlayerInteractor(presenter: presenter)
        let tableView = PlayerTableView(interactor: interactor, state: state)
        presenter.tableView = tableView
        
        let rootVC = UINavigationController(rootViewController: tableView)
        
        return rootVC
    }
    
}
