//
//  Price.swift
//  account balance
//
//  Created by 강현구 on 2020/08/09.
//  Copyright © 2020 강현구. All rights reserved.
//

import SwiftUI

struct Price : Identifiable {
    var id = UUID()
    var type : String
    var price : Int
    @State var add : String =  ""
}

