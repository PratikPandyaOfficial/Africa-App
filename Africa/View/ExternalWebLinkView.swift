//
//  ExternalWebLinkView.swift
//  Africa
//
//  Created by Drashti on 12/12/23.
//

import SwiftUI

struct ExternalWebLinkView: View {
    //MARK: - Properties
    let animal:Animal
    //MARK: - Body
    var body: some View {
        GroupBox {
            HStack {
                Image(systemName: "globe")
                Text("Wikipedia")
                Spacer()
                Group{
                    Image(systemName: "arrow.up.right.square")
                    Link(animal.name, destination: (URL(string: animal.link) ?? URL(string: "https://wikipedia.org"))!)
                }
                .foregroundColor(.accentColor)
            }//: Hstack
        }//: Box
    }
}

struct ExternalWebLinkView_Previews: PreviewProvider {
    static let animal : [Animal] = Bundle.main.decode("animals.json")
    static var previews: some View {
        ExternalWebLinkView(animal: animal[0])
    }
}
