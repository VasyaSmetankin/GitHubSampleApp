//
//  profileViewCell.swift
//  GitHubSampleApp
//
//  Created by Vasya Smetankin on 13.07.2023.
//

import SwiftUI

struct ProfileViewCell: View {
    let rectangleColor: Color
    let rectangleImage: String
    let cellText: String
    let chevronNumber: Int
    var body: some View {
        HStack {
            ZStack {
                RoundedRectangle(cornerRadius: 5)
                    .frame(width: 30, height: 30)
                    .foregroundColor(rectangleColor)
                    
                Image(systemName: rectangleImage)
                    .resizable()
                    .frame(width: 19, height: 19)
                    .foregroundColor(.white)
            }
            Text(cellText)
            Spacer()
            Text(String(chevronNumber))
                .padding(.trailing, -3)
            Image(systemName: "chevron.forward")
        }
        
    }
}

struct ProfileViewCell_Previews: PreviewProvider {
    static var previews: some View {
        ProfileViewCell(rectangleColor: .red, rectangleImage: "house", cellText: "lala", chevronNumber: 0)
    }
}
