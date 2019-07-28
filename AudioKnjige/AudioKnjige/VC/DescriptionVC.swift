//
//  DescriptionVC.swift
//  AudioKnjige
//
//  Created by Nikola Lukovic on 7/27/19.
//  Copyright © 2019 NemanjaStojanovic. All rights reserved.
//

import UIKit

class DescriptionVC: UIViewController {

    @IBOutlet weak var descImage: UIImageView!
    @IBOutlet weak var descTitle: UILabel!
    @IBOutlet weak var descAuthor: UILabel!
    
    var sequeTitle = String()
    var sequeNameAuthor = String()
    var sequeImage  = UIImage()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        descTitle.text = sequeTitle
       descImage.image = sequeImage
        descAuthor.text = sequeNameAuthor
       
        // Do any additional setup after loading the view.
    }
    

   
}
