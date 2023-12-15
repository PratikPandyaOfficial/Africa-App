//
//  CopyrightView.swift
//  Africa
//
//  Created by Drashti on 14/12/23.
//

import SwiftUI

struct CopyrightView: View {
    //MARK: - Properties
    
    //MARK: - Body
    var body: some View {
        VStack(spacing: 20) {
            Image("compass")
                .resizable()
                .scaledToFit()
                .frame(width: 128, height: 128)
            
            Text("""
    Cpoyright © Pratik Pandya
    All right reserved
    Better Apps ♡ Less Code
    """)
            .font(.footnote)
        .multilineTextAlignment(.center)
        }
        .padding()
        .opacity(0.4)
    }
}
//MARK: - Preview
struct CopyrightView_Previews: PreviewProvider {
    static var previews: some View {
        CopyrightView()
    }
}
