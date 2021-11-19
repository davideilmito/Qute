//
//  ActivityStruct.swift
//  Qute
//
//  Created by Davide Biancardi on 18/11/21.
//

import Foundation
import SwiftUI

enum ActivityCategory :Equatable{

    case relax
    case fun
    case cuddle
    case none
    

}


struct Activity:Identifiable{
    
    var id = UUID()
    var image: String = ""
    var type: ActivityCategory = .none
    
    var descripton: String = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
    var timer : Int = 10
    var name: String = "Dummy Activity"

    init(image: String,type: ActivityCategory,description: String,timer : Int,name: String){
        
        self.image=image
        self.type=type
        self.descripton=description
        self.timer=timer
        self.name=name
        
        
    }

    init(image: String,type: ActivityCategory,name: String){
        
        self.image=image
        self.type=type
        self.name=name
        
    }
    init(){
        
        
        
    }

    

}


