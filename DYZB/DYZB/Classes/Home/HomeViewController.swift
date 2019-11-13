//
//  HomeViewController.swift
//  DYZB
//
//  Created by jerry on 2019/11/13.
//  Copyright © 2019 jerry. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.white
        // Do any additional setup after loading the view.
        //设置UI
        setupUI()
    }
  
}


//MARK: 设置UI
extension HomeViewController{
    
    private func setupUI(){
        setupNav()
    }
    
    private func setupNav(){
        
        //设置左侧item
        navigationItem.leftBarButtonItem = UIBarButtonItem(imageName: "logo")

        let size = CGSize(width: 30, height: 40)
        let hisItem = UIBarButtonItem(imageName: "image_my_history", hightImageName: "Image_my_history_click", size: size)
        let searchItem = UIBarButtonItem(imageName: "btn_search", hightImageName: "btn_search_clicked", size: size)
        let qrItem = UIBarButtonItem(imageName: "Image_scan", hightImageName: "Image_scan_click", size: size)
        navigationItem.rightBarButtonItems = [hisItem, searchItem, qrItem]
        
    }
    
}




