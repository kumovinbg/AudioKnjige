//
//  FirstViewController.swift
//  AudioKnjige
//
//  Created by Nemanja on 7/20/19.
//  Copyright © 2019 NemanjaStojanovic. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON

class KnjigeVC: UIViewController {
    
    var descValue : String = ""
    var descValueArray = [String]()
    
    var urlValue : String = ""
    var urlValueArray = [URL]()
    var model : [AudioKnjige?] = []
 
    func getData() {
            guard let path = Bundle.main.path(forResource: "jsonBooks", ofType: "txt") else {
                fatalError("Default userList.json not found in project")
            }
           let url = URL(fileURLWithPath: path )
        

            do {

                let jsonData = try Data(contentsOf: url)

                guard let books = try? JSONDecoder().decode([AudioKnjige].self, from: jsonData) else {
                    fatalError("Decoding users list from default jsonBooks.txt Error - Json decoding failed")
                }
                model = books
                print(model)
            } catch {
                fatalError("Data not found in jsonBooks.txt")
            }
        }
    override func viewDidLoad() {
        super.viewDidLoad()
       getData()

    }
    
}



extension KnjigeVC: UITableViewDataSource, UITableViewDelegate {
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return booksArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "BookCell", for: indexPath) as! BookCell
            cell.bookTitle.text = booksArray[indexPath.row].title
            cell.autorsName.text = booksArray[indexPath.row].autorsName
            cell.bookImage.image = UIImage(named: booksArray[indexPath.row].coverImage)
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let storyB = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyB.instantiateViewController(withIdentifier: "DescriptionVC") as! DescriptionVC
        self.navigationController?.pushViewController(vc, animated: true)
        
        
        vc.sequeNameAuthor = booksArray[indexPath.row].autorsName
        vc.sequeImage = UIImage(named: booksArray[indexPath.row].coverImage)!
        vc.sequeTitle = booksArray[indexPath.row].title
        //vc.segueDescription = model[indexPath.row]
    }

    
    
}
