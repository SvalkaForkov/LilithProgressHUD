//
//  ViewController.swift
//  LFProgressHUD
//
//  Created by joshuaarnold on 08/04/2016.
//  Copyright (c) 2016 joshuaarnold. All rights reserved.
//

import UIKit
import LilithProgressHUD

class ViewController: UIViewController {
    
    override func preferredStatusBarStyle() -> UIStatusBarStyle {
        return .LightContent
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        LilithProgressHUD.opacity(0.5)
        LilithProgressHUD.size(50)
        LilithProgressHUD.cornerRadius(5)
        
        let delayTime = dispatch_time(DISPATCH_TIME_NOW, Int64(3 * Double(NSEC_PER_SEC)))
        dispatch_after(delayTime, dispatch_get_main_queue()) {
            LilithProgressHUD.show(self.view)
           
        }
        
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        
        let delayTime = dispatch_time(DISPATCH_TIME_NOW, Int64(9 * Double(NSEC_PER_SEC)))
        dispatch_after(delayTime, dispatch_get_main_queue()) {
            LilithProgressHUD.hide(self.view)
        }
        
    }
    
    func hello() {
        print("hello")
    }

    
}

