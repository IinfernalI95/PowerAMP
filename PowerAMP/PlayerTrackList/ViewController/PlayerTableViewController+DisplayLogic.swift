//
//  PlayerTableView+DisplayLogic.swift
//  PowerAMP
//
//  Created by Artur on 17.10.2023.
//

import Foundation

extension PlayerTableViewController: TableViewDisplayLogic {
    func displayTracks(viewModel: PlayerDataFlow.Tracks.ViewModel) {
        self.state = viewModel.state
    }
}
