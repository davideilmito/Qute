//
//  PetCardView.swift
//  Qute (iOS)
//
//  Created by Marco Pescosolido on 17/11/21.
//
import SwiftUI

struct PetCardView: View {
    var body: some View {
        VStack {
            VStack {
                VStack {
                    Text("Dog")
                        .font(.system(size: 40, weight: .bold, design: .rounded))
                        .fontWeight(.bold)
                        .padding()
                    
                    Image ("cane")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 355, height: 240)
                            .overlay(RoundedRectangle(cornerRadius: 60).stroke(Color(red: 143/255, green: 149/255, blue: 211/255),lineWidth: 6))
                      
                }
                Text("Dogs are known to be faithful and loyal companions,they’re good family pets as they’re affectionate, gentle and fiercely protective of their owners.                                      They possess patience, intelligence and gentleness,so they can practice activities with humans, letting them relax and stress out.")
            } .font(.system(size: 20))
            .padding(.all, 40)
            
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                Text("Button")
                    .padding(.all, 35)
                    .cornerRadius(58)
                    .background(Color(red: 143/255, green: 149/255, blue: 211/255))
                    .foregroundColor(.white)
            }
        }
    }
}

struct PetCardView_Previews: PreviewProvider {
    static var previews: some View {
        PetCardView()
    }
}

