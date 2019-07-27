//
//  FirstViewController.swift
//  AudioKnjige
//
//  Created by Nemanja on 7/20/19.
//  Copyright © 2019 NemanjaStojanovic. All rights reserved.
//

import UIKit

class KnjigeVC: UIViewController {
    let titleArray = ["Book1", "Book2","Book3","Book4","Book5","Book6","Book1","Book7","Book8","Book9","Book10"]
    let descriptionArray = ["Descritpion", "Descritpion","Descritpion","Descritpion","Descritpion","Descritpion","Descritpion","Descritpion","Descritpion","Descritpion","Descritpion"]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        

    }


}

extension KnjigeVC: UITableViewDataSource, UITableViewDelegate {
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return titleArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "BookCell", for: indexPath) as! BookCell
            cell.bookTitle.text = titleArray[indexPath.row]
            cell.bookDescription.text = descriptionArray[indexPath.row]
        
        return cell
    }
    
    
    
    
    
}
