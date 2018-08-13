//
//  ViewController.swift
//  01-iamrich
//
//  Created by Francisco José del Pino Díaz on 8/8/18.
//  Copyright © 2018 Francisco José del Pino Díaz. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // Properties
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var imageViewDiamond: UIImageView!
    
    @IBOutlet weak var buttonPush: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        print("Hola que tal")
    }
    
    // Methods
    @IBAction func buttonPressed(_ sender: UIButton) {
        /*
        self.titleLabel.text = "He pulsado el botón"
        
        self.titleLabel.textColor = UIColor.green
        
        self.titleLabel.font = UIFont.systemFont(ofSize: 24.0)
        
        self.imageViewDiamond.image = UIImage(named: "diamondPurple")
        */
        
        let controller = UIAlertController(title: "I am Rich", message: """
                I am rich
                I deserve it.
                I am good,
                Healthy and successfull
                """, preferredStyle: .actionSheet)
            // """, preferredStyle: UIAlertController.Style.alert)
        
        let action = UIAlertAction(title: "Aceptar", style: .default) { (action) in
            print("He pulsado el botón de aceptar")
        }
        
        controller.addAction(action)
        
        let action1 = UIAlertAction(title: "Borrar", style: .destructive, handler: { (action) in
            print("He pulsado el botón borrar")
        })
        
        controller.addAction(action1)
        
        let action2 = UIAlertAction(title: "Cancelar", style: .cancel) { _ in
            print("He pulsado el botón cancelar")
        }
        
        controller.addAction(action2)
        
        self.show(controller, sender: nil)
    }
}

