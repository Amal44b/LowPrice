//
//  CartButton.swift
//  LowPrice
//
//  Created by bsmah Ali on 26/08/1444 AH.
//

import SwiftUI

struct CartButton: View {
    var numOfProduct: Int
    var body: some View {
        ZStack(alignment: .topTrailing){
            Image(systemName: "cart").padding(.top, 5)
            
            if numOfProduct > 0 {
                Text("\(numOfProduct)").font(.caption2).bold().foregroundColor(Color("greenish")).frame(width: 15, height: 15)}
        }
       
    }
}

struct CartButton_Previews: PreviewProvider {
    static var previews: some View {
        CartButton(numOfProduct: 1)
    }
}
