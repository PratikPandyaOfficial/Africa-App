//
//  VideoListView.swift
//  Africa
//
//  Created by Drashti on 11/12/23.
//

import SwiftUI

struct VideoListView: View {
    //MARK: - Properties
    @State var videos:[Video] = Bundle.main.decode("videos.json")
    let hapticImpact = UIImpactFeedbackGenerator(style: .medium)
    //MARK: - Body
    var body: some View {
        NavigationView {
            List {
                ForEach(videos) { item in
                    NavigationLink(destination: {
                        VideoPlayerView(videoSelected: item.id, videoTitle: item.name)
                    }, label: {
                        VideoListItemView(video: item)
                            .padding(.vertical, 8)
                    })
                }//: loop
            }//: List
            .listStyle(InsetGroupedListStyle())
            .navigationTitle("Videos")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        videos.shuffle()
                        hapticImpact.impactOccurred()
                    } label: {
                        Image(systemName: "arrow.2.squarepath")
                    }

                }
            }
        }//: Navigation
    }
}
//MARK: - Preview
struct VideoListView_Previews: PreviewProvider {
    static var previews: some View {
        VideoListView()
    }
}
