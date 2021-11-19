//
//  ActivitiesStruct.swift
//  Qute
//
//  Created by Davide Biancardi on 18/11/21.
//

import Foundation
import SwiftUI

struct ActivitiesStore {
    
    var activities: [Activity] = []
    
    
//    RELAX ACTIVITIES
    
    let activityRelax1 = Activity(image: "Relax1", type: .relax,name: "Activityrelax1")
    let activityRelax2 = Activity(image: "Relax2", type: .relax,name: "Activityrelax2")
    let activityRelax3 = Activity(image: "Relax3", type: .relax,name: "Activityrelax3")
   
//    FUN ACTIVITIES
    
    let activityFun1 = Activity(image: "Fun1", type: .fun,name: "ActivityFun1")
    let activityFun2 = Activity(image: "Fun2", type: .fun,name: "ActivityFun2")
    let activityFun3 = Activity(image: "Fun3", type: .fun,name: "ActivityFun3")
   
    
// CUDDLE ACTIVITIES
    
    let activityCuddle1 = Activity(image: "Cuddle1", type: .cuddle,name: "ActivityCuddle1")
    let activityCuddle2 = Activity(image: "Cuddle2", type: .cuddle,name: "ActivityCuddle2")
    let activityCuddle3 = Activity(image: "Cuddle3", type: .cuddle,name: "ActivityCuddle3")
   
    
    init() { self.activities = [activityRelax1,activityRelax2,activityRelax3,activityFun1,activityFun2,activityFun3,activityCuddle1,activityCuddle2,activityCuddle3] }
    
}
