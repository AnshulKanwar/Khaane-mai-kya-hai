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
    let breakfast: [Dish]
    let lunch: [Dish]
    let dinner: [Dish]
}

let menu: [Day: Meal] = [
    .Sunday: Meal(
        breakfast: [.cutlets, .idliSambhar],
        lunch: [.choley, .bhature, .sweetLassi],
        dinner: [.dalTadka, .sarsonDaSaag, .makkiDiRoti, .moongDalHalwa]
    ),
    .Monday: Meal(
        breakfast: [.cornflakes, .paneerParantha],
        lunch: [.jeeraAloo, .dalDhaba],
        dinner: [.dalMakhani, .cornPalak, .jalebi]
    ),
    .Tuesday: Meal(
        breakfast: [.poha, .alooPyaazParantha],
        lunch: [.wada, .sambhar, .lemonRice, .uttapam, .tomatoChutney],
        dinner: [.pindiChanna, .mixVeg, .gulabJamun, .tomatoSoup]
    ),
    .Wednesday: Meal(
        breakfast: [.breadPakoda + .vegSandwich, .mixParantha],
        lunch: [.kadaiPaneer, .moongDal],
        dinner: [.dalFry, .alooMethi, .besanBarfi + .boondiLadoo]
    ),
    .Thursday: Meal(
        breakfast:[.macroni + .vermicilliUpma, .dalParantha],
        lunch: [.kadaiSoya, .rajma, .peasPulao],
        dinner: [.lobia, .alooGajarMatar, .peasPulao, .shahiTukda]
    ),
    .Friday: Meal(
        breakfast: [.sweetCorn, .plainParantha, .alooBhaji],
        lunch: [.pavBhaji, .vegBiryani],
        dinner: [.dalArharTadka, .paneerMakhani + .palakPaneer, .sujiHalwa]
    ),
    .Saturday: Meal(
        breakfast: [.dalia, .alooGobiParantha],
        lunch: [.matarSoyaKeema, .kadhiPakoda],
        dinner: [.dalMakhani, .pasta + .manchurain, .fruitCake]
    ),
]

func getMenu(on day: Day) -> Meal {
    menu[day]!
}
