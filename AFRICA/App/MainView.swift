//
//  MainView.swift
//  AFRICA
//
//  Created by vinay Kumar ranjan on 08/05/24.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView {
            ContentView()
                .tabItem {
                    Image(systemName: "square.grid.2x2")
                    Text("Browse")
                }
            VideoListView()
                .tabItem {
                    Image(systemName: "play.rectangle")
                    Text("Video")
                }
            
            MapView()
                .tabItem {
                    Image(systemName: "map")
                    Text("Locatons")
                }
            
            GalleryView()
                .tabItem {
                    Image(systemName: "photo")
                    Text("Gallery")
                }
        }
    }
}

#Preview {
    MainView()
}
