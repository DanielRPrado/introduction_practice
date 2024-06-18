//
//  ViewController.swift
//  practica1
//
//  Created by Alumno-020 on 21/03/24.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var btn1: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        btn1.backgroundColor = UIColor.red
    }


    @IBAction func btnclick(_ sender: UIButton) {
        
        if(sender.tag == 1)
        {
            btn1.setTitle("CAMBIO", for: .normal)
            btn1.isEnabled = false
            
            var mensaje = UIAlertController(title: "HAY GANADOR", message: "Jugador X es el ganador", preferredStyle: .alert)
            let continuar = UIAlertAction(title: "reiniciar juego", style: .default, handler: {
                click -> Void in
                // accion a realizar
                
                self.reiniciarJuego()
                
            })
            
            mensaje.addAction(continuar)
            self.present(mensaje, animated: true, completion: nil)
        }
        
    }
    
    func reiniciarJuego() -> Void{
        btn1.isEnabled = true
    }
    
}

