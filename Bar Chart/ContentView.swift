//
//  ContentView.swift
//  Bar Chart
//
//  Created by Mazharul Huq on 6/30/19.
//  Copyright © 2019 Mazharul Huq. All rights reserved.
//

import SwiftUI

struct ContentView : View {
    let rainfallData:[Data] = [Data(month: "Jan", rainfall: 3.25),
                               Data(month: "Feb", rainfall: 2.45),
                               Data(month: "Mar", rainfall: 3.75),
                               Data(month: "Apr", rainfall: 2.20),
                               Data(month: "May", rainfall: 3.70),
                               Data(month: "Jun", rainfall: 5.00),
                               Data(month: "Jul", rainfall: 4.25),
                               Data(month: "Aug", rainfall: 3.15),
                               Data(month: "Sep", rainfall: 2.95),
                               Data(month: "Oct", rainfall: 3.71),
                               Data(month: "Nov", rainfall: 2.23),
                               Data(month: "Dec", rainfall: 1.80)]
    
    var body: some View {
        VStack(alignment: .leading, spacing: 5){
            Text("Monthly Rainfall")
                .font(.largeTitle)
                .underline()
                .foregroundColor(.blue)
                .padding(.bottom)
            HStack(alignment: .bottom, spacing: 5){
                 ForEach(0...11){i in
                     BarWithLabel(month: self.rainfallData[i].month, rainfall: CGFloat(self.rainfallData[i].rainfall))
                 }
            
            }
        } 
    }
}


