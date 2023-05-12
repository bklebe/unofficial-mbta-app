//
//  WebView.swift
//  unofficial-mbta-app
//
//  Created by Beatrix Klebe on 2023-05-11.
//

import SwiftUI
import WebKit

struct WebView: PlatformAgnosticViewRepresentable {
    var url: URL

    func makePlatformView(context: Context) -> WKWebView {
        WKWebView()
    }

    func updatePlatformView(_ webView: WKWebView, context: Context) {
        let request = URLRequest(url: url)
        webView.load(request)
    }
}
