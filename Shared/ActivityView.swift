//
//  ActivitiesView.swift
//  Qute
//
//  Created by Davide Biancardi on 17/11/21.
//

import SwiftUI
import Foundation




struct HorizCategoryView: View {

    @Binding var showModal: Bool
 
    var activitiesArray: [Activity]
    var type: ActivityCategory
    @Binding var activityGesture: Activity
    
    
    var body: some View {
        
        
        ScrollView(.horizontal,showsIndicators: false){
        
            
        HStack(){
            
            ForEach(activitiesArray){
                
                activity in
                
                if activity.type == type{
                    
                    
                    Button {
                        
                        activityGesture = activity
                
                        showModal.toggle()
                        
                        
                    } label: {
                    
    
                    Image(activity.image)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .scaledToFit()
                        .frame(width: 134  , height: 134)
        
                
                }
                
            }
            
            
        }
        }
        }
        
    
    }
}
    

struct ActivityView: View {
    
    @State private var showModal = false
    @State private var activityGesture = Activity()
    var rand : Int
    
    
    
    var activityStruct : ActivitiesStore
    
    init(){
        UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor : UIColor.init(Color(red: 143/255, green: 149/255, blue: 211/255))]
        
        self.activityStruct = ActivitiesStore()
        self.rand = Int.random(in: 0...activityStruct.activities.count-1)
        
    }
    
    var body: some View {
            
        ScrollView(.vertical, showsIndicators: false){
          
            VStack{
                   
                
//          ACTIVITY OF THE DAY
                Text("Let's do the activity of the day")
                    
                    .font(.system(size: 28, weight:.light, design: .rounded))
                    .frame(width: 358, height: 50, alignment: .leading)
                
//        CHECK GENERARE NUMERO RANDOMICO BASATO SU SEED
//
//                DailyActivityView(showModal: $showModal, activity: $activityGesture, activitiesArray: activityStruct.activities, index: rand)
//,
//
  
                Button {
                    
                    
                    activityGesture = activityStruct.activities[rand]
                    
                    
                    showModal.toggle()
                    
                    
                } label: {
                
                    Image(activityStruct.activities[rand].image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .scaledToFit()
                    .frame(width: 367, height: 268)
                    
                }
                
                
                
                
//            RELAX HORIZONTAL STACK          //
                Text("Relax")
                    .font(.system(size: 28, weight:.semibold, design: .rounded))
                    .frame(width: 358, height: 50, alignment: .leading)
                
                HorizCategoryView(showModal: $showModal, activitiesArray: activityStruct.activities, type: .relax,activityGesture: $activityGesture)
                    
                
//            FUN HORIZONTAL STACK          //
                Text("Fun")
                    .font(.system(size: 28, weight:.semibold, design: .rounded))
                    .frame(width: 358, height: 50, alignment: .leading)
                
                HorizCategoryView(showModal: $showModal, activitiesArray: activityStruct.activities, type: .fun,activityGesture: $activityGesture)
                
                
                
                
//            CUDDLE HORIZONTAL STACK          //
                Text("Cuddle")
                    .font(.system(size: 28, weight:.semibold, design: .rounded))
                    .frame(width: 358, height: 50, alignment: .leading)
                
                
                HorizCategoryView(showModal: $showModal, activitiesArray: activityStruct.activities, type: .cuddle,activityGesture: $activityGesture)
                
            
                    
           }
                
           
        }.navigationTitle("Activities")
            .sheet(isPresented: $showModal, content: {
            ModelView(showModal: $showModal, activity:activityGesture)})
              
        }
        
}





    
struct ActivityView_Previews: PreviewProvider {
    static var previews: some View {
        ActivityView()
    }
}

