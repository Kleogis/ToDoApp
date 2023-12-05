//
//  TodoListApp.swift
//  TodoList
//
//  Created by Viktoriia Liu on 10/23/23.
//

import SwiftUI

/*
 
 MVVM Architecture
 
 Model - data point
 View - UI
 ViewModel - manager Models for View
 
 */
@main
struct TodoListApp: App {
    
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
