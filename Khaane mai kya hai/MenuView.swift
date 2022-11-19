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
                    RoundedRectangle(cornerRadius: 6)
                        .fill(.pink)
                        .overlay(Text("Desert").foregroundColor(.white))
                    
                    RoundedRectangle(cornerRadius: 6)
                        .fill(.yellow)
                        .overlay(Text("Special").foregroundColor(.black))
                    
                    RoundedRectangle(cornerRadius: 6)
                        .fill(.mint)
                        .overlay(Text("Beverage").foregroundColor(.white))
                }
                .frame(minHeight: 30)
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
