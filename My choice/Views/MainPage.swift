//
//  MainPage.swift
//  My choice
//
//  Created by MacOS on 31.10.2022.
//

import SwiftUI



struct MainPage: View {
    @State var flag = UserDefaults.standard.bool(forKey: "flagDate")
    @State var flag2 = false
    @State var arrayDate = calcDate()
    @State var arrayDay = calcDay()
    
    
    var body: some View {
        NavigationView{
            ZStack{
                Color.gray.ignoresSafeArea(.all)
            VStack(alignment: .leading, spacing: 50){
                if flag == true{
                    HStack{
                        Image("day").resizable().frame(width: 50, height: 50)
                        Text("Прошло:").padding()
                        Text("\(String(arrayDate[0] ?? 0)) дни").padding()
                    }
                    HStack{
                        Image("smoke").resizable().frame(width: 45, height: 45)
                        Text("Пропущено сигарет:").padding()
                        Text("\(arrayDay[0] ?? 0)").padding()
                    }
                }
                else{
                    NavigationLink(destination: QuestionsView()){
                        Text("Начать")
                    }.navigationTitle("Главная")
                }
            }
            .navigationTitle("Главная")
            }
        }
        
        .navigationBarBackButtonHidden(true)
    }
}

struct MainPage_Previews: PreviewProvider {
    static var previews: some View {
        MainPage()
    }
}
