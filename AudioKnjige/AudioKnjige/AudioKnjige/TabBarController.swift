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
        tabBar.barTintColor = UIColor(red: 38/255, green: 196/255, blue: 133/255, alpha: 1)
        setupTabBar()
    }
    
    func setupTabBar() {
        let lektireVC = UINavigationController(rootViewController: LektireVC())
            lektireVC.tabBarItem.image = UIImage(named: "icon30")?.withRenderingMode(.alwaysOriginal)
            lektireVC.tabBarItem.selectedImage = UIImage(named: "icon30")?.withRenderingMode(.alwaysOriginal)
            lektireVC.tabBarItem.title = "Lektire"
        
        let knjigeVC = UINavigationController(rootViewController: KnjigeVC())
            knjigeVC.tabBarItem.image = UIImage(named: "icon30")?.withRenderingMode(.alwaysOriginal)
            knjigeVC.tabBarItem.selectedImage = UIImage(named: "icon30")?.withRenderingMode(.alwaysOriginal)
            knjigeVC.tabBarItem.title = "Knjige"
        let homeVC = UINavigationController(rootViewController: HomeVC())
            homeVC.tabBarItem.image = UIImage(named: "icon30")?.withRenderingMode(.alwaysOriginal)
            homeVC.tabBarItem.selectedImage = UIImage(named: "icon30")?.withRenderingMode(.alwaysOriginal)
        viewControllers = [knjigeVC, lektireVC, homeVC]
            homeVC.tabBarItem.title = "Home"
            
    }
    


}
