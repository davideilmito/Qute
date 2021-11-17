//
//  SettingsView.swift
//  Qute
//
//  Created by Davide Biancardi on 17/11/21.
//

import SwiftUI

struct SettingsView: View {
    
    init(){
        
        UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor : UIColor.init(Color(red: 143/255, green: 149/255, blue: 211/255))]
        
        
    }
    
    
    var body: some View {
        
        NavigationView{
            
            VStack{
                
                
                
            }.navigationTitle("Settings")
            
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
