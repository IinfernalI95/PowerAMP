//
//  PlayerPresenter.swift
//  PowerAMP
//
//  Created by Artur on 09.09.2023.
//

import UIKit

protocol PlayerPresentationLogic: AnyObject {
    func presentUpload(response: PlayerDataFlow.Tracks.Response)
    func updateUI()
}

class PlayerPresenter: PlayerPresentationLogic {
    
    weak var tableView: PlayerTableView?
    
    func presentUpload(response: PlayerDataFlow.Tracks.Response) {
        
    }
    
    func updateUI() {
        
    }
    
    
    
    
    
    
//    weak var delegate: PlayerPresenterDelegate?
//    let player = Player.shared
//    
//    init() {
//        player.delegate = self
//        // Добавьте подписку на уведомление о смене состояния проигрывателя
//        NotificationCenter.default.addObserver(self, selector: #selector(handlePlaybackStateChange), name: .MPMusicPlayerControllerPlaybackStateDidChange, object: nil)
//        
//        // Начните отслеживать изменения состояния проигрывателя
//        player.musicPlayer.beginGeneratingPlaybackNotifications()
//    }
//    
//    @objc private func handlePlaybackStateChange() {
//        delegate?.updateUI()
//    }
//    
//    func mediaLibraryAuthorizationStatusDidChange(authorized: Bool) {
//        if authorized {
//            delegate?.updateUI()
//        } // обработать исключение
//        else {
//            print("доступа нет")
//        }
//    }
//    
//    func getTrackImage() -> UIImage {
//        return player.getTrackImage()
//    }
//    
//    func getTitles(index: Int) -> (title: String, artist: String) {
//        let titles = (title: player.allTracks[index].title ?? "Unknown Title", artist: player.allTracks[index].artist ?? "Unknown Artist")
//        return titles
//    }
//    
//    func getCurrentTitles() -> (title: String, artist: String) {
//        let titles = (
//            title: player.allTracks[player.currentTrackIndex].title ?? "Unknown Title",
//            artist: player.allTracks[player.currentTrackIndex].artist ?? "Unknown Artist"
//        )
//        return titles
//    }
//    
//    func playSelectTrack(at index: Int) {
//        player.playTrack(at: index)
//        
//        delegate?.updateUI()
//    }
//    
//    func playButtonTapped() {
//        self.player.play()
//    }
//    
//    func nextTrackButtonTapped() {
//        player.nextTrack()
//        delegate?.updateUI()
//    }
//    
//    func previousTrackButtonTapped() {
//        player.previousTrack()
//        delegate?.updateUI()
//    }
}
