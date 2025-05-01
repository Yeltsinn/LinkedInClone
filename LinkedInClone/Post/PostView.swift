//
//  PostView.swift
//  LinkedInClone
//
//  Created by Yeltsin Suares Lobato Gama on 01/05/25.
//

import SwiftUI

struct PostView: View {
    var body: some View {
        VStack {
            headerSection
            contentSection
            statsSection
            userInteractionSection
        }
        .padding(.horizontal)
        .padding(.vertical)
        .background(Color.white)
    }
    
    private var headerSection: some View {
        HStack {
            Image("michael_jordan_photo")
                .resizable()
                .scaledToFill()
                .frame(width: 60, height: 60)
                .clipShape(Circle())
            
            VStack(alignment: .leading) {
                Text("Michael Jordan")
                    .fontWeight(.semibold)
                
                Text("Professional Basketball Player | 6x NBA Champion | 5x NBA MVP")
                    .lineLimit(1)
                    .foregroundColor(Color(.darkGray))
                
                Text("2w ago")
                    .foregroundColor(Color(.darkGray))
                
            }
            .font(.footnote)
        }
    }
    
    private var contentSection: some View {
        Text("""
        🕺 Hee-hee! Big news — I’m stepping into the sneaker game.
        
        Introducing the Michael Jackson x Air Jordan "Moonwalk" Edition 👟🌙
        
        Designed with the amazing team at Jordan Brand, this isn’t just a shoe.
        It’s movement. It’s legacy.
        
        Don’t just walk. Moonwalk. 🎶
        
        #MJxAJ #AirJordan #MichaelJackson #MoonwalkEdition #LegacyInMotion
        """)
        .font(.subheadline)
        .padding(.vertical)
    }
    
    private var statsSection: some View {
        HStack {
            Spacer()
            
            Button {
                
            } label: {
                Text("209 comments")
                    .foregroundColor(Color(.darkGray))
            }
            
            Text("•")
                .foregroundColor(Color(.darkGray))
            
            Button {
                
            } label: {
                Text("63 reposts")
                    .foregroundColor(Color(.darkGray))
            }
        }
        .font(.subheadline)
    }
    
    private var userInteractionSection: some View {
        VStack {
            Divider()
            
            HStack {
                Button {
                    
                } label: {
                    VStack {
                        Image(systemName: "hand.thumbsup")
                        Text("Like")
                    }
                }
                
                Spacer()
                
                Button {
                    
                } label: {
                    VStack {
                        Image(systemName: "bubble")
                        Text("Comment")
                    }
                }
                
                Spacer()
                
                Button {
                    
                } label: {
                    VStack {
                        Image(systemName: "arrow.2.squarepath")
                        Text("Repost")
                    }
                }
                
                Spacer()
                
                Button {
                    
                } label: {
                    VStack {
                        Image(systemName: "paperplane")
                        Text("Send")
                    }
                }
            }
            .padding(.horizontal)
            .padding(.vertical)
            .foregroundColor(Color(.darkGray))
            .fontWeight(.bold)
        }
    }
}

#Preview {
    PostView()
}
