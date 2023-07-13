//
//  ProfileView.swift
//  GitHubSampleApp
//
//  Created by Vasya Smetankin on 13.07.2023.
//

import SwiftUI

struct ProfileView: View {
    let lightGray = #colorLiteral(red: 0.6666666865, green: 0.6666666865, blue: 0.6666666865, alpha: 1)
    let yellow = #colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1)
    var body: some View {
        List {
            Section {
                ProfileViewUserCell(userName: "User")

            }
            
            
            Section {
                ProfileViewCell(rectangleColor: Color(lightGray), rectangleImage: "house", cellText: "Repositories", chevronNumber: 0)
                    .padding(.leading, -10)
                    .padding(.trailing, -10)
                ProfileViewCell(rectangleColor: Color(yellow), rectangleImage: "star", cellText: "Starred", chevronNumber: 0)
                    .padding(.leading, -10)
                    .padding(.trailing, -10)
                ProfileViewCell(rectangleColor: .orange, rectangleImage: "building", cellText: "Organizations", chevronNumber: 0)
                    .padding(.leading, -10)
                    .padding(.trailing, -10)
                
            }
            
            Section {
                UserRepoViewCell(languageColor: .blue, starsCount: 0, programmingLanguage: "Peniscode", repoName: "penis code", repoDesc: "awesome new penis language", userName: "penis worker")
            } header: {
                HStack {
                    Image(systemName: "star")
                    Text("popular")
                }
                .fontWeight(.light)
                .padding(.leading, -8)
            }
        }
        .listStyle(.grouped)
        
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
