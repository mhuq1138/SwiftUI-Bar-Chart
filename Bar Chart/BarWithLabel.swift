//
//  BarWithLabel.swift
//  Bar Chart
//
//  Created by Mazharul Huq on 6/30/19.
//  Copyright © 2019 Mazharul Huq. All rights reserved.
//

import SwiftUI

struct BarWithLabel : View {
    let month:String
    let rainfall:CGFloat
    var body: some View {
        VStack{
            Rectangle()
               .fill(Color.red)
               .frame(width:20.0,height:50*self.rainfall)
            Text(self.month)
        }
    }
}


