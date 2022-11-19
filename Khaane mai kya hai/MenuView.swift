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
            Section ("Legend") {
                HStack {
                    HStack {
                        Circle()
                            .fill(.pink)
                            .frame(width: 20)
                        Text("Desert")
                    }
                    Spacer()
                    HStack {
                        Circle()
                            .fill(.yellow)
                            .frame(width: 20)
                        Text("Special")
                    }
                    Spacer()
                    HStack {
                        Circle()
                            .fill(.mint)
                            .frame(width: 20)
                        Text("Beverages")
                    }
                }
                .padding(.vertical)
            }
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
