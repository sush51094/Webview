//
//  ViewController.swift
//  Webview
//
//  Created by MacStudent on 2019-03-18.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController,WKNavigationDelegate {

    @IBOutlet weak var webkit: WKWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        webkit.navigationDelegate = self
        webkit.allowsBackForwardNavigationGestures = true
        
    loadFromFile()
        loadFromString()
       // loadUrl()
    }
    
  func loadFromString()
    
  {
    
    let htmlStr = "<h1>Hello World</h1>"
    webkit.loadHTMLString(htmlStr , baseURL: nil)
    
    
    }
    
    
    
    
    
    
    
    
    
    func loadFromFile()
    {
        
        
        let localfilePath = Bundle.main.url(forResource : "home", withExtension  : "html")
        let myRequest = URLRequest(url : localfilePath!)
        
        webkit.load(myRequest)
        
    }
        
        
    

func loadUrl()
{
    
    
    let url = URL(string: "https://www.google.com")
    let urlReq =  URLRequest(url: url!)
    webkit.load(urlReq)
    
    
}
}
