//
//  Poblacion.swift
//  RastreadorCovid
//
//  Created by Miguel Ángel Gragera García on 04/12/2020.
//  Copyright © 2020 Miguel Ángel Gragera García. All rights reserved.
//

    import UIKit
    import MapKit

class Poblacion: NSObject {

    var nombre: String
    var provincia:String
    var cp: String
    var coordenadas : CLLocationCoordinate2D
    //var imagen : UIImage
    //var url : URL
    
    init(nombre:String,provincia:String,cp:String,coordenadas:CLLocationCoordinate2D) {
        self.nombre = nombre
        self.cp = cp
        self.provincia = provincia
        self.coordenadas = coordenadas
    }
    //Inicializador de conveniencia, con el nombre y cp solo
    convenience init (nombre:String,cp:String){
        self.init(nombre:nombre,provincia:"",cp:cp,coordenadas : CLLocationCoordinate2D(latitude: 0.0, longitude: 0.0))
    }
}
