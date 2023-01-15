//
//  GoalViewFirst.swift
//  My choice
//
//  Created by MacOS on 25.11.2022.
//

import SwiftUI

struct GoalViewFirst: View {
    @State var arrayDate = calcDate()
    @State var calcMon = calcMoney()
    var flag = UserDefaults.standard.bool(forKey: "GoalFirst")
    @State var goalText = ""
    @State var goalMoney = ""
    @State var isActive = false
    @State var moneyStart1 = UserDefaults.standard.integer(forKey: "goalMoney")
    @State var moneyStart = UserDefaults.standard.string(forKey: "goalMoney")
    
    var body: some View {
        if moneyStart1 <= calcMon[0] {
            Text("Цель достигнута")
        }
        VStack{
            ProgressView(value: Float(calcMon[0]), total: 100)
            Text("Насколько вы приблилизись к цели")
            Text(String(calcMon[0] * (arrayDate[0] ?? 0))).padding()
            Text("От")
            Text(String(moneyStart ?? "")).padding()
        }
    }
}

struct GoalViewFirst_Previews: PreviewProvider {
    static var previews: some View {
        GoalViewFirst()
    }
}
