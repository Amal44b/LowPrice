//
//  Product.swift
//  LowPrice
//
//  Created by bsmah Ali on 28/08/1444 AH.
//

import Foundation

struct Product: Identifiable, Codable, Hashable {
    var id: Int
    var title: String

    var image: String

}


extension Product {
    static var sampleProducts: [Product] {
        return [Product(id: 1, title: "Enjoy shopping with low cost", image: "noproduct")]
    }
}
