//
//  PriceLst.swift
//  account balance
//
//  Created by 강현구 on 2020/08/09.
//  Copyright © 2020 강현구. All rights reserved.
//

import SwiftUI
import Combine

class PriceList : ObservableObject {
    @Published var prices : [Price] = []
}

