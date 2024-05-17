//
//  VideoPlayerView.swift
//  AFRICA
//
//  Created by vinay Kumar ranjan on 17/05/24.
//

import SwiftUI
import AVKit

struct VideoPlayerView: View {
    var videoSelected: String
    var videoTitle: String
    
    var body: some View {
        VStack {
            VideoPlayer(player: playVideo(fileName: videoSelected, fileFormate: "mp4")) {
               // Text(videoTitle)
            }
            .overlay(
              Image("logo")
                .resizable()
                .scaledToFit()
                .frame(width: 32, height: 32)
                .padding(.top, 6)
                .padding(.horizontal, 8)
              , alignment: .topLeading
            )
        }
        .accentColor(.accentColor)
        .navigationBarTitle(videoTitle, displayMode: .inline)
        
    }
}

#Preview {
    NavigationView {
        VideoPlayerView(videoSelected: "lion", videoTitle: "LION")
    }
}
