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
                    Label("Главная", systemImage: "deskclock")
                }
            SavingMoney()
                .tabItem {
                    Label("Финансы", systemImage: "dollarsign.circle")
                }
            SavingHealth()
                .tabItem {
                    Label("Здоровье", systemImage: "cross.case")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
