//
//  ModelLektire.swift
//  AudioKnjige
//
//  Created by Nemanja MacBookPro on 10/10/19.
//  Copyright © 2019 NemanjaStojanovic. All rights reserved.
//

import Foundation

struct Lektire {
    var osnovnaSkola : Details
    var srednjaSkola : Details
 
}

struct Details {
    var title: String
    var author: String
    var image: String
    var description: String
    var genre: String
}

