//
//  Player.swift
//  PowerAMP
//
//  Created by Artur on 09.09.2023.
//

import MediaPlayer

//protocol PlayerDelegate: AnyObject {
//    func mediaLibraryAuthorizationStatusDidChange(authorized: Bool)
//}

class MusicPlayer {
    static let shared = MusicPlayer()
    
    //weak var delegate: PlayerDelegate?
    
    var currentTrack: MPMediaItem?
    
    
    func playTrack(at index: Int) {
//        guard index >= 0, index < allTracks.count else { return }
//        let track = allTracks[index]
//        musicPlayer.setQueue(with: MPMediaItemCollection(items: [track]))
//        currentTrack = track
//        currentTrackIndex = index
//        musicPlayer.play()
    }
//    
    func play() {
//        if musicPlayer.playbackState == .playing {
//            musicPlayer.pause()
//        } else {
//            musicPlayer.play()
//        }
    }
    
    func nextTrack() {
//        currentTrackIndex += 1
//        if currentTrackIndex >= allTracks.count {
//            currentTrackIndex = 0
//        }
//        playTrack(at: currentTrackIndex)
    }
    
    func previousTrack() {
//        currentTrackIndex -= 1
//        if currentTrackIndex < 0 {
//            currentTrackIndex = allTracks.count - 1
//        }
//        playTrack(at: currentTrackIndex)
    }
        
    var currentPlaybackTime: TimeInterval {
        return musicPlayer.currentPlaybackTime
    }
    
    var currentPlaybackDuration: TimeInterval {
        return currentTrack?.playbackDuration ?? 0
    }
}
