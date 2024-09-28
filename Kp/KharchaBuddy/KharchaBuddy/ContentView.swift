//
//  ContentView.swift
//  KharchaBuddy
//
//  Created by Arif Alam on 24/05/24.
//

import SwiftUI

struct ContentView: View {
    @AppStorage("isFirstTime")private var isFirstTime: Bool = false
    ///Active tab
    @State private var activeTab: Tab = .recents
    var body: some View {
        
        TabView(selection: $activeTab){
            Text("Recents")
                .tag(Tab.recents)
                .tabItem { Tab.recents.tabContents}
            Text("Search")
                .tag(Tab.search)
                .tabItem { Tab.search.tabContents}
            Text("Chart")
                .tag(Tab.charts)
                .tabItem { Tab.charts.tabContents}
            Text("Settings")
                .tag(Tab.settings)
                .tabItem { Tab.settings.tabContents}
        }
        .tint(appTint)
        .sheet(isPresented: $isFirstTime, content: {
            IntroScreen()
                .interactiveDismissDisabled()
        })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
