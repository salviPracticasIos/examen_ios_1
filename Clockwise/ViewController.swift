//
//  ViewController.swift
//  Clockwise
//
//  Created by user164187 on 1/23/20.
//  Copyright © 2020 Salvador gonzalez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // Declaro 5 variables que son Bool para utilizarlas a modo de interruptor, la primera la utilizo para saber si tengo que cambiar los colores en sentido de las qagujas del relij o en sentido contrario, las otras 4 las utilizo para saber cual de los dos colores que puede tener un boton va a cambiar
    var isClockwise = true
    var isOriginalColor1 = true
    var isOriginalColor2 = true
    var isOriginalColor3 = true
    var isOriginalColor4 = true
    
    // Uno los botones de la vista con el controlador
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button3: UIButton!
    @IBOutlet weak var button4: UIButton!
    
    // Declaro la variable del label que me va a decir si los colores cambian en sentido de las agujas del reloj, o en sentido contrario
    @IBOutlet weak var infoLabel: UILabel!
    
    // Funcion que cambia la direccion en la que cambian los colores
    @IBAction func changeDirection() {
        
        // cada vez que pulso el boton de Change direction, cambio el valor de la variable isClockwise
        isClockwise.toggle()
        
        // Segun el valor de la variable isClockwise cambio el texto de infoLabel
        if isClockwise {
            infoLabel.text = "Go Clockwise"
        } else {
            infoLabel.text = "Go Anti-Clockwise"
        }
        
    }
    
    // Uno cada boton de la vista con una funcion que se va a ejecutar cada vez que pulse el boton, los cuatros botones hacen lo mismo, lo unico en que se diferencian es a que boton le cambian el color, voy a explicar como funciona uno de los botones.
    
    // Cuando pulso el primer boton llamo a la funcion changeColor1
    @IBAction func changeColor1() {
        
        // Compruebo si debo cambiar los colores en sentido de las agujas del reloj
        if isClockwise {
            // En el caso de que tenga que cambiar los colores en sentido de las agujas del reloj, compruebo si el siguiente boton tiene el color que tenia originalmente o el nuevo color
            if isOriginalColor2 {
                // Si tiene el color original, se lo cambio al nuevo color que le quiera dar
                button2.backgroundColor = .systemRed
            } else {
                // En el caso de que no tenga el color original, le cambio el color al original
               button2.backgroundColor = .systemOrange
            }
            // Cambio el estado de la variable isOriginalColor para marcar si el boton tiene el color original o el nuevo color
            isOriginalColor2.toggle()
        } else  {
            // En el caso de que tenga que cambiar los colores en sentido contrario al de las agujas del reloj, hago lo mismo, pero con el boton anterior
            if isOriginalColor4 {
                button4.backgroundColor = .systemYellow
            } else {
                button4.backgroundColor = .systemPink
            }
            
            isOriginalColor4.toggle()
        }
        
    }
    
    @IBAction func changeColor2() {
        
        if isClockwise {
            if isOriginalColor3 {
                button3.backgroundColor = .systemTeal
            } else {
                button3.backgroundColor = .systemPurple
            }
            
            isOriginalColor3.toggle()
        } else {
            if isOriginalColor1 {
                button1.backgroundColor = .systemGreen
            } else {
                button1.backgroundColor = .systemIndigo
            }
            
            isOriginalColor1.toggle()
        }

    }
    
   
    @IBAction func changeColor3() {
        
        if isClockwise {
            if isOriginalColor4 {
                button4.backgroundColor = .systemYellow
            } else {
                button4.backgroundColor = .systemPink
            }
            
            isOriginalColor4.toggle()
               } else {
            if isOriginalColor2 {
                button2.backgroundColor = .systemRed
            } else {
                button2.backgroundColor = .systemOrange
            }
            
            isOriginalColor2.toggle()
               }
    }
    
   
    @IBAction func changeColor4() {
        
        if isClockwise {
            if isOriginalColor1 {
                button1.backgroundColor = .systemGreen
            } else {
                button1.backgroundColor = .systemIndigo
            }
            
            isOriginalColor1.toggle()
               } else {
            if isOriginalColor3 {
                button3.backgroundColor = .systemTeal
            } else {
                button3.backgroundColor = .systemPurple
            }
            
            isOriginalColor3.toggle()
               }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Cuando carga la vista cambio el texto de la variable infoLabel segun la variable isClockwise
        if isClockwise {
            infoLabel.text = "Go Clockwise"
        } else {
            infoLabel.text = "Go Anti-Clockwise"
        }
    }


}

