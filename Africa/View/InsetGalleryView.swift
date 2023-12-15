//
//  InsetGalleryView.swift
//  Africa
//
//  Created by Drashti on 12/12/23.
//

import SwiftUI

struct InsetGalleryView: View {
    //MARK: - Properties
    let animal: Animal
    //MARK: - Body
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false){
            HStack(alignment:.center, spacing: 15) {
                ForEach(animal.gallery, id: \.self) { item in
                    Image(item)
                        .resizable()
                        .scaledToFit()
                        .frame(height: 230)
                    .cornerRadius(12)
                }// : loop
            }//: Hstack
        }//: scrollview
    }
}
//MARK: - Preview
struct InsetGalleryView_Previews: PreviewProvider {
    static let animals:[Animal] = Bundle.main.decode("animals.json")
    static var previews: some View {
        InsetGalleryView(animal: animals[0])
    }
}
