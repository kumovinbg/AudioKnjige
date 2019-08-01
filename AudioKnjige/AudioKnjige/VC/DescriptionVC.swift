//
//  DescriptionVC.swift
//  AudioKnjige
//
//  Created by Nikola Lukovic on 7/27/19.
//  Copyright © 2019 NemanjaStojanovic. All rights reserved.
//

import UIKit

import AudioPlayer
class DescriptionVC: UIViewController {

    @IBOutlet weak var descImage: UIImageView!
    @IBOutlet weak var descTitle: UILabel!
    @IBOutlet weak var descAuthor: UILabel!
    @IBOutlet weak var desc: UITextView!
    
    @IBOutlet weak var playButtonOutlet: UIButton!
    @IBOutlet weak var stopButtonOutlet: UIButton!
    
    
    var sequeTitle = String()
    var sequeNameAuthor = String()
    var sequeImage  = UIImage()
    var segueDescription = String()
    let audioPlayer = try? AudioPlayer(fileName: "audio.mp3")
    let imagePlayButton = UIImage(named: "play")
    let imageStopButton = UIImage(named: "stop")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        descTitle.text = sequeTitle
       descImage.image = sequeImage
        descAuthor.text = sequeNameAuthor
        desc.text = segueDescription
        
        playButtonOutlet.setImage(imagePlayButton, for: .normal)
        stopButtonOutlet.setImage(imageStopButton, for: .normal)
        // Do any additional setup after loading the view.
    }
    
    @IBAction func playButton(_ sender: Any) {
        
        audioPlayer?.play()
        
        
    }
    
    @IBAction func stopButton(_ sender: Any) {
        
        audioPlayer?.stop()
    }
    
}
