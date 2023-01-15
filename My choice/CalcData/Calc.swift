//
//  Calc.swift
//  My choice
//
//  Created by MacOS on 02.11.2022.
//

import Foundation

func calcDay() -> Array<Int?> {
    
    let money = UserDefaults.standard.integer(forKey: "priceOfSmoke")
    print(money)
    
    let countBox = UserDefaults.standard.integer(forKey: "countSmokeBox")
    print(countBox)
    
    let date = UserDefaults.standard.integer(forKey: "DaysFromStart")
    print(date)
    
    let smokeDay = UserDefaults.standard.integer(forKey: "countSmokeDay")
    print(smokeDay)
    let day = date * smokeDay
    print(day)
    let sp = [day]
    
    return sp
    
}
