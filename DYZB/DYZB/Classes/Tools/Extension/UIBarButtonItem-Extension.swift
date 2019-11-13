//
//  UIBarButtonItem-Extension.swift
//  DYZB
//
//  Created by jerry on 2019/11/13.
//  Copyright © 2019 jerry. All rights reserved.
//

import UIKit

extension UIBarButtonItem {
    
    //遍历构造函数
    convenience init(imageName: String, hightImageName: String = "" , size: CGSize = CGSize.zero) {
        let btn = UIButton()
        btn.setImage(UIImage(named: imageName), for: .normal)
        if hightImageName != "" {
            btn.setImage(UIImage(named: hightImageName), for: .highlighted)
        }
        if size == CGSize.zero {
            btn.sizeToFit()
        }else{
            btn.frame = CGRect(origin: CGPoint.zero, size: size)
        }
        self.init(customView:btn)
    }
}


