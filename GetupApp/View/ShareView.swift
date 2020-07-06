//
//  ShareView.swift
//  GetupApp
//
//  Created by 神村亮佑 on 2020/07/05.
//  Copyright © 2020 神村亮佑. All rights reserved.
//

import SwiftUI

struct ShareView: View {
    
    
    var shareform: some View{
        VStack {
            Button(action: {
                //TODO: Action
            }) {
                Text("Twitterでシェア")
                    .font(.title)
                    .padding()
                    .background(Color(.white))
                    .cornerRadius(30)
                    .foregroundColor(Color(#colorLiteral(red: 0.1019607857, green: 0.2784313858, blue: 0.400000006, alpha: 1)))
                    .padding(10)
                
            }
            
            
            Button(action: {
                //TODO: Action
            }) {
                Text("Facebookでシェア")
                    
                    .font(.title)
                    .padding()
                    .background(Color(.white))
                    .cornerRadius(30)
                    .foregroundColor(Color(#colorLiteral(red: 0.1019607857, green: 0.2784313858, blue: 0.400000006, alpha: 1)))
                    .padding(10)
                
            }
            
            Button(action: {
                //TODO: Action
            }) {
                Text("Instagramでシェア")
                    
                    .font(.title)
                    .padding()
                    .background(Color(.white))
                    .cornerRadius(30)
                    .foregroundColor(Color(#colorLiteral(red: 0.1019607857, green: 0.2784313858, blue: 0.400000006, alpha: 1)))
                    .padding(10)
                
            }
        }
    }
    
    
    
    
    
    
    var body: some View {
        ZStack{
            Rectangle()
                .fill(Color(#colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)))
                .cornerRadius(40)
                .frame(height: 500)
                .padding(.horizontal)
            
            shareform
        }
    }
}

struct ShareView_Previews: PreviewProvider {
    static var previews: some View {
        ShareView()
    }
}
