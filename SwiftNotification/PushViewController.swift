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
        self.notifiCenter.addNotification("456", callBack: { (noti) in
            print("\(String(describing: noti.object)) -- \(String(describing: noti.userInfo))")
        })
        
        self.notifiCenter.addNotification("456", callBack: { (noti) in
            print("\(String(describing: noti.object)) -- \(String(describing: noti.userInfo))")
        })
        
        self.notifiCenter.addNotification("456", callBack: { (noti) in
            print("\(String(describing: noti.object)) -- \(String(describing: noti.userInfo))")
        })
        
        self.notifiCenter.addNotification(UIApplication.willEnterForegroundNotification, callBack: { (noti) in
            print("1111111-- \(String(describing: noti.userInfo))")
        })
        self.notifiCenter.addNotification(UIApplication.willEnterForegroundNotification, callBack: { (noti) in
            print("1111111-- \(String(describing: noti.userInfo))")
        })
        self.notifiCenter.addNotification(UIApplication.willEnterForegroundNotification, callBack: { (noti) in
            print("1111111-- \(String(describing: noti.userInfo))")
        })
        // Do any additional setup after loading the view.
        let btn = UIButton.init(type: .custom)
        btn.frame = CGRect.init(x: 100, y: 100, width: 200, height: 100)
        btn.setTitle("删通知", for: .normal)
        btn.setTitleColor(.black, for: .normal)
        btn.backgroundColor = .yellow
        btn.addTarget(self, action: #selector(deleteNoti), for: .touchUpInside)
        self.view.addSubview(btn)
        
        let pushbtn = UIButton.init(type: .custom)
        pushbtn.frame = CGRect.init(x: 100, y: 200, width: 200, height: 100)
        pushbtn.setTitle("发通知", for: .normal)
        pushbtn.setTitleColor(.black, for: .normal)
        pushbtn.backgroundColor = .yellow
        pushbtn.addTarget(self, action: #selector(push), for: .touchUpInside)
        self.view.addSubview(pushbtn)
    }
    
        @objc func push(){
            print("发通知")
            self.notifiCenter.postNotification("456", object: "aaaaaaa", userInfo: ["key":"fefe"])
        }
    
    @objc func deleteNoti(){
//            self.notifiCenter.postNotification("123", object: "aaaaaaa", userInfo: ["key":"fefe"])
        print("删通知")
        self.notifiCenter.removeNotification(name : "456")
        self.notifiCenter.removeNotification(notiName: UIApplication.willEnterForegroundNotification)
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
