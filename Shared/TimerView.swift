//
//  TimerView.swift
//  Qute
//
//  Created by Davide Biancardi on 20/11/21.
//

import SwiftUI


func convertSecondsToTime(timeInSeconds: Int) -> (Int, Int){
    
    let minutes = timeInSeconds/60
    let seconds = timeInSeconds % 60
    
    return (minutes,seconds)
}


struct TimerView: View {
    
    @EnvironmentObject var personalPet: Pet
    
    @State var timeRemaining : Int = 10

    @Binding var playTimer : Bool
    
    @Binding var activity : Activity
    @Binding var flash : Bool
    
    @Binding var start : Bool
    @Binding var end : Bool
    
    
    let timer = Timer.publish(every: 1, on: .main, in:
                                    .common).autoconnect()
    
    var body: some View {
                
        Text(!start ? String(format:"%2i:%02i",convertSecondsToTime(timeInSeconds: timeRemaining).0,convertSecondsToTime(timeInSeconds: timeRemaining).1):String(format:"%2i",convertSecondsToTime(timeInSeconds: timeRemaining).0))
                .font(.system(size: 40, weight: .medium, design: .rounded))
                .foregroundColor(.white)
                                
            .onReceive(timer) { _ in
                
                if playTimer {
                    
                    if timeRemaining > 0 {
        
                        timeRemaining -= 1
                
                    }else if timeRemaining == 0{
                        
                       
                        start=true
                        timeRemaining = activity.timer
                        playTimer.toggle()
                        end = true
                        switch activity.type{
                            
                            
                        case .relax:
                            personalPet.relax += activity.points
                                personalPet.relax = personalPet.relax > 100 ? 100 : personalPet.relax
                        
                        
                        case .fun: personalPet.happiness += activity.points
                       
                            personalPet.happiness = personalPet.happiness > 100 ? 100 : personalPet.happiness
                       
                        case .cuddle: personalPet.attachment += activity.points
                 
                        personalPet.attachment = personalPet.attachment > 100 ? 100 : personalPet.attachment
                       
                            
                        default:
                            print("")
                            
                            
                            
                        }
                        
                    
                    }
  
                }else {flash.toggle()}
            }

         
       
    }
                
                
                
}
    
    

