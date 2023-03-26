//
//  AccountView.swift
//  LowPrice
//
//  Created by bsmah Ali on 22/08/1444 AH.
//

import SwiftUI

struct AccountView: View {
    var body: some View {
        ZStack{
                   VStack(alignment: .center,spacing: 16){
                       Text("Account")
                           .font(.title3).bold()
                           .aspectRatio(contentMode: .fit)
                       Spacer()
                       VStack{
                           HStack {
                               Text("Login to your account").foregroundColor(.white)
                           }
                           Text("Sign In")
                               .foregroundColor(.red)
                               .font(.headline)
                               .padding()
                               .background(Color.gray)
                               .cornerRadius(16)
                               .shadow(color: .gray.opacity(0.2), radius: 2, x: 1.0, y: 2)
                           
                       }
                       .padding()
                       .background(Color.gray)
                       .cornerRadius(16)
                       Spacer()
                   }.padding()
                   
               }
               
           }
       }

       struct AccountView_Previews: PreviewProvider {
           static var previews: some View {
               AccountView()
           }
       }
