//
//  ContentView.swift
//  Khaane mai kya hai
//
//  Created by Anshul Kanwar on 19/11/22.
//

import SwiftUI

struct ContentView: View {
    let weekday = Day(rawValue: DateFormatter().weekdaySymbols[ Calendar.current.component(.weekday, from: Date()) - 1])!
    
    var body: some View {
        MenuView(weekday: weekday)
            .navigationTitle(weekday.rawValue)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ContentView()
        }
    }
}
