//
//  RepoCellView.swift
//  GitHubSampleApp
//
//  Created by Vasya Smetankin on 15.07.2023.
//

import SwiftUI

struct RepoCellView: View {
    
    let starCount: Int
    let contributorsCount: Int
    let userName: String
    let RepoName: String
    var body: some View {
        VStack(alignment: .leading, spacing: 4) {
            RoundedRectangle(cornerRadius: 2)
                .frame(width: 340, height: 200)
                .foregroundColor(.gray)
            HStack {
                ZStack {
                    Circle()
                        .frame(width: 25)
                        .foregroundColor(.gray)
                    Image(systemName: "person")
                        .resizable()
                        .foregroundColor(.white)
                        .frame(width: 15, height: 15)
                    
                }
                .padding(.trailing, -4)
                Text("\(userName) / \(RepoName)")
                    .fontWeight(.semibold)
            }
            .font(.subheadline)
            .fontWeight(.medium)
            
            HStack() {
                Text("Repodesc")
                
            }
            
            HStack() {
                Image(systemName: "star")
                    .padding(.leading, -2)
                Text(String(starCount))
                    .padding(.leading, -2)
            }
            HStack {
                Image(systemName: "person")
                Text(String(contributorsCount))
                Text("contributors")
                Image(systemName: "chevron.forward")
            }
            
        }

    }
}

struct RepoCellView_Previews: PreviewProvider {
    static var previews: some View {
        RepoCellView(starCount: 5, contributorsCount: 0, userName: "User", RepoName: "Repository")
    }
}
