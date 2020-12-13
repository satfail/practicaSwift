//
//  Restricciones.swift
//  RastreadorCovid
//
//  Created by Miguel Ángel Gragera García on 04/12/2020.
//  Copyright © 2020 Miguel Ángel Gragera García. All rights reserved.
//

import UIKit

class Restricciones: NSObject {
    var lista = [Restriccion]()
    override init(){
        let restriccionToque = Restriccion(id:0,descripcion: "Toque queda",
                                           tipo: TipoRestriccion.ToqueQueda)
        let restriccionRest = Restriccion(id: 1, descripcion: "Restauracion",
                                          tipo: TipoRestriccion.Restauracion)
        lista.append(restriccionToque)
        lista.append(restriccionRest)
    }
    //Todo esto se cambia dependiendo del acceso a los datos que tengamos
    func loadRestricciones(){
        //MARK: TODO
        //leer csv
    }
    
    func idexOf(tipo:TipoRestriccion) -> Int{
        
        return lista.firstIndex(where: {$0.tipo == tipo})!
        
    }
    
    func find(tipo:TipoRestriccion)-> Restriccion{
        return lista.first(where: {$0.tipo == tipo})!
    }
    
    func count() -> Int{
        
        return lista.count
    }
}
