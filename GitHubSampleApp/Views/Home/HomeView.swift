//
//  HomeView.swift
//  GitHubSampleApp
//
//  Created by Кирилл Заикин on 13.07.2023.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationView {
            VStack(alignment: .center, spacing: 10) {
                List {
                    Section {
                        SearchView()
                    }
                    
                    HomeTableView()
                    
                    Spacer()
                }.navigationTitle("Home")
                
               
            }
            
        }
        
    }
}


struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
