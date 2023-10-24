//
//  ViewController.swift
//  PowerAMP
//
//  Created by Artur on 02.09.2023.
//

import UIKit
import MediaPlayer

class PlayerDetailView: UIViewController {
    
    lazy var titleImage: UIImageView = {
        let image = UIImage(named: "playerImage")
        let view = UIImageView(image: image)
        view.layer.masksToBounds = true
        view.layer.cornerRadius = 10
        //view.contentMode = .scaleAspectFit
        
        return view
    }()
    
    lazy var labelTrackName: UILabel = {
        let label = UILabel()
        label.text = "Track Name"
        
        return label
    }()
    
    lazy var labelTrackCompositor: UILabel = {
        let label = UILabel()
        label.text = "Compositor Name"
        
        return label
    }()
    
    lazy var currentTrackTime: UILabel = {
        let label = UILabel()
        label.text = "00:00:00"
        
        return label
    }()
    
    lazy var fullTrackTime: UILabel = {
        let label = UILabel()
        label.text = "00:00:00"
        label.textAlignment = .right
        
        return label
    }()
    
    lazy var currentTimeSlider: UISlider = {
        let slider = UISlider()
        //slider.addTarget(self, action: #selector(updateCurrentTimeSlider), for: .allEvents)
        slider.value = 0
        
        return slider
    }()
    
//    lazy var playButton: UIButton = {
//        let button = UIButton(type: .custom)
//        let image = UIImage(named: "playerPause")
//        button.setImage(image?.withRenderingMode(.alwaysTemplate), for: .normal)
//        button.tintColor = UIColor.dynamicTintColor
//        button.addTarget(self, action: #selector(playButtonTapped), for: .touchUpInside)
//        
//        return button
//    }()
//    
//    lazy var backwardButton: UIButton = {
//        let button = UIButton()
//        let image = UIImage(named: "playerBackward")
//        button.setImage(image?.withRenderingMode(.alwaysTemplate), for: .normal)
//        button.tintColor = UIColor.dynamicTintColor
//        button.addTarget(self, action: #selector(previousTrackButtonTapped), for: .touchUpInside)
//        
//        return button
//    }()
//    
//    lazy var forwardButton: UIButton = {
//        let button = UIButton()
//        let image = UIImage(named: "playerForward")
//        button.setImage(image?.withRenderingMode(.alwaysTemplate), for: .normal)
//        button.tintColor = UIColor.dynamicTintColor
//        button.addTarget(self, action: #selector(nextTrackButtonTapped), for: .touchUpInside)
//        
//        return button
//    }()
    
    lazy var volumeMinImage: UIImageView = {
        let image = UIImage(systemName: "speaker.wave.1")
        let view = UIImageView(image: image)
        view.tintColor = UIColor.dynamicTintColor
        
        return view
    }()
    
    lazy var volumeMaxImage: UIImageView = {
        let image = UIImage(systemName: "speaker.wave.3")
        let view = UIImageView(image: image)
        view.tintColor = UIColor.dynamicTintColor
        
        return view
    }()
    
    lazy var volumeView: MPVolumeView = {
        let volume = MPVolumeView()
        volume.tintColor = UIColor.dynamicTintColor
        
        return volume
    }()
    
    var presenter: PlayerPresenter?
    
