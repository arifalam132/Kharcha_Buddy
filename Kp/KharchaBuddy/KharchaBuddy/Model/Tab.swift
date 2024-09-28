//  Tab.swift
//  KharchaBuddy
//
//  Created by Arif Alam on 24/05/24.
//

import SwiftUI

enum Tab: String {
    case recents = "Recents"
    case search = "Filter"
    case charts = "Charts"
    case settings = "Settings"
    
    @ViewBuilder
    var tabContents: some View {
        switch self {
        case .recents:
            VStack {
                Image(systemName: "calendar")
                Text(self.rawValue)
            }
        case .search:
            VStack {
                Image(systemName: "calendar")
                Text(self.rawValue)
            }
        case .charts:
            VStack {
                Image(systemName: "chart.bar")
                Text(self.rawValue)
            }
        case .settings:
            VStack {
                Image(systemName: "gearshape")
                Text(self.rawValue)
            }
        }
    }
}

