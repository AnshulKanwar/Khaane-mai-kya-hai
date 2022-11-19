//
//  Khaane_mai_kya_haiApp.swift
//  Khaane mai kya hai
//
//  Created by Anshul Kanwar on 19/11/22.
//

import SwiftUI

@main
struct Khaane_mai_kya_haiApp: App {
    @State private var presentedDay: [Day] = []
    
    let weekday = Day(rawValue: DateFormatter().weekdaySymbols[ Calendar.current.component(.weekday, from: Date()) - 1])!
    
    var body: some Scene {
        WindowGroup {
            NavigationStack(path: $presentedDay) {
                ContentView(presentedDay: $presentedDay)
            }
            .onAppear {
                presentedDay = [weekday]
            }
        }
    }
}
