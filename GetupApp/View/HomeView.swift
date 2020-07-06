//
//  HomeView.swift
//  GetupApp
//
//  Created by 神村亮佑 on 2020/07/05.
//  Copyright © 2020 神村亮佑. All rights reserved.
//

import SwiftUI
import BottomBar_SwiftUI
import SwiftUICharts

struct HomeView: View {
    
    
    var chartview: some View{
        LineView(data: [8,23,54,32,12,37,7,23,43], title: "Time Chart").padding(.all)
        
    }
    
    
    
    var body: some View {
        
        ZStack{
            VStack {
                    
                chartview
            }
        }
        
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
