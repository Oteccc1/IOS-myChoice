//
//  Date.swift
//  My choice
//
//  Created by MacOS on 30.10.2022.
//

import Foundation

func saveDate(){
    let date1 = Date()
    UserDefaults.standard.set(date1, forKey: "unixDate")
    UserDefaults.standard.synchronize()
}

func calcDate() -> Array<Int?>{
    let date1 = UserDefaults.standard.value(forKey: "unixDate")
    let date = Date()

    let diffComponents = Calendar.current.dateComponents([.day], from: date1 as? Date ?? date, to: date)
    let day = diffComponents.day

    let arrayDiff = [day]
    UserDefaults.standard.set(arrayDiff[0], forKey: "DaysFromStart")
    return arrayDiff
}
