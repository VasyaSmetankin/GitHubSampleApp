//
//  UserRepoViewCell.swift
//  GitHubSampleApp
//
//  Created by Vasya Smetankin on 13.07.2023.
//

import SwiftUI

struct UserRepoViewCell: View {
    
    
    let languageColor: Color
    let starsCount: Int
    let programmingLanguage: String
    let repoName: String
    let repoDesc: String
    let userName: String
    var body: some View {
        VStack(alignment: .leading) {
            ProfileViewUserCell(userName: self.userName)
            Text(repoName)
                .fontWeight(.medium)
                .padding(.bottom, 0)
            Text(repoDesc)
                .fontWeight(.light)
            
            HStack {
                Image(systemName: "star")
                    .padding(.trailing, -6)
                    .fontWeight(.light)
                
                Text(String(starsCount))
                    .fontWeight(.light)
                    .padding(.trailing, 10)
                    .font(.subheadline)
                Circle()
                    .frame(width: 10)
                    .foregroundColor(languageColor)
                Text(programmingLanguage)
                    .fontWeight(.light)
                    .font(.subheadline)
                    
                
            }
            
            
            
            
        }
    }
}

struct UserRepoViewCell_Previews: PreviewProvider {
    static var previews: some View {
        UserRepoViewCell(languageColor: .blue, starsCount: 6, programmingLanguage: "Peniscode", repoName: "penis language", repoDesc: "awesome penis code", userName: "penis worker")
    }
}
