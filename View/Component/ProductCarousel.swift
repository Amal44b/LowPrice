//
//  ProductCarousel.swift
//  LowPrice
//
//  Created by bsmah Ali on 27/08/1444 AH.
//

import SwiftUI

struct ProductCarousel: View {
    
    @EnvironmentObject var cart: CartViewModel
    @State private var product: Product? = nil
    @State private var currentIndex: Int = 0
    private let timer = Timer.publish(every: 3, on: .main, in: .common).autoconnect()
    private let screenSize = UIScreen.main.bounds
    let products: [Product]
    
    init(products: [Product]) {
        self.products = products
        UIPageControl.appearance().currentPageIndicatorTintColor = UIColor(Color.secondary)
        UIPageControl.appearance().pageIndicatorTintColor = UIColor(Color.primary)
    }
    
    var body: some View {
        VStack(spacing:0) {
            TabView(selection: $currentIndex){
                ForEach(0..<products.count, id: \.self){index in
                    Button(action:{
                        withAnimation{
                            self.product = products[index]
                        }
                    }){
                        ProductCarouselCard(product: products[index])
                            .frame(width: (screenSize.width - 24))
                            .shadow(color: .gray.opacity(0.1), radius: 3, x: 1, y: 2)
                    }
                    .tag(index)
                }
            }
            .frame(height: 270)
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
            .onReceive(timer) { input in
                animateCarousel()
            }
        }
    }
    func animateCarousel(){
        if currentIndex <= 3 {
            withAnimation{
            currentIndex += 1
            }
        } else {
            withAnimation{
            currentIndex = 0
            }
        }
    }
}

struct ProductCarousel_Previews: PreviewProvider {
    static var previews: some View {
        ProductCarousel(products: Product.sampleProducts)
    }
}
