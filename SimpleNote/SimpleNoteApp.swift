//
//  SimpleNoteApp.swift
//  SimpleNote
//
//  Created by Cam1T on 03/07/2021.
//

import SwiftUI

@main
struct SimpleNoteApp: App {
    
    @StateObject var listViewModel: ListViewModel = ListViewModel()
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ListView()
            }
            .navigationViewStyle(StackNavigationViewStyle())
            .environmentObject(listViewModel)
        }
    }
}
