//
//  DatosCovidViewController.swift
//  RastreadorCovid
//
//  Created by Miguel Ángel Gragera García on 20/12/20.
//  Copyright © 2020 Miguel Ángel Gragera García. All rights reserved.
//

import UIKit

class DatosCovidViewController: UIViewController {

    @IBOutlet weak var fecha: UILabel!
    @IBOutlet weak var nCasos: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        let datosCiudad = datosCovid.find(nombre: "Badajoz")
        print(String(datosCiudad.fecha.description))
        
        nCasos.text = String(datosCiudad.casosNuevos)
        fecha.text = String(datosCiudad.fecha.description)
        
        
        
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
