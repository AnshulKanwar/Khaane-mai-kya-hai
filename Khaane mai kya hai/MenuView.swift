//
//  MenuView.swift
//  Khaane mai kya hai
//
//  Created by Anshul Kanwar on 19/11/22.
//

import SwiftUI

struct MenuView: View {
    let weekday: Day
    
    var body: some View {
        List {
            Section("Breakfast") {
                ForEach(getMenu(on: weekday)!.breakfast, id: \.self) { meal in
                    Text(meal)
                }
            }
            Section("Lunch") {
                ForEach(getMenu(on: weekday)!.lunch, id: \.self) { meal in
                    Text(meal)
                }
            }
            Section("Dinner") {
                ForEach(getMenu(on: weekday)!.dinner, id: \.self) { meal in
                    Text(meal)
                }
            }
        }
    }
}

struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView(weekday: .Sunday)
    }
}
