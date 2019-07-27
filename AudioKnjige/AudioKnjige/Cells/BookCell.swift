//
//  BookCell.swift
//  AudioKnjige
//
//  Created by Nikola Lukovic on 7/27/19.
//  Copyright © 2019 NemanjaStojanovic. All rights reserved.
//

import UIKit

class BookCell: UITableViewCell {
    @IBOutlet weak var bookImage: UIImageView!
    @IBOutlet weak var bookTitle: UILabel!
    @IBOutlet weak var autorsName: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
