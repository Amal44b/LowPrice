//
//  CategoryView.swift
//  LowPrice
//
//  Created by bsmah Ali on 25/08/1444 AH.
//

import SwiftUI

struct CategoryView: View {
    
    @State var searchTerm = " "
    var columnGrid: [GridItem] = [GridItem(.flexible(),spacing: 1), GridItem(.flexible(),spacing: 1), GridItem(.flexible(),spacing: 1)]
    
    struct c_Product {
        var images : Image
        var name : String
        var range : String
        
    }
    
    var category_R: [c_Product] = [
        c_Product(images:Image("Str"), name: "Strawberry",range:"20 ~ 27 SAR "),
        c_Product(images:Image("Grapes"), name: "Grapes",range:"18 ~ 30 SAR "),
        c_Product(images:Image("Apples"), name: "Apples",range:"15 ~ 21 SAR "),
        c_Product(images:Image("Orange"), name: "Orange",range:"12 ~ 20 SAR "),
        c_Product(images:Image("Banana"), name: "Banana",range:"14 ~ 22 SAR "),
        c_Product(images:Image("Peach"), name: "Peach",range:"20 ~ 32 SAR "),
        c_Product(images:Image("AlmondChoclate"), name: "Almond",range:"10 ~ 16 SAR "),
        c_Product(images:Image("Cramela"), name: "Caremla",range:"11 ~ 18 SAR "),
        c_Product(images:Image("DarkChoclate"), name: "DarkChoclate",range:"10 ~ 15 SAR "),
    ]
    var category_P:[c_Product] = [
        c_Product(images:Image("Fruits"), name: "Fruits",range:""),
        c_Product(images:Image("Snacks"), name: "Snacks",range:""),
        c_Product(images:Image("Meat"), name: "Meat",range:""),
        c_Product(images:Image("Vigtables"), name: "Vigtables",range:""),
        c_Product(images:Image("Bakery"), name: "Bakery",range:""),
    ]
    var body: some View {
        VStack {
            NavigationView {
                
                VStack{
                    ScrollView{
                    VStack(){
                        Text("Category").font(.title2)
                            .fontWeight(.bold).foregroundColor(Color("greenish"))
                            
                            .padding(.trailing, 230.0)
                            .navigationBarTitle("Category", displayMode: .inline)
                            .searchable(text: $searchTerm){}
                        
                        ScrollView(.horizontal, showsIndicators: false){
                            HStack(spacing: 25.0 ){
                                ForEach(0..<category_P.count) { index in
                                    
                                    
                                    VStack{
                                        
                                        
                                        Button{}
                                        
                                        
                                    label:{
                                        (category_P[index].images).resizable().frame(width: 60, height: 60).border(Color("greenish"),width: 3).cornerRadius(50)
                                        
                                    }
                                        
                                        
                                        
                                        Text(category_P[index].name)
                                            .foregroundColor(Color("greenish"))
                                            .padding(.bottom, 50.0)
                                    }
                                    
                                    
                                }}               .padding(.trailing,25)
                            
                        }
                        
                       /* if category_P[index].name == "Strawberry" {
                            NavigationLink(destination: ProductdetailsView(())
                        }
                        }*/
                        
                        
                        VStack{
                            
                            Image(systemName: "slider.horizontal.3")
                                .foregroundColor(Color("greenish")).padding(.trailing, 300.0)
                        
                                LazyVGrid(columns: columnGrid, spacing: 10){
                                    ForEach(0..<category_R.count) { index in
                                        ZStack{
                                            RoundedRectangle(cornerRadius:  20).stroke(Color("greenish"), lineWidth:3).frame(width:120 , height:150)
                                            VStack{
                                                (category_R[index].images).resizable().frame(width: 100, height: 70).cornerRadius(20)
                                                Text(category_R[index].name)
                                                    .font(.headline)
                                                    .foregroundColor(Color("greenish"))
                                                    .multilineTextAlignment(.leading)
                                                    .padding(.bottom, 4.0)
                                                HStack(){
                                                    Text(category_R[index].range).font(.caption)
                                                        .fontWeight(.regular)
                                                        .foregroundColor(Color("greenish"))
                                                        .padding(.leading, 18.0)
                                                    //Navigate
                                                    NavigationLink(destination: ProductdetailsView()) {
                                                        Image(systemName: "arrow.up.forward.app.fill")
                                                            .foregroundColor(Color("greenish"))
                                                            .padding(.trailing, 12.0)
                                                        if(category_R[index].name == "Strawberry"){}
                                                    }
                                                }
                                                
                                            }
                                            
                                        }
                                    }
                                }
                                
                            }
                            
                        }
                    }.navigationViewStyle(.stack)
                }
                
                
                Divider()
                
            }
        }
        
    }
}
                    
                    struct CategoryView_Previews: PreviewProvider {
                        static var previews: some View {
                            CategoryView()
                        }
                    }
