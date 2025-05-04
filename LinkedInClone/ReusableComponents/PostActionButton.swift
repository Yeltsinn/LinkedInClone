//
//  PostActionButton.swift
//  LinkedInClone
//
//  Created by Yeltsin Suares Lobato Gama on 04/05/25.
//

import SwiftUI

struct PostActionButton: View {
    let imageName: String
    let text: String
    
    var body: some View {
        Button {
            
        } label: {
            VStack {
                Image(systemName: imageName)
                Text(text)
            }
        }
        .foregroundColor(Color(.darkGray))
        .fontWeight(.bold)
    }
}
