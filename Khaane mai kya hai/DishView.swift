//
//  DishView.swift
//  Khaane mai kya hai
//
//  Created by Anshul Kanwar on 19/11/22.
//

import SwiftUI

func getColor(type: DishType) -> Color {
    switch type {
    case .basic: return .primary
    case .desert: return .pink
    case .special: return .yellow
    case .beverage: return .mint
    }
}

struct DishView: View {
    let dish: Dish
    
    var body: some View {
        Text(dish.name)
            .foregroundColor(getColor(type: dish.type))
    }
}

struct DishView_Previews: PreviewProvider {
    static var previews: some View {
        List {
            DishView(dish: .dalMakhani)
            DishView(dish: .sujiHalwa)
            DishView(dish: .kadaiPaneer)
            DishView(dish: .tomatoSoup)
        }
    }
}
