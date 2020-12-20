//
//  EstadisticasGenerales.swift
//  RastreadorCovid
//
//  Created by Miguel Ángel Gragera García on 04/12/2020.
//  Copyright © 2020 Miguel Ángel Gragera García. All rights reserved.
//

import UIKit
import MapKit
import CSVImporter

class EstadisticasGenerales: NSObject {
    var lista = [EstadisticasCovid]()
    override init() {
        //Cargar desde Fichero
        
        /*
        let badajoz = EstadisticasCovid(casosTotales: 27155, casosNuevos: 243, fallecidos: 874, hospitalizaciones: 3020, uci: 251, provincia: "Badajoz")
        let caceres = EstadisticasCovid(casosTotales: 29155, casosNuevos: 343, fallecidos: 924, hospitalizaciones: 4020, uci: 231, provincia: "Caceres")
        lista.append(badajoz)
        lista.append(caceres)
        */
    }
    
    func loadEstadisticas(){
        //MARK: TODO
        guard let filepath = Bundle.main.path(forResource:"datos_covid_provincia", ofType: "csv")else{return}
               
        let importer = CSVImporter<[String: String]>(path: filepath,delimiter: ",")
            importer.startImportingRecords(structure: { (headerValues) -> Void in

                print(headerValues) // => ["firstName", "lastName"]

            }) { $0 }.onFinish { importedRecords in

        for record in importedRecords {
                       
                       
            let provincia = record["provincia"]! as String
            let casosNuevos = (record["num_casos"]! as NSString).intValue
            let fecha = (record["fecha"]! as String)
            
            
            let dateFormatter = DateFormatter()
            dateFormatter.locale = Locale(identifier: "en_US_POSIX") //
            dateFormatter.dateFormat = "yyyy-MM-dd"
            let date = dateFormatter.date(from:fecha)!
            
            
            let datos = EstadisticasCovid(provincia: provincia, fecha:date, casosNuevos: Int(casosNuevos))
                       
            self.lista.append(datos)
        
            }
                   print(self.lista.count)

               }
        
    }
    
    
    //Buscador con closures

    func idexOf(nombre:String) -> Int{
        
        return lista.firstIndex(where: {$0.provincia == nombre})!
        
    }
    
    func find(nombre:String)-> EstadisticasCovid{
        return lista.last(where: {$0.provincia == nombre})!
    }
    
    
    func count() -> Int{
        return lista.count
    }
}
