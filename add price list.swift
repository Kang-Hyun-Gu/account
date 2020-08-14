//
//  add price list.swift
//  account balance
//
//  Created by 강현구 on 2020/08/07.
//  Copyright © 2020 강현구. All rights reserved.
//

import SwiftUI

struct add_price_list: View {
    
    @ObservedObject var priceList : PriceList
    @State var type: String = ""
    @State var price : String = ""
    
    var body: some View {
        Form {
            Section(header: Text("price detatils")) {
            DataInput(title: "Type", userinput: $type)
            DataInput(title:"Price", userinput: $price)
                
            }
            Button(action: addtype) {
                Text("Add Type")
            }
        }
    }
    func addtype() {
        let priceInt : Int = Int(self.price)!
        let newprice = Price(id: UUID(), type: type, price: priceInt, add: "")
        priceList.prices.append(newprice)
    
    }
}

struct DataInput : View {
    
    var title : String
    @Binding var userinput : String
    
    var body: some View {
        VStack(alignment: HorizontalAlignment.leading) {
            Text(title)
                .font(.headline)
            TextField("Enter \(title)", text: $userinput)
                .textFieldStyle(RoundedBorderTextFieldStyle())
        }
    .padding()
    }
}



struct add_price_list_Previews: PreviewProvider {
    static var previews: some View {
        add_price_list(priceList: PriceList())
    }
}

