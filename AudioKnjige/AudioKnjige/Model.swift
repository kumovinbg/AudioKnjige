//
//  Data.swift
//  AudioKnjige
//
//  Created by Nikola Lukovic on 7/27/19.
//  Copyright © 2019 NemanjaStojanovic. All rights reserved.
//

import UIKit

class AudioBooks {
    var title : String
    var autorsName : String
    var coverImage : String
    
    init(title: String, autorsName: String, coverImage: String) {
        self.title = title
        self.autorsName = autorsName
        self.coverImage = coverImage
    }
    
}
let booksArray = [AudioBooks(title: "The Da Vinci Code", autorsName: "Dan Brown", coverImage: "da-vinci-code.jpg"),
                  AudioBooks(title: "Harry Potter and the Chamber of Secrets", autorsName: "J. K. Rowling", coverImage: "chamber.jpg"),
                  AudioBooks(title: "Digital Fortress", autorsName: "Dan Brown", coverImage: "digital-fortress.jpg"),
                  AudioBooks(title: "Bilbo's Last Song", autorsName: "J. R. R. Tolkien", coverImage: "bilbo-song.png"),
                  AudioBooks(title: "Fever", autorsName: "Robin Cook", coverImage: "fever.jpg"),
                  AudioBooks(title: "Harry Potter and the Deathly Hallows", autorsName: "J. K. Rowling", coverImage: "hallows.jpg"),
                  AudioBooks(title: "Invasion", autorsName: "Robin Cook", coverImage: "invasion.jpg"),
                  AudioBooks(title: "Shock", autorsName: "Robin Cook", coverImage: "shock.jpg"),
                  AudioBooks(title: "Fatal Cure", autorsName: "Robin Cook", coverImage: "fatal-cure.jpeg"),
                  AudioBooks(title: "Brain", autorsName: "Robin Cook", coverImage: "brain.jpg"),
                  AudioBooks(title: "Harry Potter and the Half-Blood Prince", autorsName: "J. K. Rowling", coverImage: "prince.jpg")







]
