//
//  QuestionsView.swift
//  My choice
//
//  Created by MacOS on 02.11.2022.
//

import SwiftUI

struct QuestionsView: View {
    @State var price = ""
    @State var countBox = ""
    @State var countDay = ""
    @State var isActive = false
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        NavigationView{
            VStack{
                TextField("Стоимость одной пачки:", text: $price).keyboardType(.numberPad)
                TextField("Количество сигарет в пачке:", text: $countBox).keyboardType(.numberPad)
                TextField("Сколько в среднем вы выкуриваете сигарет за день:", text: $countDay).keyboardType(.numberPad)
                NavigationLink(destination: MainPageFirst() , isActive: $isActive) {
                    Button(action: {
                        UserDefaults.standard.set(price, forKey: "priceOfSmoke")
                        UserDefaults.standard.set(countBox, forKey: "countSmokeBox")
                        UserDefaults.standard.set(countDay, forKey: "countSmokeDay")
                        UserDefaults.standard.set(true, forKey: "flagDate")
                        UserDefaults.standard.synchronize()
                        saveDate()
                        isActive = true
                    }, label: {
                        Text("Подтвердить")
                    })
                }
            }
        }.navigationBarBackButtonHidden(true)
    }
}

struct QuestionsView_Previews: PreviewProvider {
    static var previews: some View {
        QuestionsView()
    }
}
