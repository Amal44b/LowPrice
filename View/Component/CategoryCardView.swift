//
//  CategoryCardView.swift
//  LowPrice
//
//  Created by bsmah Ali on 27/08/1444 AH.
//

import SwiftUI

struct CategoryCardView: View {
    var cardImage: Image
    var title: String

    var body: some View {
        HStack(alignment: .bottom) {
            Circle()
                .fill(Color.white)
                .frame(width: 50, height: 50)
                .overlay(
                    Group{
                        cardImage
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .cornerRadius(25)
                    }
                )
                .overlay(Circle().stroke(lineWidth: 1).foregroundColor(Color.gray))
            Text("\(title)")
                .fontWeight(.regular)
                .font(Font.system(size: 12))
                .foregroundColor(Color.black)
        }
        .padding(10)
        .background(Color("greenC"))
        .cornerRadius(20)
    }
}

struct CategoryCardView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryCardView(cardImage: Image("bread"), title: "Category")
    }
}
