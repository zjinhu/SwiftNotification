//
//  PushViewController.swift
//  SwiftNotification
//
//  Created by iOS on 2020/4/23.
//  Copyright © 2020 iOS. All rights reserved.
//

import UIKit

class PushViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.notifiCenter.addNotification("123", callBack: { (noti) in
            print("\(String(describing: noti.object)) -- \(String(describing: noti.userInfo))")
        })
        // Do any additional setup after loading the view.
        let btn = UIButton.init(type: .custom)
        btn.frame = CGRect.init(x: 100, y: 100, width: 200, height: 100)
        btn.setTitle("发通知", for: .normal)
        btn.setTitleColor(.black, for: .normal)
        btn.backgroundColor = .yellow
        btn.addTarget(self, action: #selector(push), for: .touchUpInside)
        self.view.addSubview(btn)
    }
    
        @objc func push(){
            self.notifiCenter.postNotification("123", object: "aaaaaaa", userInfo: ["key":"fefe"])
        }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
