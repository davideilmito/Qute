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
                        .font(.system(size: 32, weight: .bold, design: .rounded))
                        .fontWeight(.bold)
                        .padding()
                    Image("pug")
                }
                Text("Dogs are known to be faithful loyal companions  ssssssssssssssssssssssssssssssssjjknrgkjnrjtgnrjgnrtnvjgntjncgjnrtgjncvlrngjbrntjknblrntjlnvglnjlrnjvnrtjgnj")
            }
            .padding(.all, 30.0)
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                Text("Button")
                    .padding(.all, 30.0)
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

