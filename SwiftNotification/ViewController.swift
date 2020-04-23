//
//  ViewController.swift
//  SwiftNotification
//
//  Created by iOS on 2020/4/23.
//  Copyright © 2020 iOS. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let btn = UIButton.init(type: .custom)
        btn.frame = CGRect.init(x: 10, y: 100, width: 300, height: 100)
        btn.titleLabel?.numberOfLines = 0
        btn.setTitle("点击切换页面,多次切换页面也可以，不用手动移除通知", for: .normal)
        btn.setTitleColor(.black, for: .normal)
        btn.backgroundColor = .yellow
        btn.addTarget(self, action: #selector(push), for: .touchUpInside)
        self.view.addSubview(btn)
 
        // Do any additional setup after loading the view.
    }

    @objc func push(){
        let vc = PushViewController()
        self.navigationController?.pushViewController(vc, animated: true)
//        self.defaultNotiCenter?.postNotificationName("123", object: "aaaaaaa", userInfo: ["key":"fefe"])
    }
}

