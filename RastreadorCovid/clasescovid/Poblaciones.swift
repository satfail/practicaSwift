//
//  Poblaciones.swift
//  RastreadorCovid
//
//  Created by Miguel Ángel Gragera García on 04/12/2020.
//  Copyright © 2020 Miguel Ángel Gragera García. All rights reserved.
//

import UIKit
import MapKit
import CSVImporter



class Poblaciones: NSObject {
    var lista = [Poblacion]()
    
    override init(){
        //Cargar fichero csv con poblaciones, poblacion provincia cp y coord
        /*
        let almendralejo = Poblacion(nombre: "Almendralejo",provincia: "Badajoz",cp: "06200", coordenadas : CLLocationCoordinate2D(latitude:38.683, longitude: -6.407 ));
        let montijo = Poblacion(nombre: "Montijo", provincia: "Caceres",cp: "06200", coordenadas : CLLocationCoordinate2D(latitude:38.683, longitude: -6.407 ));
        lista.append(almendralejo)
        lista.append(montijo)
        */
        
        
    }
    
    func loadPoblaciones(){
        //MARK: TODO
        // Meter el codigo postal a cada ciudad
        
        guard let filepath = Bundle.main.path(forResource:"municipios_final", ofType: "csv")else{return}
        
        let importer = CSVImporter<[String: String]>(path: filepath,delimiter: ";")
        importer.startImportingRecords(structure: { (headerValues) -> Void in

            print(headerValues) // => ["firstName", "lastName"]

        }) { $0 }.onFinish { importedRecords in

            for record in importedRecords {
                
                /*
                print(record) // => e.g. ["firstName": "Harry", "lastName": "Potter"]
                print(record["Comunidad"] as Any)
                print(record["Provincia"] as Any)
                */
                
                let nombre = record["poblacion"]! as String
                let provincia = record["provincia"]! as String
                let lat = (record["lat"]! as NSString).doubleValue
                let lon = (record["lon"]! as NSString).doubleValue
                let cp = record["codigopostal"]! as String
                
                let poblacion = Poblacion(nombre: nombre, provincia: provincia, cp: cp, coordenadas:CLLocationCoordinate2D(latitude: lat, longitude: lon) )
                
                self.lista.append(poblacion)
 
            }
            print(self.lista.count)

        }
    }
    
    func idexOf(cp:String) -> Int{
        
        return lista.firstIndex(where: {$0.cp == cp})!
        
    }
    
    func find(cp:String)-> Poblacion{
        return lista.first(where: {$0.cp == cp})!
    }
    
    func findByProv(provincia:String)-> [Poblacion]{
        var municipiosByProv = [Poblacion]()
        
        for poblacion in lista
        {
            if provincia == poblacion.provincia {
                print("Found \(poblacion.nombre) in \(provincia)")
                municipiosByProv.append(poblacion)
            }
        }
        return municipiosByProv
    }
    
    func count() -> Int{
        return lista.count
    }
}
