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
        tabBar.barTintColor = .black
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
            homeVC.tabBarItem.title = "Home"
        
        viewControllers = [knjigeVC, lektireVC, homeVC]
        
            
    }
    


}
