//
//  VideoPlayerView.swift
//  Africa
//
//  Created by Drashti on 12/12/23.
//

import SwiftUI
import AVKit

struct VideoPlayerView: View {
    //MARK: - Properties
    var videoSelected: String
    var videoTitle: String
    
    //MARK: - Body
    var body: some View {
        //VideoPlayer(player: AVPlayer(url: Bundle.main.url(forResource: "cheetah", withExtension: "mp4")!))
        VStack {
            VideoPlayer(player: playVideo(fileName: videoSelected, fileFormat: "mp4")){
                //Text(videoTitle)
            }
            .overlay(alignment: .topLeading) {
                Image("logo")
                    .resizable()
                    .scaledToFit()
                    .padding(.horizontal, 8)
                    .frame(width: 32, height: 32)
            }
        }//: Vstack
        .accentColor(.accentColor)
        .navigationTitle(videoTitle)
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct VideoPlayerView_Previews: PreviewProvider {
    static var previews: some View {
        VideoPlayerView(videoSelected: "lion", videoTitle: "lion")
    }
}
