//
//  ActivitiesView.swift
//  Qute
//
//  Created by Davide Biancardi on 17/11/21.
//

import SwiftUI

struct ActivitiesView: View {
    
    init(){
        
        UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor : UIColor.init(Color(red: 143/255, green: 149/255, blue: 211/255))]

    }
    
    var body: some View {
            
NavigationView{
            
        ScrollView(.vertical){
          
            VStack{
                   
                Text("Let's do the activity of the day")
                    
                    .font(.system(size: 28, weight:.light, design: .rounded))
                    .frame(width: 358, height: 50, alignment: .leading)
                
                    
                Image("Image")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .scaledToFit()
                    .frame(width: 367, height: 268)
                
            
                Text("Relax")
                    .font(.system(size: 28, weight:.semibold, design: .rounded))
                    .frame(width: 358, height: 50, alignment: .leading)
                
                ScrollView(.horizontal){
                
                    
                HStack(){
                    
                    Image("Image-1")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .scaledToFit()
                        .frame(width: 134  , height: 134)
                    
                    
                    Image("Image-2")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .scaledToFit()
                        .frame(width: 134  , height: 134)
                    
                    
                    Image("Image-3")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .scaledToFit()
                        .frame(width: 134  , height: 134)
                    
                }
                }
                    
                Text("Fun")
                        .font(.system(size: 28, weight:.semibold, design: .rounded))
                        .frame(width: 358, height: 50, alignment: .leading)
                    
                    ScrollView(.horizontal){
                
                    HStack{
                        
                        Image("Image-4")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .scaledToFit()
                            .frame(width: 134  , height: 134)
                        
                        
                        Image("Image-5")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .scaledToFit()
                            .frame(width: 134  , height: 134)
                        
                        
                        Image("Image-6")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .scaledToFit()
                            .frame(width: 134  , height: 134)
                        
                    }
                    
                }
                
                    
           }.navigationTitle("Activities")
                
           
          }
              
        }
        
}

}

    
    
    
struct ActivitiesView_Previews: PreviewProvider {
    static var previews: some View {
        ActivitiesView()
    }
}
