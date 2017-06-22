//
//  WebView.swift
//  MetaBrowser
//
//  Created by midmirror on 17/6/20.
//  Copyright © 2017年 midmirror. All rights reserved.
//

import UIKit
import WebKit

class WebView: WKWebView {

    override init(frame: CGRect, configuration: WKWebViewConfiguration) {
        super.init(frame: frame, configuration: configuration)
        uiDelegate = self
        navigationDelegate = self
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension WebView: WKNavigationDelegate {
    
    /// 页面开始加载时调用
    func webView(_ webView: WKWebView, didStartProvisionalNavigation navigation: WKNavigation!) {
        DEBUGPrint(#function)
    }
    
    /// 当内容开始返回时调用
    func webView(_ webView: WKWebView, didCommit navigation: WKNavigation!) {
        DEBUGPrint(#function)
    }
    
    /// 页面加载完成之后调用
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        DEBUGPrint(#function)
    }
    
    /// 加载失败时调用
    func webView(_ webView: WKWebView, didFailProvisionalNavigation navigation: WKNavigation!, withError error: Error) {
        DEBUGPrint(#function)
    }
    
    /// 接收到服务器跳转请求之后调用
    func webView(_ webView: WKWebView, didReceiveServerRedirectForProvisionalNavigation navigation: WKNavigation!) {
        DEBUGPrint(#function)
    }
    
    /// 在收到响应后，决定是否跳转
    func webView(_ webView: WKWebView, decidePolicyFor navigationResponse: WKNavigationResponse, decisionHandler: @escaping (WKNavigationResponsePolicy) -> Void) {
        DEBUGPrint(#function)
        decisionHandler(.allow)
    }
    
    /// 在发送请求之前，决定是否跳转
    func webView(_ webView: WKWebView, decidePolicyFor navigationAction: WKNavigationAction, decisionHandler: @escaping (WKNavigationActionPolicy) -> Void) {
        DEBUGPrint(#function)
        decisionHandler(.allow)
    }
}

extension WebView: WKUIDelegate {
    
}