    init(presenter: PlayerPresenter) {
        self.presenter = presenter
        
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
//        presenter?.delegate = self
//        
//        initSubview()
//        updateUI()
    }
    
//    @objc func playButtonTapped() {
//        presenter?.playButtonTapped()
//    }
//    
//    @objc func previousTrackButtonTapped() {
//        presenter?.previousTrackButtonTapped()
//    }
//    
//    @objc func nextTrackButtonTapped() {
//        presenter?.nextTrackButtonTapped()
//    }
//    
//    func updateUI() {
//        let titles = presenter?.getCurrentTitles()
//        updateTrackInfo(title: titles?.title, artist: titles?.artist)
//        
//        updateTitleTrackImage()
//        updatePlayButtonImage()
//    }
//
//    func updateTitleTrackImage() {
//        let image = presenter?.getTrackImage()
//        titleImage.image = image
//    }
//    
//    func updatePlayButtonImage() {
//        guard let presenter = presenter else { return }
//        
//        let image = UIImage(named: presenter.player.isPlaying ? "playerPause" : "playerPlay")
//        playButton.setImage(image?.withRenderingMode(.alwaysTemplate), for: .normal)
//    }
//    
//    func updateTrackInfo(title: String?, artist: String?) {
//        labelTrackName.text = title ?? "Track Name"
//        labelTrackCompositor.text = artist ?? "Compositor Name"
//    }
//    
//    private func initSubview() {
//        view.backgroundColor = UIColor.dynamicColor
//        // Создайте новую кнопку "Back" с желаемым цветом текста
//                
//        [titleImage, labelTrackName, labelTrackCompositor, currentTrackTime, fullTrackTime, currentTimeSlider, playButton, backwardButton, forwardButton, volumeMinImage, volumeMaxImage, volumeView].forEach {
//            view.addSubview($0)
//            $0.translatesAutoresizingMaskIntoConstraints = false
//        }
//        
////        [playButton, backwardButton, forwardButton].forEach {
//////            $0.imageView?.contentMode = .scaleAspectFit
//////            $0.contentHorizontalAlignment = .center
//////            $0.contentVerticalAlignment = .center
////        }
//        
//        makeConstraints()
//    }
    
//    private func makeConstraints() {
//        NSLayoutConstraint.activate([
//            titleImage.topAnchor.constraint(equalTo: view.topAnchor, constant: 100),
//            titleImage.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 16),
//            titleImage.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -16),
//            titleImage.heightAnchor.constraint(equalTo: titleImage.widthAnchor),
//            
//            labelTrackName.topAnchor.constraint(equalTo: titleImage.bottomAnchor, constant: 20),
//            labelTrackName.leftAnchor.constraint(equalTo: titleImage.leftAnchor),
//            labelTrackName.rightAnchor.constraint(equalTo: titleImage.rightAnchor),
//            labelTrackName.heightAnchor.constraint(equalToConstant: 20),
//            
//            labelTrackCompositor.topAnchor.constraint(equalTo: labelTrackName.bottomAnchor, constant: 10),
//            labelTrackCompositor.leftAnchor.constraint(equalTo: titleImage.leftAnchor),
//            labelTrackCompositor.rightAnchor.constraint(equalTo: titleImage.rightAnchor),
//            labelTrackCompositor.heightAnchor.constraint(equalToConstant: 20),
//            
//            currentTrackTime.topAnchor.constraint(equalTo: labelTrackCompositor.bottomAnchor, constant: 26),
//            currentTrackTime.leftAnchor.constraint(equalTo: titleImage.leftAnchor),
//            currentTrackTime.widthAnchor.constraint(equalToConstant: 80),
//            currentTrackTime.heightAnchor.constraint(equalToConstant: 20),
//            
//            fullTrackTime.topAnchor.constraint(equalTo: currentTrackTime.topAnchor),
//            fullTrackTime.rightAnchor.constraint(equalTo: titleImage.rightAnchor),
//            fullTrackTime.widthAnchor.constraint(equalTo: currentTrackTime.widthAnchor),
//            fullTrackTime.heightAnchor.constraint(equalToConstant: 20),
//            
//            currentTimeSlider.topAnchor.constraint(equalTo: currentTrackTime.bottomAnchor, constant: 10),
//            currentTimeSlider.leftAnchor.constraint(equalTo: titleImage.leftAnchor),
//            currentTimeSlider.rightAnchor.constraint(equalTo: titleImage.rightAnchor),
//            currentTimeSlider.heightAnchor.constraint(equalToConstant: 30),
//            
//            playButton.topAnchor.constraint(equalTo: currentTimeSlider.bottomAnchor, constant: 20),
//            playButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
//            playButton.heightAnchor.constraint(equalToConstant: 60),
//            playButton.widthAnchor.constraint(equalToConstant: 60),
//            
//            backwardButton.centerYAnchor.constraint(equalTo: playButton.centerYAnchor),
//            backwardButton.rightAnchor.constraint(equalTo: playButton.leftAnchor, constant: -40),
//            backwardButton.heightAnchor.constraint(equalTo: playButton.heightAnchor),
//            backwardButton.widthAnchor.constraint(equalTo: playButton.widthAnchor),
//            
//            forwardButton.centerYAnchor.constraint(equalTo: playButton.centerYAnchor),
//            forwardButton.leftAnchor.constraint(equalTo: playButton.rightAnchor, constant: 40),
//            forwardButton.heightAnchor.constraint(equalTo: playButton.heightAnchor),
//            forwardButton.widthAnchor.constraint(equalTo: playButton.widthAnchor),
//            
//            volumeMinImage.leftAnchor.constraint(equalTo: currentTimeSlider.leftAnchor),
//            volumeMinImage.topAnchor.constraint(equalTo: playButton.bottomAnchor, constant: 60),
//            volumeMinImage.heightAnchor.constraint(equalToConstant: 24),
//            volumeMinImage.widthAnchor.constraint(equalToConstant: 24),
//            
//            volumeMaxImage.rightAnchor.constraint(equalTo: currentTimeSlider.rightAnchor),
//            volumeMaxImage.centerYAnchor.constraint(equalTo: volumeMinImage.centerYAnchor),
//            volumeMaxImage.heightAnchor.constraint(equalTo: volumeMinImage.heightAnchor),
//            volumeMaxImage.widthAnchor.constraint(equalTo: volumeMinImage.widthAnchor),
//            
//            volumeView.topAnchor.constraint(equalTo: volumeMinImage.topAnchor, constant: 3),
//            volumeView.leftAnchor.constraint(equalTo: volumeMinImage.rightAnchor, constant: 10),
//            volumeView.rightAnchor.constraint(equalTo: volumeMaxImage.leftAnchor, constant: -10),
//            volumeView.heightAnchor.constraint(equalTo: volumeMinImage.heightAnchor, multiplier: 1.4)
//        ])
//    }
}
