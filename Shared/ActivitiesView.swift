//
//  ActivitiesView.swift
//  Qute
//
//  Created by Davide Biancardi on 17/11/21.
//

import SwiftUI
import Foundation


struct HorizontalCategoryView: View {

    @Binding var showModal: Bool
    var activitiesArray: [Activity]
    var type: ActivityCategory
    
    
    var body: some View {
        
        
        ScrollView(.horizontal){
        
            
        HStack(){
            
            ForEach(activitiesArray){
                
                activity in
                
                if activity.type == type{
                    
                    
                    Button {
                        
                        showModal.toggle()
                        
                        
                    } label: {
                    
    
                    Image(activity.image)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .scaledToFit()
                        .frame(width: 134  , height: 134)
        
                
                }.sheet(isPresented: $showModal, content: {
                    ModelView(showModal: $showModal, activity:activity)
                                })
                
            }
            
            
        }
        }
        }
        
        


    }
}
    

struct ActivitiesView: View {
    
    @State private var showModal = false
    
    var activityStruct : ActivitiesStore
    let rand : Int
    init(){
        UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor : UIColor.init(Color(red: 143/255, green: 149/255, blue: 211/255))]
        
        self.activityStruct = ActivitiesStore()
        self.rand = Int.random(in: 0...(activityStruct.activities.count-1))
        
    }
    
    var body: some View {
            
NavigationView{
            
        ScrollView(.vertical){
          
            VStack{
                   
                
//          ACTIVITY OF THE DAY
                Text("Let's do the activity of the day")
                    
                    .font(.system(size: 28, weight:.light, design: .rounded))
                    .frame(width: 358, height: 50, alignment: .leading)
                
//                CHECK GENERARE NUMERO RANDOMICO BASATO SU SEED

                
                Button {
                    
                    showModal.toggle()
                    
                    
                } label: {
                
            Image(activityStruct.activities[rand].image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .scaledToFit()
                    .frame(width: 367, height: 268)
                    
                }
                .sheet(isPresented: $showModal, content: {
                    ModelView(showModal: $showModal, activity:activityStruct.activities[rand])
                                })

                
                
                
//            RELAX HORIZONTAL STACK          //
                Text("Relax")
                    .font(.system(size: 28, weight:.semibold, design: .rounded))
                    .frame(width: 358, height: 50, alignment: .leading)
                
                HorizontalCategoryView(showModal: $showModal, activitiesArray: activityStruct.activities, type: .relax)
                    
                
//            FUN HORIZONTAL STACK          //
                Text("Fun")
                    .font(.system(size: 28, weight:.semibold, design: .rounded))
                    .frame(width: 358, height: 50, alignment: .leading)
                
                HorizontalCategoryView(showModal: $showModal, activitiesArray: activityStruct.activities, type: .fun)
                
                
                
                
//            CUDDLE HORIZONTAL STACK          //
                Text("Cuddle")
                    .font(.system(size: 28, weight:.semibold, design: .rounded))
                    .frame(width: 358, height: 50, alignment: .leading)
                
                
                HorizontalCategoryView(showModal: $showModal, activitiesArray: activityStruct.activities, type: .cuddle)
                
            
                    
           }
                
           
          }.navigationTitle("Activities")
              
        }
        
}

}




    
struct ActivitiesView_Previews: PreviewProvider {
    static var previews: some View {
        ActivitiesView()
    }
}
