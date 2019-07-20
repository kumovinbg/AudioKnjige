//
//  TabBarController.swift
//  AudioKnjige
//
//  Created by Nemanja on 7/20/19.
//  Copyright © 2019 NemanjaStojanovic. All rights reserved.
//

import UIKit

class TabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        setupTabBar()
    }
    
    func setupTabBar() {
        let lektireVC = UINavigationController(rootViewController: LektireVC())
        lektireVC.tabBarItem.image = UIImage(named: "icon30")?.withRenderingMode(.alwaysOriginal)
        lektireVC.tabBarItem.selectedImage = UIImage(named: "icon30")?.withRenderingMode(.alwaysOriginal)
        
        let knjigeVC = UINavigationController(rootViewController: KnjigeVC())
        knjigeVC.tabBarItem.image = UIImage(named: "icon30")?.withRenderingMode(.alwaysOriginal)
        knjigeVC.tabBarItem.selectedImage = UIImage(named: "icon30")?.withRenderingMode(.alwaysOriginal)
        
        viewControllers = [knjigeVC, lektireVC]
        
    }
    


}
