//
//  ChoosePetView.swift
//  Qute
//
//  Created by Matilde Cotroneo on 17/11/21.
//

import Foundation
import SwiftUI


struct ChoosePetView: View {
    var body: some View {
        VStack{
           Spacer ()
            Text("Choose your pet")
                .font(.system(size: 40, design: .rounded))
                .bold()
                .font(.title)
            Spacer ()
            ZStack{
        Image ("cane")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 355, height: 240)
                .overlay(RoundedRectangle(cornerRadius: 60).stroke(Color(red: 143/255, green: 149/255, blue: 211/255),lineWidth: 6))
                
                Text ("Dog")
                    .bold()
                    .font(.system(size: 35, design: .rounded))
                    .padding(.top,180)
                    
                    .foregroundColor(Color(red: 143/255, green: 149/255, blue: 211/255))
            }
            Spacer()
            
            ZStack{
        Image ("gatto")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 355, height: 240)
                .overlay(RoundedRectangle(cornerRadius: 60).stroke(Color(red: 143/255, green: 149/255, blue: 211/255),lineWidth: 6))
                
                Text ("Cat")
                    .bold()
                    .font(.system(size: 35, design: .rounded))
                    .padding(.top,180)
                    
                    .foregroundColor(Color(red: 143/255, green: 149/255, blue: 211/255))
            }
            Spacer()
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ChoosePetView()
    }
}
}
