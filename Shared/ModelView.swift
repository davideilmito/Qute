//
//  ModelView.swift
//  Qute
//
//  Created by Davide Biancardi on 18/11/21.
//

import SwiftUI

struct ModelView: View {
    
    @Binding var showModal: Bool
    @State var activity: Activity = Activity(image: "Relax1", type: .none, name: "Caca")
    
    var body: some View {
        
    
//        NavigationView {
                   
            VStack{
                            
                            Image(activity.image)
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .scaledToFit()
                                
                            Text(activity.name)
                                .font(.system(size: 28, weight:.semibold, design: .rounded))
                                
                                
                            
                            Text(activity.descripton)
                            .font(.system(size: 24, weight:.light, design: .rounded))
                            
                            Spacer()
                            
                            
                }
                        
//        }
                }
            }
        
        

struct ModelView_Previews: PreviewProvider {
    static var previews: some View {
        ModelView(showModal: .constant(true), activity: Activity(image: "Cuddle2", type: .cuddle,name: "ActivityCuddle2")
        )
    }
}
