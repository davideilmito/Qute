//
//  QuteApp.swift
//  Shared
//
//  Created by Davide Biancardi on 17/11/21.
// ghgh

import SwiftUI


@main
struct QuteApp: App {
    
    @StateObject var personalPet = Pet(happiness: Int.random(in: 0...100), attachment: Int.random(in:0...100), relax: Int.random(in: 0...100))
    
    var body: some Scene {
        WindowGroup {
            HomeView().environmentObject(personalPet)
        }
    }
}
