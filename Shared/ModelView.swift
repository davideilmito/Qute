//
//  ModelView.swift
//  Qute
//
//  Created by Davide Biancardi on 18/11/21.
//

import SwiftUI

struct ModelView: View {
    
    @Binding var showModal: Bool
    @Binding var activity: Activity
    @State var playPause: Bool    = true
    var body: some View {
                           
            VStack{
                
                ScrollView(.vertical){
                            
                    
                    ZStack{
                   
                    
                            Image(activity.image)
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                            .scaledToFit()
                        
                        TimerView(timeRemaining: activity.timer, playTimer: $playPause)
                            .position(x: 60  , y: 40)
                            
                    }
                            Text(activity.descripton)
                            .font(.system(size: 23, weight:.light, design: .rounded))
                            .padding()
                            
                }
                Button(action: {
                     
                    playPause.toggle()
                    
                 }){
                     RoundedRectangle(cornerRadius: 10)
                         .foregroundColor(Color(red: 143/255, green: 149/255, blue: 211/255))
                         .frame(width: 360, height: 55, alignment: .center)
                         .overlay(Text(playPause ? "Let's start!":"Let's have a break!")
                         .font(.system(size: 20, weight: .medium, design: .rounded))
                         .padding()
                         .foregroundColor(.white)
                         )
                     
                 }
               
                }
           
    }
        
}

struct ModelView_Previews: PreviewProvider {
    
    @State static var constantActivity = Activity(image: "Cuddle2", type: .cuddle,name: "ActivityCuddle2")
    
    
    static var previews: some View {
        ModelView(showModal: .constant(true), activity: $constantActivity
        )
    }
}
