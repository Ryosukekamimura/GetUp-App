//
//  AddView.swift
//  GetupApp
//
//  Created by 神村亮佑 on 2020/07/05.
//  Copyright © 2020 神村亮佑. All rights reserved.
//

import SwiftUI

struct AddView: View {
    
    let endTime = Calendar.current.date(byAdding: .hour,value: 24,  to: Date())!
    
    var timeFormatter: DateFormatter{
        let formatter = DateFormatter()
        formatter.timeStyle = .short
        return formatter
    }
    
    
    
    @State private var gotobedTime = Date()
    @State private var getupTime = Date()
    


    
    
    var inputform: some View{
        ZStack{
            Rectangle()
                .fill(Color(#colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1)))
                .cornerRadius(40)
                .frame(height: 500)
                .padding(.horizontal)
            
            VStack{
                
                HStack {
                    
                    Image("sleep_image")
                        .resizable()
                        .frame(width: 120, height: 100)
                    
                    DatePicker("", selection: $gotobedTime,in: Date()...endTime, displayedComponents: .hourAndMinute)
                        .labelsHidden()
                        .frame(width: 150, height: 80, alignment: .center)
                        .clipped()
                        .padding(.vertical)
                }
                HStack {
                    
                    Image("getup_image")
                        .resizable()
                        .frame(width: 120, height: 100)
                    
                    
                    DatePicker("", selection: $getupTime, displayedComponents: .hourAndMinute)
                        .labelsHidden()
                        .frame(width: 150, height: 80, alignment: .center)
                        .clipped()
                        .padding(.vertical)
                    
                    
                }
                
                
                
                
                
                Button(action: {
                    
                    
                }) {
                    Text("入力")
                        .font(.title)
                        .fontWeight(.semibold)
                        .padding()
                        .background(Color(#colorLiteral(red: 0.1710006297, green: 0.1710006297, blue: 0.1710006297, alpha: 1)))
                        .cornerRadius(30)
                        .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                        .padding(10)
                        .overlay(
                            RoundedRectangle(cornerRadius: 20)
                                .stroke(Color.black, lineWidth: 5)
                    )
                }
            }
        }
    }
    
    
    var body: some View {
        
        ZStack{
            inputform
        }
    }
}


struct AddView_Previews: PreviewProvider {
    static var previews: some View {
        AddView().environment(\.locale, Locale(identifier: "ja_JP"))
        
    }
}
