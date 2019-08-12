//
//  rootViewController.swift
//  IOSWebView
//
//  Created by E S on 8/12/19.
//  Copyright © 2019 E S. All rights reserved.
//
import UIKit
import WebKit

class rootViewController: UIViewController, WKNavigationDelegate {
    var webView: WKWebView!
    
        //Kind of crazy stuff
    override func loadView() {
        webView = WKWebView()
        webView.navigationDelegate = self
        view = webView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //General view with page, followed by link
        let url = URL(string: "https://google.com")! //example
        webView.load(URLRequest(url: url))
        
        //Refresh button on the bottom of the view
        let refresh = UIBarButtonItem(barButtonSystemItem: .refresh, target: webView, action: #selector(webView.reload))
        toolbarItems = [refresh]
        navigationController?.isToolbarHidden = false
    }
        //I do not sure, is that ui?
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        title = webView.title
    }


}
