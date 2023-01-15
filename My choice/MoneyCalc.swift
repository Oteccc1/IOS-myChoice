//
//  MoneyCalc.swift
//  My choice
//
//  Created by MacOS on 16.11.2022.
//

import Foundation


func calcMoney() -> Array<Int>{
    let priceBox = UserDefaults.standard.integer(forKey: "priceOfSmoke")
    let countBox = UserDefaults.standard.integer(forKey: "countSmokeBox")
    let countDay = UserDefaults.standard.integer(forKey: "countSmokeDay")
    if countBox == 0{
        let sp = [countDay * (priceBox / 25)]
        return sp
    }
    else{
        let sp = [countDay * (priceBox / countBox)]
        return sp
    }
    
}
