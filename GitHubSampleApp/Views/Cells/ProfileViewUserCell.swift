//
//  ProfileViewUserCell.swift
//  GitHubSampleApp
//
//  Created by Vasya Smetankin on 13.07.2023.
//

import SwiftUI

struct ProfileViewUserCell: View {
    let lightgray = #colorLiteral(red: 0.7649801427, green: 0.9764705896, blue: 0.9628712687, alpha: 1)
    let userName: String
    var body: some View {
        HStack {
            ZStack(alignment: .center) {
                Circle()
                    .frame(width: 60)
                    .foregroundColor(Color(lightgray))
                
                Image(systemName: "person")
                    .resizable()
                    .frame(width: 30, height: 30)
            }
            Text(userName)
                .padding(.leading, 4)
        }
    }
}

struct ProfileViewUserCell_Previews: PreviewProvider {
    static var previews: some View {
        ProfileViewUserCell(userName: "User")
    }
}
