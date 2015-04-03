//
//  Presentacion.swift
//  Be_Ecologic
//
//  Created by Eric García on 18/03/15.
//  Copyright (c) 2015 Eric García. All rights reserved.
//

import Foundation
import CoreData

class Presentacion: NSManagedObject {

    @NSManaged var idEnvase: NSNumber
    @NSManaged var idMaterial: NSNumber
    @NSManaged var idPresentacion: NSNumber
    @NSManaged var envase: Envase
    @NSManaged var material: Material
    @NSManaged var productos: NSSet

}
