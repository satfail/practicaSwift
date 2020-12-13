//
//  ViewController.swift
//  RastreadorCovid
//
//  Created by Miguel Ángel Gragera García on 30/11/2020.
//  Copyright © 2020 Miguel Ángel Gragera García. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var txtfEmail: UITextField!
    
    @IBOutlet weak var btnLogin: UIButton!
    @IBOutlet weak var txtfPass: UITextField!
    var usuarios = Usuarios()
    var user :String!
    //Comprueba Login
    @IBAction func btnEntrarClick(_ sender: Any) {
        if(usuarios.login(email: txtfEmail.text!, password: txtfPass.text!)){
            //Gestion de alerta, pasamos el segue en el handler
            let alert = UIAlertController(title: "Bienvenido", message: "Acaba de loguear con  exito", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Continuar", style: .default, handler: { _ in
                self.performSegue(withIdentifier: "segueLogin", sender: nil)
            }))
        self.present(alert, animated: false)

        }else{
            let alert = UIAlertController(title: "Alerta!", message: "Error al hacer login", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Continuar", style: .cancel, handler: nil))
        self.present(alert, animated: false)
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let poblaciones = Poblaciones()
        poblaciones.loadPoblaciones()
        let datosCovid = EstadisticasGenerales()
        datosCovid.loadEstadisticas()
        
        
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {


        // Variable a mandar
        let emailSend = txtfEmail.text

        // Variable que instancia el controlador al que queremos mandar
        // la info, accedemos a su variable
        let destinationVC = segue.destination as! BienvenidoViewController
        destinationVC.email = emailSend
    }
    

}
    



