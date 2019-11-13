//
//  BaseTabBarViewController.swift
//  DYZB
//
//  Created by jerry on 2019/11/13.
//  Copyright © 2019 jerry. All rights reserved.
//

import UIKit

class BaseTabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        addViewControllers()
        tabBar.tintColor = UIColor.orange
        // Do any additional setup after loading the view.
    }
    
    
    
    func addViewControllers() {
        
        setupOneChildViewController("首页", image: "btn_home_normal", selectedImage: "btn_home_selected", controller: HomeViewController())
        setupOneChildViewController("直播", image: "btn_column_normal", selectedImage: "btn_column_selected", controller: LiveViewController())
        setupOneChildViewController("关注", image: "btn_live_normal", selectedImage: "btn_live_selected", controller: FellowViewController())
        setupOneChildViewController("我的", image: "btn_user_normal", selectedImage: "btn_user_selected", controller: MyViewController())
        
    }
    
    fileprivate func setupOneChildViewController(_ title: String, image: String, selectedImage: String, controller: UIViewController) {
        controller.tabBarItem.title = title
        controller.title = title
        controller.view.backgroundColor = UIColor.white
        controller.tabBarItem.image = UIImage(named: image)?.withRenderingMode(.alwaysOriginal)
        controller.tabBarItem.selectedImage = UIImage(named: selectedImage)?.withRenderingMode(.alwaysOriginal)
        let nav = UINavigationController.init(rootViewController: controller)
        addChild(nav)
    }
    
}
