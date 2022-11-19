//
//  ContentView.swift
//  Khaane mai kya hai
//
//  Created by Anshul Kanwar on 19/11/22.
//

import SwiftUI

struct ContentView: View {
    @Binding var presentedDay: [Day]
    
    var body: some View {
        List(Day.allCases, id: \.rawValue) { day in
            NavigationLink(day.rawValue, value: day)
        }
        .navigationDestination(for: Day.self) { day in
            MenuView(weekday: day)
                .navigationTitle(day.rawValue)
        }
        .navigationTitle("Menu")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            ContentView(presentedDay: .constant([.Sunday]))
        }
    }
}
