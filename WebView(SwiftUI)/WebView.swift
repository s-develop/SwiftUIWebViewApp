//
//  WebView.swift
//  WebView(SwiftUI)
//
//  Created by Sergei on 23.10.2021.
//

import SwiftUI
import WebKit

struct SwWebView: UIViewRepresentable {
    
    let url: URL?
    
    func makeUIView(context: Context) -> WKWebView{
        
        var prefs = WKWebpagePreferences()
        prefs.allowsContentJavaScript = true
        let config = WKWebViewConfiguration()
        config.defaultWebpagePreferences = prefs
        return WKWebView(frame: .zero, configuration: config)
    
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        guard let myURL = url else {
            return
        }
        
        let request = URLRequest(url: myURL)
        uiView.load(request)
    }
    
    
    
}
