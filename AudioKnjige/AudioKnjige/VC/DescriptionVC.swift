//
//  DescriptionVC.swift
//  AudioKnjige
//
//  Created by Nikola Lukovic on 7/27/19.
//  Copyright © 2019 NemanjaStojanovic. All rights reserved.
//

import UIKit
import AudioPlayer
import AVKit



class DescriptionVC: UIViewController {
    


    @IBOutlet weak var descImage: UIImageView!
    @IBOutlet weak var descTitle: UILabel!
    @IBOutlet weak var descAuthor: UILabel!
    @IBOutlet weak var desc: UITextView!
    
    @IBOutlet weak var playButtonOutlet: UIButton!
  
   
    var sequeTitle = String()
    var sequeNameAuthor = String()
    var sequeImage  = UIImage()
    var segueDescription = String()
 
    
    let imagePlayButton = UIImage(named: "play")
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        descTitle.text = sequeTitle
        descImage.image = sequeImage
        descAuthor.text = sequeNameAuthor
        desc.text = segueDescription
        
        
        
        
        
        playButtonOutlet.setImage(imagePlayButton, for: .normal)
       
        // Do any additional setup after loading the view.
    }
    
    @IBAction func playButton(_ sender: Any) {
       
        //let urlPath = Bundle.main.path(forResource: "audio", ofType: "mp3")
        
        var player: AVPlayer!
        
    
       // var njihov = "https://drive.google.com/file/d/11MPEaowO6ZjL0RWFSSXjQwCI6buzOb87/view?usp=sharing"
        
        let url = URL(string: "https://drive.google.com/uc?export=open&id=11MPEaowO6ZjL0RWFSSXjQwCI6buzOb87")
        

        let playerItem = AVPlayerItem(url: url!)
        player = AVPlayer(playerItem: playerItem)

        let playerViewController = AVPlayerViewController()
        playerViewController.player = player

        self.present(playerViewController, animated: true) {
             playerViewController.player?.play()
        }
        
      
        
    }

    
}
