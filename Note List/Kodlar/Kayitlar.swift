
//
//  Kayitlar.swift
//  Note List
//
//  Created by Mehmet Yazık on 30.09.2018.
//  Copyright © 2018 Mehmet Yazık. All rights reserved.
//

import Foundation

class Kayitlar
{
    var konu: String!
    var detay: String!
    var tarih: String!
    
    init() {
        self.konu = ""
        self.detay = ""
        self.tarih = ""
    }
    init(konu:String,detay:String,tarih:String) {
        self.konu = konu
        self.detay = detay
        self.tarih = tarih
    }
    
}
