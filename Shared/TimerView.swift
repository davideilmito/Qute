//
//  TimerView.swift
//  Qute
//
//  Created by Davide Biancardi on 20/11/21.
//

import SwiftUI


func convertSecondsToTime(timeInSeconds: Int) -> String{
    
    let minutes = timeInSeconds/60
    let seconds = timeInSeconds % 60
    
    return String(format: ("%02i:%02i"), minutes,seconds)
    
}

struct TimerView: View {
    
    @EnvironmentObject var personalPet: Pet
    
    
    @State var timeRemaining : Int = 10
    
    
    @Binding var playTimer : Bool
    
    @Binding var activity : Activity
    
    
    let timer = Timer.publish(every: 1, on: .main, in:
                                    .common).autoconnect()
    
    var body: some View {
                
        Text("\(convertSecondsToTime(timeInSeconds:timeRemaining))")
                .font(.system(size: 40, weight: .medium, design: .rounded))
                .foregroundColor(.white)
                .padding()
                .frame(width: 263, height: 55)
                
            .onReceive(timer) { _ in
                
                if !playTimer {
                    
                    if timeRemaining > 0 {
        
                        timeRemaining -= 1
                
                    }
                    else if timeRemaining == 0 {
                        
                        timeRemaining=activity.timer
                        
                        playTimer.toggle()
                        
                        switch activity.type{
                            
                        case .relax: personalPet.relax += 3
                        
                        case .fun: personalPet.happiness += 3
                        
                        case .cuddle: personalPet.attachment += 10
                        
                        case .none : personalPet.happiness += 10000
                            
                            
                        
                            
                        }
                        
                        
                        
                    }
                }
            }
                
//            Button(action: {playTimer.toggle()}, label:{Text("Play")})
//            
//            Button(action: {playTimer.toggle()}, label:{Text("Stop")})
//                    
       
    }
                
                
                
}
    
    


struct TimerView_Previews: PreviewProvider {
    
    @State static var constantActivity = Activity(image: "Cuddle2", type: .cuddle,name: "ActivityCuddle2")
    

    static var previews: some View {
        TimerView(timeRemaining: 30, playTimer: .constant(false),activity: $constantActivity)
            .preferredColorScheme(.dark)
    }
}
