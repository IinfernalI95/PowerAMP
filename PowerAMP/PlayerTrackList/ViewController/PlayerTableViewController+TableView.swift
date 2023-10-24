//
//  PlayerTableView+Extension.swift
//  PowerAMP
//
//  Created by Artur on 17.10.2023.
//

import UIKit

extension PlayerTableViewController {
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items?.allTracks.count ?? 0
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "PlayerCell", for: indexPath) as! PlayerTableViewCell
        let track = items?.allTracks[indexPath.row]

        cell.titleLabel.text = track?.title ?? "Uncnown Artist"
        cell.artistLabel.text = track?.artist ?? "Uncnown Artist"
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //guard let presenter = presenter, let playerDetailView = playerDetailView else { return }
        //presenter.playSelectTrack(at: indexPath.row)
        //let titles = presenter.getTitles(index: indexPath.row)
        //playerDetailView.updateTrackInfo(title: titles.title, artist: titles.artist)
        
        //navigationController?.pushViewController(playerDetailView, animated: true)
    }
}
