//
//  SearchView.swift
//  GitHubSampleApp
//
//  Created by Кирилл Заикин on 13.07.2023.
//

import SwiftUI

struct SearchView: View {
    @State private var text = ""
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 10)
                .frame(height: 35)
                .foregroundColor(
                    Color(
                        red: 32 / 255,
                        green: 32 / 255,
                        blue: 34 / 255
                    )
                )
            
            HStack(alignment: .center) {
                Image(systemName: "magnifyingglass")
                    .resizable()
                    .frame(width: 25, height: 25)
                    .foregroundColor(
                        Color(
                            red: 90 / 255,
                            green: 90 / 255,
                            blue: 95 / 255
                        )
                    )
                    .padding(.leading, 7)
                
                TextField("Search GitHub", text: $text)
            }
        }
        
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
