//
//  MenuManager.swift
//  Khaane mai kya hai
//
//  Created by Anshul Kanwar on 19/11/22.
//

import Foundation

enum Day: String, CaseIterable {
    case Sunday , Monday, Tuesday, Wednesday, Thursday, Friday, Saturday
}

struct Meal {
    let breakfast: [String]
    let lunch: [String]
    let dinner: [String]
}

let menu: [Day: Meal] = [
    .Sunday: Meal(
        breakfast: ["Cutlets", "Idli Sambhar"],
        lunch: ["Chutney", "Choley", "Bhature", "Sweet Lassi"],
        dinner: ["Dal Tadka", "Sarson ka Saag", "Makki ki Roti", "Moong Dal Halwa"]
    ),
    .Monday: Meal(
        breakfast: ["Cornflakes", "Paneer Parantha"],
        lunch: ["Jeera Aloo", "Dal Dhaba"],
        dinner: ["Dal Makhani", "Corn Palak", "Jalebi"]
    ),
    .Tuesday: Meal(
        breakfast: ["Poha", "Aloo Pyaaz Parantha"],
        lunch: ["Wada", "Sambhar", "Lemon Rice", "Uttapam", "Tomato Chutney"],
        dinner: ["Pindi Channa", "Mix Veg", "Gulab Jamun", "Tomato Soup"]
    ),
    .Wednesday: Meal(
        breakfast: ["Bread Pakoda/Veg Sandwich", "Mix Parantha"],
        lunch: ["Kadai Paneer", "Moong Dal"],
        dinner: ["Dal Fry", "Aloo Methi", "Besan Barfi/Boondi Ladoo"]
    ),
    .Thursday: Meal(
        breakfast:["Macroni/Vermicilli Upma", "Dal Parantha"],
        lunch: ["Kadai Soya", "Rajma", "Peas Pulao"],
        dinner: ["Lobai", "Aloo Gajar Matar", "Peas Pulao", "Sahi Tukda"]
    ),
    .Friday: Meal(
        breakfast: ["Sweet Corn", "Plain Parantha", "Aloo Bhaji"],
        lunch: ["Pav Bhaji", "Veg Biryani"],
        dinner: ["Dal Arhar Tadka", "Paneer Makhani/Palak Paneer", "Veg Pulao", "Suji Halwa"]
    ),
    .Saturday: Meal(
        breakfast: ["Dalia", "Aloo Gobi Parantha"],
        lunch: ["Matar Soya Keema", "Kadhai Pakoda"],
        dinner: ["Dal Makhani", "Pasta/Manchurian", "Fruit Cake"]
    ),
]

func getMenu(on day: Day) -> Meal? {
    menu[day]
}
