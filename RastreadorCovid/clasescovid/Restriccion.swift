//
//  Restriccion.swift
//  RastreadorCovid
//
//  Created by Miguel Ángel Gragera García on 04/12/2020.
//  Copyright © 2020 Miguel Ángel Gragera García. All rights reserved.
//

import UIKit

class Restriccion: NSObject {
    var id : Int
    var descripcion: String
    var tipo : TipoRestriccion
    
    init(id: Int, descripcion:String, tipo:TipoRestriccion){
        self.id = id
        self.descripcion = descripcion
        self.tipo = tipo
    }
}
