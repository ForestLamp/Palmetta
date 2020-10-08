//
//  ViewController.swift
//  Palmetta
//
//  Created by a_sid on 05.10.2020.
//

import UIKit
import WebKit


class ViewController: UIViewController, WKUIDelegate {
    
    // Оутлет для вебВью
    
    @IBOutlet var mainVebView: WKWebView!
    
    

        override func loadView() {
            let webConfiguration = WKWebViewConfiguration()
            mainVebView = WKWebView(frame: .zero, configuration: webConfiguration)
            webConfiguration.allowsInlineMediaPlayback = true
            mainVebView.uiDelegate = self
            view = mainVebView
            
    }
    
        override func viewDidLoad() {
        super.viewDidLoad()
        
        let url = URL(string: "https://www.palmetta.ru")
               let request = URLRequest(url: url!)
               
               mainVebView.load(request)
               mainVebView.allowsBackForwardNavigationGestures = true
        
    }




}
