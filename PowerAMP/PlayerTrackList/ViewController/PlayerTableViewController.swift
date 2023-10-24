//
//  PlayerTableView.swift
//  PowerAMP
//
//  Created by Artur on 07.09.2023.
//

import UIKit
import MediaPlayer

class PlayerTableViewController: UITableViewController  {
        
    var items: MediaItems?
    let interactor: PlayerBusinesLogic
    
    public var state: State {
        didSet {
            updateState()
        }
    }
    
    init(interactor: PlayerBusinesLogic, state: PlayerTableViewController.State) {
        self.interactor = interactor
        self.state = state
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        tableView.register(PlayerTableViewCell.self, forCellReuseIdentifier: "PlayerCell")
        state = { state }()
    }
    
    func uploadTracks() {
        let authorizationStatus = MPMediaLibrary.authorizationStatus()
        if authorizationStatus == .authorized {
            // Вы уже имеете разрешение, продолжайте выполнение операций.
            self.interactor.requestTracks(request: .init(isAuthorized: true))
        } else if authorizationStatus == .notDetermined {
            // Выполните запрос разрешения
            MPMediaLibrary.requestAuthorization { [weak self] (status) in
                if status == .authorized {
                    self?.interactor.requestTracks(request: .init(isAuthorized: true))
                } else {
                    // Обработка случая, когда разрешение не предоставлено
                }
            }
        } else {
            // Обработка случая, когда разрешение отклонено или ограничено
        }
    }

    
    private func setupUI() {
//        let backButton = UIBarButtonItem(title: "Back", style: .plain, target: nil, action: nil)
//        backButton.setTitleTextAttributes([.foregroundColor: UIColor.dynamicTintColor], for: .normal) // Здесь укажите желаемый цвет
//        navigationItem.backBarButtonItem = backButton
        navigationController?.navigationBar.tintColor = UIColor.dynamicTintColor // смена цвета для всех елементов , нужно будет изменить
        //view.backgroundColor = #colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1)
    }
    
    
}

