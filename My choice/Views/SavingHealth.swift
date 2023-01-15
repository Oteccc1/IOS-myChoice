//
//  SavingHealth.swift
//  My choice
//
//  Created by MacOS on 31.10.2022.
//

import SwiftUI

struct SavingHealth: View {
    var parHealth = calcHealth()
    @State var arrayDate = calcDate()
    var body: some View {
        NavigationView{
        VStack{
            ForEach(0..<parHealth.count){index in
                Text(parHealth[index]).padding()
                
            }
            ProgressView(value: Float(arrayDate[0] ?? Int(0.0)), total: 360.0).padding()
        }.navigationTitle("Здоровье")
            
        }
        
    }
}

struct SavingHealth_Previews: PreviewProvider {
    static var previews: some View {
        SavingHealth()
    }
}
