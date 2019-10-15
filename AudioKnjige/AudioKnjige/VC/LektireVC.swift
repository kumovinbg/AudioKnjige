//
//  SecondViewController.swift
//  AudioKnjige
//
//  Created by Nemanja on 7/20/19.
//  Copyright © 2019 NemanjaStojanovic. All rights reserved.


import UIKit

class LektireVC: UIViewController {
    
    let array = ["Osnovna Škola", "Srednja Škola"]
    let arrayOS = ["5.razred", "6.razred", "7.razred", "8.razred"]
    let arraySS = ["1.razred", "2.razred", "3.razred", "4.razred"]
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
    
    @IBOutlet weak var myTable: UITableView!
    
    
}

extension LektireVC : UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return array[section]
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return array.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellData", for: indexPath) as! LektireTableView
        return cell
    }
    
    
    
}

