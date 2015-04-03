//
//  Producto.swift
//  Be_Ecologic
//
//  Created by Eric García on 25/03/15.
//  Copyright (c) 2015 Eric García. All rights reserved.
//

import Foundation
import CoreData

class Producto: NSManagedObject {

    @NSManaged var idProducto: NSNumber
    @NSManaged var nombre: String
    @NSManaged var imagenData: NSData
    @NSManaged var presentacion: Presentacion

}
