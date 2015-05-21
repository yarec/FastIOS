//
//  ViewController.swift
//  FastIOS
//
//  Created by r.t on 15/5/21.
//  Copyright (c) 2015年 r.t. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let webview = UIWebView(frame: UIScreen.mainScreen().bounds)
        self.view.addSubview(webview)
        
        webview.loadRequest(NSURLRequest(URL: NSURL(string: "http://baidu.com")!))
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


}

