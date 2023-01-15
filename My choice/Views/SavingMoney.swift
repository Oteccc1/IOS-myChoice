//
//  SavingMoney.swift
//  My choice
//
//  Created by MacOS on 31.10.2022.
//

import SwiftUI

struct SavingMoney: View {
    @State var arrayDate = calcDate()
    @State var calcMon = calcMoney()
    var body: some View {
        NavigationView{
            VStack(spacing: 50){
            VStack(alignment: .leading, spacing: 50){
                HStack{
                    Image("money").resizable().frame(width: 40, height: 40)
                    Text("Вы сэкономили:").padding()
                    Text(String(calcMon[0] * (arrayDate[0] ?? 0))).padding()
                }
                HStack{
                    Image("month").resizable().frame(width: 50, height: 50)
                    Text("Через месяц эта сумма составит:").padding()
                    Text(String(calcMon[0] * (arrayDate[0] ?? 0) + calcMon[0] * 30)).padding()
                }
                
            }
        .navigationTitle("Финансы")
                NavigationLink(destination: GoalView()){
                    Text("Цель")
                }
            }
        }
    }
}

struct SavingMoney_Previews: PreviewProvider {
    static var previews: some View {
        SavingMoney()
    }
}
