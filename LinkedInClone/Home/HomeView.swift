//
//  HomeView.swift
//  LinkedInClone
//
//  Created by Yeltsin Suares Lobato Gama on 01/05/25.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        ScrollView {
            LazyVStack {
                ForEach(0...10, id: \.self) {_ in
                    PostView()
                }
            }
        }
        .background(Color(.systemGray6))
    }
}

#Preview {
    HomeView()
}
