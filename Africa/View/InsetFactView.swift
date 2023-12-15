//
//  InsetFactView.swift
//  Africa
//
//  Created by Drashti on 12/12/23.
//

import SwiftUI

struct InsetFactView: View {
    //MARK: - Properties
    let animal: Animal
    //MARK: - Body
    var body: some View {
        GroupBox {
            TabView{
                ForEach(animal.fact, id: \.self) { item in
                    Text(item)
                }
            }//: Tabs
            .tabViewStyle(PageTabViewStyle())
            .frame(minHeight: 148, idealHeight: 168, maxHeight: 180)
        }//: Box
    }
}

struct InsetFactView_Previews: PreviewProvider {
    static let animal : [Animal] = Bundle.main.decode("animals.json")
    static var previews: some View {
        InsetFactView(animal: animal[0])
    }
}
