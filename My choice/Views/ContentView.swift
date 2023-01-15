//
//  ContentView.swift
//  My choice
//
//  Created by MacOS on 30.10.2022.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        TabView {
            MainPage()
                .tabItem {
                    Label("Главная", systemImage: "1.circle")
                }
            SavingMoney()
                .tabItem {
                    Label("Финансы", image: "MoneyIco").frame(height: 10)
                }
            SavingHealth()
                .tabItem {
                    Label("Здоровье", image: "HealthIco")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
