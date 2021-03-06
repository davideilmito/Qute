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
        
            HStack(spacing:15){
            
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
                        .clipShape(RoundedRectangle(cornerRadius: 40))
                        .scaledToFit()
                        .frame(width: 162  , height: 126)
                        .overlay(RoundedRectangle(cornerRadius: 40).stroke(Color(red: 143/255, green: 149/255, blue: 211/255),lineWidth: 6))
                        
                }
                
            }
            
            
        }
        }
            .padding([.top, .leading, .bottom], 16)
        }
    }
}
    

struct ActivityView: View {
    
    @State private var showModal = false
    @State private var activityGesture = Activity(image: "", type: .relax, name: "")
    var rand : Int
    var activityStruct : ActivitiesStore
    
     init(){
        UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor : UIColor.init(Color(red: 143/255, green: 149/255, blue: 211/255))]
        self.activityStruct = ActivitiesStore()
        self.rand = Int.random(in: 0...activityStruct.activities.count-1)
        
    }
    
    var body: some View {
            
        
        NavigationView{
            
        
        
        ScrollView(.vertical, showsIndicators: false){
            VStack(spacing: 2){
                   
                
//          ACTIVITY OF THE DAY
                Text("Highlight of the day")
                    
                    .font(.system(size: 28, weight:.bold, design: .rounded))
                    .frame(width: 358, height: 20, alignment: .leading)
                    .padding()
                
//        CHECK GENERARE NUMERO RANDOMICO BASATO SU SEED
//
                Button {
                    
                    
                    activityGesture = activityStruct.activities[8]
                    
                    
                    showModal.toggle()
                    
                    
                } label: {
                
                    Image(activityStruct.activities[8].image)
                    .resizable()
                    .frame(width: 350, height: 268)
                    .aspectRatio(contentMode: .fit)
                    .clipShape(RoundedRectangle(cornerRadius: 60))
                    
                    .scaledToFit()
                    .overlay(RoundedRectangle(cornerRadius: 60).stroke(Color(red: 143/255, green: 149/255, blue: 211/255),lineWidth: 6))
                    .padding(.bottom,25)
                }
                
                
                
                
//            RELAX HORIZONTAL STACK          //
                Text("Relax")
                    .font(.system(size: 28, weight:.semibold, design: .rounded))
                    .frame(width: 358, height: 20, alignment: .leading)
                
                HorizCategoryView(showModal: $showModal, activitiesArray: activityStruct.activities, type: .relax,activityGesture: $activityGesture)
                    
                    .padding(.bottom,20)
                
                
//            FUN HORIZONTAL STACK          //
                Text("Fun")
                    .font(.system(size: 28, weight:.semibold, design: .rounded))
                    .frame(width: 358, height: 20, alignment: .leading)
                
                
                HorizCategoryView(showModal: $showModal, activitiesArray: activityStruct.activities, type: .fun,activityGesture: $activityGesture)
                
                    .padding(.bottom,20)
                
//            CUDDLE HORIZONTAL STACK
    //
                Text("Cuddle")
                    .font(.system(size: 28, weight:.semibold, design: .rounded))
                    .frame(width: 358, height: 20, alignment: .leading)
                
                
                HorizCategoryView(showModal: $showModal, activitiesArray: activityStruct.activities, type: .cuddle,activityGesture: $activityGesture)

            }
        
            
        }.navigationTitle("Activities")
                .sheet(isPresented: $showModal, content: {
            ModelView(showModal: $showModal, activity: $activityGesture)})
            
        }

}

}


struct ActivityView_Previews: PreviewProvider {
    static var previews: some View {
        ActivityView()
    }
}

