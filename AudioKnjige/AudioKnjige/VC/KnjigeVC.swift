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
    
    var jsonValue : String = ""
    var jsonValueArray = [String]()
    	

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        getData()
    }
    
    func getData() {
        
        if let path = Bundle.main.path(forResource: "json", ofType: "txt") {
            let url=URL(fileURLWithPath: path)
            Alamofire.request(url).responseJSON { response in
                
                let jsonData: JSON = JSON(response.result.value!)
                
                
                for (_, value):(String,JSON) in jsonData["list"] {
                    self.jsonValue = value["title"].stringValue
                  
                    self.jsonValueArray.append(self.jsonValue)
                   
                    }
                
                
                
               
                
                
                
            }
        }


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
        vc.segueDescription = jsonValueArray[indexPath.row]
    }

    
    
}
