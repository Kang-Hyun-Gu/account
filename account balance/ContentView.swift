//
//  ContentView.swift
//  account balance
//
//  Created by 강현구 on 2020/08/07.
//  Copyright © 2020 강현구. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var priceList : PriceList = PriceList()
    var body : some View {
        NavigationView {
            Form {
                ForEach(priceList.prices) { item in
                    ListCell(price : item)
                    Button(action : self.adding) {
                        Text("Add")
                    }
                }
            }
            .navigationBarTitle(Text("전체 지출"))
            .navigationBarItems(leading: NavigationLink(destination: add_price_list(priceList: self.priceList)) {
                Text("추가")
                    .foregroundColor(.blue)
            }, trailing: EditButton())
        }
    }
    func adding() {
        var newPrices : [Price] = []
        for price in priceList.prices {
            if price.add == "" {
                newPrices.append(Price(id: price.id, type: price.type, price: 1, add: ""))
            }
            else {
                newPrices.append(Price(id: price.id, type: price.type, price: Int(price.add)! + price.price, add: ""))
            }
        }
        priceList.prices = newPrices
    }
}

struct ListCell : View{
    var price: Price
    var body: some View {
        VStack{
            HStack {
                Text("사용한 곳:")
                    .font(.headline)
                    .foregroundColor(Color.blue)
                
                Text(price.type)
                    .bold()
                Divider()
                Text("총 지출:")
                    .font(.headline)
                    .foregroundColor(Color.red)
                Text("₩")
                Text(String(price.price))
                .bold()
            }
            TextField("추가 지출을 입력하세요",text : price.$add)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            }
        }
    }







struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(priceList: PriceList())
    }
}
