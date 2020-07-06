//
//  AddView.swift
//  GetupApp
//
//  Created by 神村亮佑 on 2020/07/05.
//  Copyright © 2020 神村亮佑. All rights reserved.
//

import SwiftUI

struct AddView: View {
    
    @State private var selectionDate = Date()
    
    var inputform: some View{
        ZStack{
            Rectangle()
                .fill(Color(#colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1)))
                .cornerRadius(40)
                .frame(height: 500)
                .padding(.horizontal)
            
            VStack{
                Text("何時に起きた？")
                    .foregroundColor(.white)
                    .font(.title)
                DatePicker("", selection: $selectionDate, displayedComponents: .hourAndMinute)
                    .padding(.all)
                
                Button(action: {
                    //TODO: Action
                }) {
                    Text("入力")
                        
                        .font(.title)
                        .padding()
                        .background(Color(.white))
                        .cornerRadius(30)
                        .foregroundColor(Color(#colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1)))
                        .padding(10)
                        .overlay(
                            RoundedRectangle(cornerRadius: 20)
                                .stroke(Color.white, lineWidth: 5)
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
        AddView()
            
    }
}
