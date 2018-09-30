//
//  RealmObjects.swift
//  Note List
//
//  Created by Mehmet Yazık on 30.09.2018.
//  Copyright © 2018 Mehmet Yazık. All rights reserved.
//

import Foundation
import RealmSwift

class NoteDB: Object {
    @objc dynamic var baslik: String? = nil
    @objc dynamic var detay: String? = nil
    @objc dynamic var zaman: String? = nil
}

extension NoteDB
{
    func writeToRealm()  {
        try! uiRealm.write {
            uiRealm.add(self)
        }
    }
    
//    func getFromRealm()  {
//
//    }
}
