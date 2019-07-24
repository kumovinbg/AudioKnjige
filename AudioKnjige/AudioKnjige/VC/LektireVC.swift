//
//  SecondViewController.swift
//  AudioKnjige
//
//  Created by Nemanja on 7/20/19.
//  Copyright © 2019 NemanjaStojanovic. All rights reserved.
//

import UIKit

class LektireVC: UIViewController {
    
    let sections = ["Lektira Osnovna Škola", "Lektira Srednja Škola"]
    let lektireArray = [
       ["Peti razred", "Sesti razred", "Sedmi razred", "Osmi razred"],
       ["Prvi razred", "Drugi razred", "Treci razred", "Cetvrti razred"]
    ]
 @IBOutlet weak var table: UITableView!

    override func viewDidLoad() {
        self.table.dataSource = self
        self.table.delegate = self
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
      
    }
    
    
    
    
    


}

extension LektireVC : UITableViewDataSource, UITableViewDelegate {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return sections.count
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return sections[section]
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return lektireArray[section].count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellData", for: indexPath)
        cell.textLabel?.text = lektireArray[indexPath.section][indexPath.row]
        
        
        return cell
        
    }
    
}
