//
//  ContentView.swift
//  WebView(SwiftUI)
//
//  Created by Sergei on 23.10.2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            SwWebView(url: URL(string: "https://www.2dsl.ru"))
                .navigationTitle("2dsl.ru: Компьютеры, софт, гаджеты")
                .font(.caption) 
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
