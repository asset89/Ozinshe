//
//  MainTabBarController.swift
//  Ozinshe
//
//  Created by Asset Ryskul on 19.04.2022.
//

import UIKit

class MainTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let homeselectedimage = UIImage(named: "HomeSelected")!.withRenderingMode(.alwaysOriginal)
        
        let searchselectedimage = UIImage(named: "SearchSelected")!.withRenderingMode(.alwaysOriginal)
        
        let favoriteselectedimage = UIImage(named: "FavoriteSelected")!.withRenderingMode(.alwaysOriginal)
        
        let profileselectedimage = UIImage(named: "ProfileSelected")!.withRenderingMode(.alwaysOriginal)
        
        tabBar.items?[0].selectedImage = homeselectedimage
        tabBar.items?[1].selectedImage = searchselectedimage
        tabBar.items?[2].selectedImage = favoriteselectedimage
        tabBar.items?[3].selectedImage = profileselectedimage

    }
    

}
