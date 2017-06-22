//
//  WebBrowserController.swift
//  MetaBrowser
//
//  Created by midmirror on 17/6/20.
//  Copyright © 2017年 midmirror. All rights reserved.
//

import UIKit
import WebKit

class WebBrowserController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let webView = WebView.init(frame: self.view.bounds, configuration: WKWebViewConfiguration.init())
        webView.load(URLRequest.init(url: URL.init(string: "http://www.baidu.com/")!))
        view.addSubview(webView)
        
        let bottomToolbar = BottomToolbar.init(frame: CGRect.init(x: 0, y: ScreenHeight-44, width: ScreenWidth, height: 44))
        view.addSubview(bottomToolbar)
        
        bottomToolbar.whenGoBack {
            webView.goBack()
        }
        
        bottomToolbar.whenGoForward {
            webView.goForward()
        }
        
        bottomToolbar.whenTouchFunction {
            
        }
        
        bottomToolbar.whenTouchHome {
            
        }
        
        bottomToolbar.whenTouchPage {
            
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
