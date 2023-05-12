//
//  ContentView.swift
//  mbta-unofficial
//
//  Created by Beatrix Klebe on 2023-05-11.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Rectangle()
                .fill(Color("MBTA Blue"))
                .ignoresSafeArea()
                .safeAreaInset(edge: .top, alignment: .center, spacing: 0) {
                    WebView(url: URL(string: "https://www.mbta.com")!)
                }

        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
