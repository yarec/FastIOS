//
//  AppDelegate.swift
//  FastIOS
//
//  Created by r.t on 15/5/21.
//  Copyright (c) 2015年 r.t. All rights reserved.
//

import UIKit


@UIApplicationMain
class AppDelegate: FIApp, UIApplicationDelegate  {
    
    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject : AnyObject]?) -> Bool {
        super.setup()
        createSceen()
        return true
    }
    
    func createSceen(){
        window?.rootViewController = ViewController()
    }
}

