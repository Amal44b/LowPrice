//
//  LeadingBarItem.swift
//  LowPrice
//
//  Created by bsmah Ali on 27/08/1444 AH.
//

import SwiftUI

struct LeadingBarItem: View {
    var body: some View {
        NavigationLink(destination: BasketView()) {
            ZStack {
                Circle()
                    .frame(width: 45, height: 45)
                    .overlay(
                        Group{
                            Image("Logo")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                        }
                    )
                    .overlay(Circle().stroke(lineWidth: 1).foregroundColor(Color.gray))
            }
        }
    }
}

struct LeadingBarItem_Previews: PreviewProvider {
    static var previews: some View {
        LeadingBarItem()
    }
}
