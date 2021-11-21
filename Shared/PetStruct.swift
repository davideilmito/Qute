//
//  PetStruct.swift
//  Qute
//
//  Created by Davide Biancardi on 20/11/21.
//

import Foundation
import SwiftUI

class Pet: ObservableObject{
    
    @Published var happiness : Int
    @Published var attachment : Int
    @Published var relax : Int
    
    init(happiness: Int,attachment: Int,relax : Int){
        
        self.relax = relax
        self.attachment = attachment
        self.happiness = happiness
        
    }
    
    
   
    
}




