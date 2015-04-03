//
//  Material.swift
//  Be_Ecologic
//
//  Created by Eric García on 18/03/15.
//  Copyright (c) 2015 Eric García. All rights reserved.
//

import Foundation
import CoreData

class Material: NSManagedObject {

    @NSManaged var idMaterial: NSNumber
    @NSManaged var nombre: String
    @NSManaged var presentaciones: NSSet

}
