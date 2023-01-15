//
//  GoalView.swift
//  My choice
//
//  Created by MacOS on 25.11.2022.
//

import SwiftUI

struct GoalView: View {
    @State var arrayDate = calcDate()
    @State var calcMon = calcMoney()
    var flag = UserDefaults.standard.bool(forKey: "GoalFirst")
    @State var goalText = ""
    @State var goalMoney = ""
    @State var isActive = false
    @State var moneyStart1 = UserDefaults.standard.integer(forKey: "goalMoney")
    @State var moneyStart = UserDefaults.standard.string(forKey: "goalMoney")
    
    var body: some View {
        if flag == true{
            if moneyStart1 <= calcMon[0] {
                Text("Цель достигнута")
            }
            VStack{
                ProgressView(value: Float(calcMon[0] * (arrayDate[0] ?? 0)), total: Float(moneyStart1))
                Text("На сколько вы приблилизись к цели")
                Text(String(calcMon[0] * (arrayDate[0] ?? 0))).padding()
                Text("От")
                Text(String(moneyStart ?? ""))
            }
        }
        else{
            VStack{
                TextField("Введите то на что хотите накопить:", text: $goalText)
                TextField("Введите сумму которую хотите накопить:", text: $goalMoney).keyboardType(.numberPad)
                NavigationLink(destination: GoalViewFirst() , isActive: $isActive) {
                    Button(action: {
                        UserDefaults.standard.set(goalText, forKey: "goalText")
                        UserDefaults.standard.set(goalMoney, forKey: "goalMoney")
                        UserDefaults.standard.set(true, forKey: "GoalFirst")
                        isActive = true
                    }, label: {
                        Text("Подтвердить")
                    })
                }
            }
        }
    }
}

struct GoalView_Previews: PreviewProvider {
    static var previews: some View {
        GoalView()
    }
}
