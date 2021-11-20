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
    
    @State var timeRemaining : Int = 10
    
    @Binding var playTimer : Bool
    
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
    static var previews: some View {
        TimerView(timeRemaining: 30, playTimer: .constant(false))
            .preferredColorScheme(.dark)
    }
}
