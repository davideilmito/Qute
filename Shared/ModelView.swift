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
   
    
    var body: some View {
        
    
//        NavigationView {
                   
            VStack{
                            
                            Image(activity.image)
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .scaledToFit()
                           
                                
                            
                            Text(activity.descripton)
                            .font(.system(size: 24, weight:.light, design: .rounded))
                            .padding()
                            
                            Spacer()
                            
                            
                }
                        
//        }
                }
            }
        
        

struct ModelView_Previews: PreviewProvider {
    
    @State static var constantActivity = Activity(image: "Cuddle2", type: .cuddle,name: "ActivityCuddle2")
    
    
    static var previews: some View {
        ModelView(showModal: .constant(true), activity: $constantActivity
        )
    }
}
