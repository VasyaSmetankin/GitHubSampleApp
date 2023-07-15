//
//  HometableView.swift
//  GitHubSampleApp
//
//  Created by Кирилл Заикин on 13.07.2023.
//

import SwiftUI

struct HomeTableView: View {
    
    var body: some View {
        
        
        
        Section {
            ProfileViewCell(
                rectangleColor: .green,
                rectangleImage: "smallcircle.filled.circle",
                cellText: "Issues",
                chevronNumber: 0
            )
            .frame(height: 40)
            
            ProfileViewCell(
                rectangleColor: .blue,
                rectangleImage: "arrow.triangle.pull",
                cellText: "Pull requests",
                chevronNumber: 0
            )
            .frame(height: 40)
            
            ProfileViewCell(
                rectangleColor: .purple,
                rectangleImage: "message",
                cellText: "Issues",
                chevronNumber: 0
            )
            .frame(height: 40)
            
            ProfileViewCell(
                rectangleColor: .gray,
                rectangleImage: "smallcircle.filled.circle",
                cellText: "Projects",
                chevronNumber: 0
            )
            .frame(height: 40)
            
            ProfileViewCell(
                rectangleColor: Color(red: 66 / 255, green: 66 / 255, blue: 76 / 255),
                rectangleImage: "smallcircle.filled.circle",
                cellText: "Repositories",
                chevronNumber: 0
            )
            .frame(height: 40)
            
            ProfileViewCell(
                rectangleColor: .orange,
                rectangleImage: "smallcircle.filled.circle",
                cellText: "Organizations",
                chevronNumber: 0
            )
            .frame(height: 40)
            
            ProfileViewCell(
                rectangleColor: .yellow,
                rectangleImage: "star",
                cellText: "Starred",
                chevronNumber: 0
            )
            .frame(height: 40)
        } header: {
            SectionHeaderView(buttonFunction: {})
                .padding(0)
        }
        
    }
}


struct HometableView_Previews: PreviewProvider {
    static var previews: some View {
        HomeTableView()
    }
}

struct SectionHeaderView: View {
    let buttonFunction: () -> Void
    
    var body: some View {
        HStack (alignment: .center) {
            Text("My Work")
                .fontWeight(.semibold)
                .foregroundColor(.white)
                .padding(.leading, -20)
            
            Spacer()
            
            Button(action: {}) {
                Image(systemName: "ellipsis")
                    .foregroundColor(
                        Color(
                            red: 115 / 255,
                            green: 114 / 255,
                            blue: 121 / 255
                        )
                    )
            }
            .padding(.trailing, -20)
            
            
            
        }
        .font(.title2)
        .textCase(nil)
    }
}
