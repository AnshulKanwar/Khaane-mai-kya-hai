//
//  Dish.swift
//  Khaane mai kya hai
//
//  Created by Anshul Kanwar on 19/11/22.
//

import Foundation

enum DishType {
    case basic, desert, beverage, special
}

struct Dish {
    var name: String
    var type: DishType
    
    init(name: String, type: DishType = .basic) {
        self.name = name
        self.type = type
    }
    
    static func +(left: Dish, right: Dish) -> Dish {
        return Dish(name: left.name + "/" + right.name, type: left.type)
    }
}

extension Dish {
    static let dalTadka = Dish(name: "Dal Tadka")
    static let cutlets = Dish(name: "Cutlets")
    static let idliSambhar = Dish(name: "Idli Sambhar", type: .special)
    static let bhature = Dish(name: "Bhature", type: .special)
    static let choley = Dish(name: "Choley")
    static let sweetLassi = Dish(name: "Sweet Lassi", type: .beverage)
    static let sarsonDaSaag = Dish(name: "Sarson Da Saag", type: .special)
    static let makkiDiRoti = Dish(name: "Makki Di Roti", type: .special)
    static let moongDalHalwa = Dish(name: "Moong Dal Halwa", type: .desert)
    static let cornflakes = Dish(name: "Cornflakes")
    static let paneerParantha = Dish(name: "Paneer Parantha", type: .special)
    static let jeeraAloo = Dish(name: "Jeera Aloo")
    static let dalDhaba = Dish(name: "Dal Dhaba")
    static let dalMakhani = Dish(name: "Dal Makhani")
    static let cornPalak = Dish(name: "Corn Palak")
    static let jalebi = Dish(name: "Jalebi", type: .desert)
    static let poha = Dish(name: "Poha")
    static let alooPyaazParantha = Dish(name: "Aloo Pyaaz Parantha")
    static let wada = Dish(name: "Wada", type: .special)
    static let sambhar = Dish(name: "Sambhar", type: .special)
    static let lemonRice = Dish(name: "Lemon Rice")
    static let uttapam = Dish(name: "Uttapam")
    static let tomatoChutney = Dish(name: "Tomato Chutney", type: .special)
    static let pindiChanna = Dish(name: "Pindi Channa")
    static let mixVeg = Dish(name: "Mix Veg")
    static let gulabJamun = Dish(name: "Gulab Jamun", type: .desert)
    static let tomatoSoup = Dish(name: "Tomato Soup", type: .beverage)
    static let breadPakoda = Dish(name: "Bread Pakoda")
    static let vegSandwich = Dish(name: "Veg Sandwich")
    static let mixParantha = Dish(name: "Mix Parantha")
    static let kadaiPaneer = Dish(name: "Kadai Paneer", type: .special)
    static let moongDal = Dish(name: "Moong Dal")
    static let dalFry = Dish(name: "Dal Fry")
    static let alooMethi = Dish(name: "Aloo Methi")
    static let besanBarfi = Dish(name: "Besan Barfi", type: .desert)
    static let boondiLadoo = Dish(name: "Boondi Ladoo", type: .desert)
    static let macroni = Dish(name: "Macroni")
    static let vermicilliUpma = Dish(name: "Vermicilli Upma")
    static let dalParantha = Dish(name: "Dal Parantha")
    static let kadaiSoya = Dish(name: "Kadai Soya")
    static let rajma = Dish(name: "Rajma")
    static let peasPulao = Dish(name: "Peas Pulao")
    static let lobia = Dish(name: "Lobia")
    static let alooGajarMatar = Dish(name: "Aloo Gajar Matar")
    static let shahiTukda = Dish(name: "Shahi Tukda", type: .desert)
    static let sweetCorn = Dish(name: "Sweet Corn")
    static let plainParantha = Dish(name: "Plain Parantha")
    static let alooBhaji = Dish(name: "Aloo Bhaji")
    static let pavBhaji = Dish(name: "Pav Bhaji", type: .special)
    static let vegBiryani = Dish(name: "Veg Biryani")
    static let dalArharTadka = Dish(name: "Dal Arhar Tadka")
    static let paneerMakhani = Dish(name: "Paneer Makhani", type: .special)
    static let palakPaneer = Dish(name: "Palak Paneer", type: .special)
    static let sujiHalwa = Dish(name: "Suji Halwa", type: .desert)
    static let dalia = Dish(name: "Dalia")
    static let alooGobiParantha = Dish(name: "Aloo Gobhi Parantha")
    static let matarSoyaKeema = Dish(name: "Matar Soya Keema")
    static let kadhiPakoda = Dish(name: "Kadhi Pakoda")
    static let pasta = Dish(name: "Pasta")
    static let manchurain = Dish(name: "Manchurian")
    static let fruitCake = Dish(name: "Fruit Cake", type: .desert)
}
