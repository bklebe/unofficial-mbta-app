//
//  WebView.swift
//  mbta-unofficial
//
//  Created by Beatrix Klebe on 2023-05-11.
//

import SwiftUI
import WebKit

struct WebView: UIViewRepresentable {
    
    var url: URL
    
    func makeUIView(context: Context) -> WKWebView {
        let view = WKWebView();
        view.scrollView.contentInsetAdjustmentBehavior = .never
        return view;
    }
    
    func updateUIView(_ webView: WKWebView, context: Context) {
        let request = URLRequest(url: url)
        webView.load(request)
    }
}
