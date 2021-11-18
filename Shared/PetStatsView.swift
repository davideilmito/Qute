//
//  PetStatsView.swift
//  Qute
//
//  Created by Davide Biancardi on 17/11/21.
//

import SwiftUI

struct PetStatsView: View {
    
    init(){
        UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor : UIColor.init(Color(red: 143/255, green: 149/255, blue: 211/255))]
    }
    var body: some View {
        
NavigationView{
    ScrollView(.horizontal,  showsIndicators: false){
    VStack{
                  
                        HStack{
                            VStack{
                                
                            Image ("Doggo")
                                .resizable()
                                .frame(width: 320, height: 350)
                                .aspectRatio(contentMode: .fit)
                                .clipShape(Circle())
                                .overlay(Circle().stroke (Color(red: 143/255, green: 149/255, blue: 211/255),lineWidth: 6))
                                .padding(.leading,25)
                        
                            Text ("25%")
                                    
                                    .font(.system(size: 72, weight: .heavy,design: .rounded))
                                    .foregroundColor(Color(red: 143/255, green: 149/255, blue: 211/255))
                                
                            Text ("Happiness")
                                
                                    .font(.system(size: 35,weight: .light, design: .rounded))
                                
                                .foregroundColor(Color(red: 143/255, green: 149/255, blue: 211/255))
                            
                            }
                            
                            VStack{
                            
                            Image ("Doggo1")
                                .resizable()
                                .frame(width: 320, height: 350)
                                .aspectRatio(contentMode: .fit)
                                
                                .clipShape(Circle())
                                .overlay(Circle().stroke (Color(red: 143/255, green: 149/255, blue: 211/255),lineWidth: 6))
                                .padding(.leading,25)
                            
                                Text ("50%")
                                        
                                        .font(.system(size: 72, weight: .heavy,design: .rounded))
                                        .foregroundColor(Color(red: 143/255, green: 149/255, blue: 211/255))
                                
                            Text ("Relax")
                                    .font(.system(size: 35,weight: .light, design: .rounded))
                
                                .foregroundColor(Color(red: 143/255, green: 149/255, blue: 211/255))
                                
                            }
                            
                            VStack{
                            Image ("Doggo2")
                                .resizable()
                                .frame(width: 320, height: 350)
                                .aspectRatio(contentMode: .fit)
                                
                                .clipShape(Circle())
                                .overlay(Circle().stroke (Color(red: 143/255, green: 149/255, blue: 211/255),lineWidth: 6))
                                .padding(.leading,25)
                            
                                Text ("75%")
                                        
                                        .font(.system(size: 72, weight: .heavy,design: .rounded))
                                        .foregroundColor(Color(red: 143/255, green: 149/255, blue: 211/255))
                                
                            Text ("Attachment")
                                
                                .font(.system(size: 35,weight: .light, design: .rounded))
                                
                                .foregroundColor(Color(red: 143/255, green: 149/255, blue: 211/255))
                            }
                            
                        }
                        Spacer()
                    }
            
                
 }.navigationTitle("Pet Stats")
            
        }
        
        
        
        
    }
}

struct PetStatsView_Previews: PreviewProvider {
    static var previews: some View {
        PetStatsView()
    }
}
