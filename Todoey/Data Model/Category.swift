//
//  Category.swift
//  Todoey
//
//  Created by Admin on 3/30/19.
//  Copyright © 2019 Admin. All rights reserved.
//

import Foundation
import RealmSwift

class Category: Object {
    @objc dynamic var name: String = ""
    let items = List<Item>()
}
