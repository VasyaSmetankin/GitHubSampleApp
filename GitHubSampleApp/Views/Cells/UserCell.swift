//
//  UserCell.swift
//  GitHubSampleApp
//
//  Created by Vasya Smetankin on 13.07.2023.
//

import SwiftUI

struct UserCell: View {
    let userName: String
    let repoName: String
    let repoDescription: String
    let starsCount: Int
    let contributorsCount: Int
    
    
    let lightGray = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
    
    var body: some View {
        VStack(alignment: .leading) {
            Rectangle()
                .frame(width: 350, height: 200)
                .foregroundColor(.gray)
            HStack {
                ZStack {
                    Circle()
                        .frame(width: 20)
                        .foregroundColor(.gray)
                    Image(systemName: "person")
                        .resizable()
                        .frame(width: 10, height: 10)
                }
                Text(userName)
                    .font(.subheadline)
                    .padding(.trailing, -4)
                Text("/")
                    .font(.subheadline)
                    .padding(.trailing, -4)
                Text(repoName)
                    .font(.subheadline)
                
                    
                    
            }
            .padding(.top, 2)
            Text(repoDescription)
                .fontWeight(.light)
                .font(.subheadline)
                .padding(.bottom, 2)
            HStack {
                Image(systemName: "star")
                    .padding(.leading, -2)
                    .padding(.trailing, -1.5)
                Text(String(starsCount))
                    .font(.subheadline)
            }
            HStack {
                Image(systemName: "person")
                Text(String(contributorsCount))
                    .font(.subheadline)
                    .padding(.trailing, -2)
                Text("contributors")
                    .font(.subheadline)
            }
            Button(action: {}) {
                ZStack {
                    Rectangle()
                        .frame(width: 350, height: 20)
                        .cornerRadius(4)
                        .foregroundColor(Color(lightGray))
                    HStack {
                        Image(systemName: "star")
                            .resizable()
                            .frame(width: 14, height: 14)
                            .foregroundColor(.black)
                        Text("Star")
                            .foregroundColor(.black)
                            .fontWeight(.light)
                            .font(.subheadline)
                    }
                    
                }
            }
            
            
            
        }
    }
}

struct UserCell_Previews: PreviewProvider {
    static var previews: some View {
        UserCell(userName: "user", repoName: "reponame", repoDescription: "desc", starsCount: 5, contributorsCount: 6)
    }
}
