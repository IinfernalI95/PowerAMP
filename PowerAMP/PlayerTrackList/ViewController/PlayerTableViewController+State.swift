//
//  PlayerTableView+State.swift
//  PowerAMP
//
//  Created by Artur on 17.10.2023.
//
import Foundation


extension PlayerTableViewController {
    enum State {
        case initial
        case uploading(MediaItems)
        case error(String)
    }
    
    func updateState() {
        switch state {
        case .initial:
            print("INIT Table")
            self.uploadTracks()
        case .uploading(let items):
            self.items = items
            DispatchQueue.main.async {
                self.tableView.reloadData()
            }
        case .error(let error):
            print(error)
        }
    }
}
