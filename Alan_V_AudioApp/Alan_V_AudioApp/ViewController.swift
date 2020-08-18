//
//  ViewController.swift
//  Alan_V_AudioApp
//
//  Created by Alan Villegas on 8/18/20.
//  Copyright © 2020 Alan Villegas. All rights reserved.
//

import UIKit
import AVFoundation
class ViewController: UIViewController {
    var audioPlayer = AVAudioPlayer()
    override func viewDidLoad() {
        super.viewDidLoad()
        let sound = Bundle.main.path(forResource: "spongebob music", ofType: "mp3")
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: sound!))
        } catch{
            print(error)
        }
    }

    @IBAction func pauseButton(_ sender: Any) {
        audioPlayer.pause()
    }
    
    @IBAction func playButton(_ sender: Any) {
        audioPlayer.play()
    }
    
    @IBAction func stopButton(_ sender: Any) {
        audioPlayer.stop()
    }
    
}

