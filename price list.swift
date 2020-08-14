//
//  price list.swift
//  account balance
//
//  Created by 강현구 on 2020/08/07.
//  Copyright © 2020 강현구. All rights reserved.
//

import SwiftUI
import Combine

class price_list: ObservableObject {
    
    @Published var price : String = []
        
    init (price : String = []) {
        self.price = price
    }
}
