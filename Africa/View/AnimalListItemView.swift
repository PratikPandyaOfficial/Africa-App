//
//  AnimalListItemView.swift
//  Africa
//
//  Created by Drashti on 12/12/23.
//

import SwiftUI

struct AnimalListItemView: View {
    //MARK: - Properties
    let animal: Animal
    
    //MARK: - Body
    var body: some View {
        HStack(alignment: .center, spacing: 16) {
            Image(animal.image)
                .resizable()
                .scaledToFill()
                .frame(width: 90, height: 90)
                .clipShape(
                    RoundedRectangle(cornerRadius: 12)
                )
            VStack(alignment: .leading, spacing: 8) {
                Text(animal.name)
                    .font(.title2)
                    .fontWeight(.heavy)
                    .foregroundColor(.accentColor)
                Text(animal.headline)
                    .font(.footnote)
                    .multilineTextAlignment(.leading)
                    .lineLimit(2)
                    .padding(.trailing, 8)
            }
        }
    }
}
// MARK: - Preview
struct AnimalListItemView_Previews: PreviewProvider {
    
    static let animal: [Animal] = Bundle.main.decode("animals.json")
    
    static var previews: some View {
        AnimalListItemView(animal: animal[1])
    }
}
