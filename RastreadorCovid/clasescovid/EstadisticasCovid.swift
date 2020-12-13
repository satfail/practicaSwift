//
//  EstadisticasCovid.swift
//  RastreadorCovid
//
//  Created by Miguel Ángel Gragera García on 04/12/2020.
//  Copyright © 2020 Miguel Ángel Gragera García. All rights reserved.
//

import UIKit

class EstadisticasCovid: NSObject {
    var casosTotales : Int
    var casosNuevos : Int
    var fallecidos : Int
    var hospitalizaciones : Int
    var uci : Int
    var provincia : String
    var fecha : Date
    init(casosTotales : Int, casosNuevos : Int, fallecidos : Int, hospitalizaciones : Int,
         uci : Int, provincia:String,fecha : Date){
        
        self.casosNuevos = casosNuevos
        self.casosTotales = casosTotales
        self.fallecidos = fallecidos
        self.hospitalizaciones = hospitalizaciones
        self.uci = uci
        self.provincia = provincia
        self.fecha = fecha
    }
    
    convenience init (provincia:String,fecha:Date,casosNuevos:Int){
        self.init(casosTotales:0,casosNuevos:casosNuevos ,fallecidos:0,hospitalizaciones :0 , uci : 0, provincia :provincia,fecha : fecha)
    }
    
}
