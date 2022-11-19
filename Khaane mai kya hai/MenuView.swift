//
//  MenuView.swift
//  Khaane mai kya hai
//
//  Created by Anshul Kanwar on 19/11/22.
//

import SwiftUI

struct MenuView: View {
    let weekday: Day
    
    // TODO: Optimize
    var body: some View {
        List {
            Section("Breakfast") {
                ForEach(getMenu(on: weekday).breakfast, id: \.name) { dish in
                    DishView(dish: dish)
                }
            }
            Section("Lunch") {
                ForEach(getMenu(on: weekday).lunch, id: \.name) { dish in
                    DishView(dish: dish)
                }
            }
            Section("Dinner") {
                ForEach(getMenu(on: weekday).dinner, id: \.name) { dish in
                    DishView(dish: dish)
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
