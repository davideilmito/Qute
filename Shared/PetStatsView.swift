//
//  PetStatsView.swift
//  Qute
//
//  Created by Davide Biancardi on 17/11/21.
//

import SwiftUI

struct PetStatsView: View {
    
    @EnvironmentObject var personalPet: Pet
    
    
    init(){
        UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor : UIColor.init(Color(red: 143/255, green: 149/255, blue: 211/255))]
    }
    var body: some View {
        
NavigationView{
    ScrollView(.horizontal,  showsIndicators: false){
    VStack{
                  
                        HStack{
                            VStack{
                                
                                
                            Image ("Doggo1")
                                .resizable()
                                .frame(width: 320, height: 350)
                                .aspectRatio(contentMode: .fit)
                                .clipShape(Circle())
                                .overlay(Circle().stroke (Color(red: 143/255, green: 149/255, blue: 211/255),lineWidth: 6))
                               
                                
                                Text ("\(personalPet.happiness)%")
                                    
                                    .font(.system(size: 72, weight: .heavy,design: .rounded))
                                    .foregroundColor(Color(red: 143/255, green: 149/255, blue: 211/255))
                                
                            Text ("Happiness")
                                
                                    .font(.system(size: 35,weight: .light, design: .rounded))
                                
                                .foregroundColor(Color(red: 143/255, green: 149/255, blue: 211/255))
                            
                        
                        }
                            
                            VStack{
                            
                            Image ("Doggo")
                                .resizable()
                                .frame(width: 320, height: 350)
                                .aspectRatio(contentMode: .fit)
                                
                                .clipShape(Circle())
                                .overlay(Circle().stroke (Color(red: 143/255, green: 149/255, blue: 211/255),lineWidth: 6))
                                
                            
                                Text ("\(personalPet.relax)%")
                                        
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
                               
                            
                                Text ("\(personalPet.attachment)%")
                                        
                                        .font(.system(size: 72, weight: .heavy,design: .rounded))
                                        .foregroundColor(Color(red: 143/255, green: 149/255, blue: 211/255))
                                
                                
                            Text ("Attachment")
                                
                                .font(.system(size: 35,weight: .light, design: .rounded))
                                
                                .foregroundColor(Color(red: 143/255, green: 149/255, blue: 211/255))
                            
                            }
                            
                        
                        }.padding()
                        
    }
            
                
 }.navigationTitle("Pet Stats")
            
        }
        
        
        
        
    }
}

struct PetStatsView_Previews: PreviewProvider {
    static var previews: some View {
        PetStatsView().environmentObject(Pet(happiness: Int.random(in: 0...100), attachment: Int.random(in:0...100), relax: Int.random(in: 0...100)))
    }
}
