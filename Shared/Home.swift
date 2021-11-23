//
//  Home.swift
//  Qute
//
//  Created by Davide Biancardi on 17/11/21.
//

import Foundation
import SwiftUI



struct HomeView: View {
    
    
    @AppStorage("ShowOnBoarding") var showOnBording = true

    init() {
        UIPageControl.appearance().currentPageIndicatorTintColor = UIColor(  Color(red: 143/255, green: 149/255, blue: 211/255))
       UIPageControl.appearance().pageIndicatorTintColor = UIColor.black
       }
    
    var body: some View {
        
        TabView{
            
                ActivityView()
            
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
            .fullScreenCover(isPresented: $showOnBording, content: {OnboardingView(showOnBoarding: $showOnBording)})
        
    }


}





struct OnboardingView: View{
    
    @Binding var showOnBoarding : Bool
    
    
    var body: some View{
        
        
        TabView{
            
           PageView(title: "Qute", subtitle: "Qute will help you to build an healthy reletionship  with your dog.", imageName: "Qute",showDismissedButton: false,showOnBoarding: $showOnBoarding,systemImage: false)
              

            PageView(title: "Take care of your virtual pet", subtitle: "Keep under control his three stats: happiness,relax and attachment.", imageName: "pawprint",showDismissedButton: false,showOnBoarding: $showOnBoarding,systemImage: true)
                

            PageView(title: "Reduce your stress", subtitle: "Discover a lot of relaxing activities to do with your dog", imageName: "sun.haze.fill",showDismissedButton: false,showOnBoarding: $showOnBoarding,systemImage: true)
               

            PageView(title: "Have fun!", subtitle: "Experience the joy of living and playing with your dog.", imageName: "face.smiling",showDismissedButton: true,showOnBoarding: $showOnBoarding,systemImage: true)
               
            
        } // TabView
        .tabViewStyle(PageTabViewStyle())
        

    }
    
}


struct PageView: View {
    
    let title : String
    let subtitle: String
    let imageName: String
    let showDismissedButton: Bool
    @Binding var showOnBoarding : Bool
    let systemImage : Bool
    
    var body: some View{
        
        VStack{
            
            
            if systemImage{
                
                
                Image(systemName: imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 150, height: 150)
                    .padding()
                    .foregroundColor(Color(red: 143/255, green: 149/255, blue: 211/255))
                    
                
            }else {Image(imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 150, height: 150)
                    .padding()
                    .foregroundColor(Color(red: 143/255, green: 149/255, blue: 211/255))
            }
                
                
           
                
                
            
            Text(title)
                .font(.system(size: 42, weight: .bold, design: .rounded))
                .padding()
                
            
            Text(subtitle)
                .font(.system(size: 30, weight:.light, design: .rounded))
                .foregroundColor(Color.secondary)
            
                .padding()
        
            if showDismissedButton{
                
                Button(action: {showOnBoarding.toggle()}){
                    
                    
                    RoundedRectangle(cornerRadius: 10)
                        .foregroundColor(Color(red: 143/255, green: 149/255, blue: 211/255))
                        .frame(width: 200, height: 50, alignment: .center)
                        .overlay(Text("Get started!")
                        .font(.system(size: 20, weight: .medium, design: .rounded))
                        .padding()
                        .foregroundColor(.white))
                }
                
                
            }
            
            
            
        
        } //VStack
        .frame(
              minWidth: 0,
              maxWidth: .infinity,
              minHeight: 0,
              maxHeight: .infinity
            )
    }
        
}



struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView().environmentObject(Pet(happiness: Int.random(in: 0...100), attachment: Int.random(in:0...100), relax: Int.random(in: 0...100)))
    }
}
