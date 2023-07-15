//
//  ExploreView.swift
//  GitHubSampleApp
//
//  Created by Vasya Smetankin on 13.07.2023.
//

import SwiftUI

struct ExploreView: View {
    
    @State var str: String
    var body: some View {
        NavigationView {
            List {
                Section {
                    ProfileViewCell(rectangleColor: .purple, rectangleImage: "flame", cellText: "Trending repositories", chevronNumber: 0)
                        .padding(.leading, -10)
                        .padding(.trailing, -10)
                    ProfileViewCell(rectangleColor: .red, rectangleImage: "face.smiling", cellText: "Awesome lists", chevronNumber: 0)
                        .padding(.leading, -10)
                        .padding(.trailing, -10)
                } header: {
                    Text("Discover")
                        .font(.headline)
                        .foregroundColor(.black)
                        .textCase(nil)
                }
                
                Section {
                    RepoCellView(starCount: 5, contributorsCount: 5, userName: "user", RepoName: "Idle")
                    
                    
                    
                    
                } header: {
                    Text("Activity")
                        .font(.headline)
                        .foregroundColor(.black)
                        .textCase(nil)
                    
                }
                
               
            }
            
            
            .navigationTitle("Explore")
            
            
        }
        .searchable(text: $str)
        
        
        
        
        
        
        
        
    }
}

struct ExploreView_Previews: PreviewProvider {
    static var previews: some View {
        ExploreView(str: "a")
    }
}
