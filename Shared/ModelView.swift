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
    @State var timer: Bool   = false
    @State var start : Bool = true
    @State var flash : Bool = false
    @State var end : Bool = false
     
    var body: some View {
                           
            VStack{
                
                ScrollView(.vertical){
                            
                    
                    ZStack{
                   
                    
                            Image(activity.image)
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                            .scaledToFit()
                        
                        Group{
                            
                            HStack(spacing: 4){
                                
                                TimerView(timeRemaining: activity.timer, playTimer: $timer,activity: $activity,flash: $flash, start: $start, end: $end)
                           
                            Text(start ? "Min":"")
                                .font(.system(size: 28, weight:.light, design: .rounded))
                                .foregroundColor(.white)
                            }
                        }
                        .position(x: 60  , y: 40)
                        .opacity(flash || timer || start ? 100:0)
                        
                        
                    }
                            Text(activity.descripton)
                            .font(.system(size: 23, weight:.light, design: .rounded))
                            .padding()
                            
                }
                Button(action: {
                     
                    timer.toggle()
                   start = false
                    
                 }){
                     RoundedRectangle(cornerRadius: 10)
                         .foregroundColor(Color(red: 143/255, green: 149/255, blue: 211/255))
                         .frame(width: 360, height: 55, alignment: .center)
                         .overlay(Text(!timer ? "Let's start!":"Let's have a break!")
                         .font(.system(size: 20, weight: .medium, design: .rounded))
                         .padding()
                         .foregroundColor(.white)
                         
                         )
                     
                 }
               
            }.alert(isPresented: $end){
                
                Alert(title:Text( "🎉 Good job!"), message: Text("Your pet earned \(activity.points) points in the  \(activity.type.returnString().lowercased()) stat."), dismissButton: .default(Text("Ok")))
                
            }
           
    }
        
}

struct ModelView_Previews: PreviewProvider {
    
    @State static var constantActivity = Activity(image: "Cuddle2", type: .relax,name: "ActivityCuddle2")
    
    
    static var previews: some View {
        ModelView(showModal: .constant(true), activity: $constantActivity
        )
    }
}
