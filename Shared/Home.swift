//
//  Home.swift
//  Qute
//
//  Created by Davide Biancardi on 17/11/21.
//

import Foundation
import SwiftUI



struct HomeView: View {
    
    var body: some View {
        
        TabView{
            
                ActivitiesView()
            
                .tabItem{
                    Label("Activities",systemImage: "square.grid.2x2.fill")
                
                }
            
            
                PetStatsView()
            
                .tabItem{
                    Label("Pet Stats",systemImage: "pawprint.fill")
                        
                    }
            
                DiaryView()
                
                .tabItem{
                    Label("Diary",systemImage: "calendar")
                }
            
            
                SettingsView()
                .tabItem{
                    Label("Settings",systemImage: "gearshape.fill")
                        
                }
        
        }.accentColor(Color(red: 143/255, green: 149/255, blue: 211/255))
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
