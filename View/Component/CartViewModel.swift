//
//  CartViewModel.swift
//  LowPrice
//
//  Created by bsmah Ali on 27/08/1444 AH.
//

import SwiftUI
class  CartViewModel: ObservableObject {
    @Published var cartProduct: [Product] = []
    @Published var cartProductDic: [Product: Int] = [:]
    @Published var totalPrice: Double = 0
    @Published var showShowcaseSheet: Bool = false
    
   
    func addToCart(addedProduct: Product, quantity: Int){
        let products = cartProductDic.map({$0.key})
        if products.isEmpty {
            withAnimation{
                cartProductDic[addedProduct] = quantity
            }
            return
        }
        for product in products {
            if addedProduct.id == product.id {
                withAnimation{
                    cartProductDic[product]! += quantity
                }
            } else {
             
                if !products.contains(where: {$0.id == addedProduct.id}){
                    withAnimation{
                        cartProductDic[addedProduct] = quantity
                    }
                }
            }
        }
    }
    func changeQuantity(product: Product,quantity: Int){
        cartProductDic[product] = quantity
    }

    func removeFromCart(toRemove: Product){
        cartProductDic.removeValue(forKey: toRemove)
    }
}
