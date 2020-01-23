//
//  ViewController.swift
//  Clockwise
//
//  Created by user164187 on 1/23/20.
//  Copyright © 2020 Salvador gonzalez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var isClockwise = true
    var isPressedButton1 = true
    var isPressedButton2 = true
    var isPressedButton3 = true
    var isPressedButton4 = true
    
    // Declaro las variables de los botones
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button3: UIButton!
    @IBOutlet weak var button4: UIButton!
    
    // Declaro la variable del label que me va a decir si los colores cambian en sentido de las agujas del reloj, o en sentido contrario
    @IBOutlet weak var infoLabel: UILabel!
    
    // Funcion que cambia la direccion en la que cambian los colores
    
    @IBAction func changeDirection() {
        
        isClockwise.toggle()
        if isClockwise {
            infoLabel.text = "Go Clockwise"
        } else {
            infoLabel.text = "Go Anti-Clockwise"
        }
        
    }
    
    @IBAction func changeColor1() {
        
        if isPressedButton1 {
            if isClockwise {
                button2.backgroundColor = .systemRed
            } else {
                button4.backgroundColor = .systemYellow
            }
        } else {
            if isClockwise {
                button2.backgroundColor = .systemOrange
            } else {
                button4.backgroundColor = .systemPink
            }
            
        }
        
        isPressedButton1.toggle()
    }
    
    @IBAction func changeColor2() {
        
        if isPressedButton2 {
            if isClockwise {
                button3.backgroundColor = .systemTeal
            } else {
                button1.backgroundColor = .systemGreen
            }
        } else {
            if isClockwise {
                button3.backgroundColor = .systemPurple
            } else {
                button1.backgroundColor = .systemIndigo
            }
            
        }
        
        isPressedButton2.toggle()
    }
    
   
    @IBAction func changeColor3() {
        
        if isPressedButton3 {
            if isClockwise {
                button4.backgroundColor = .systemYellow
            } else {
                button2.backgroundColor = .systemRed
            }
               } else {
            if isClockwise {
                button4.backgroundColor = .systemPink
            } else {
                button2.backgroundColor = .systemOrange
            }
               }
               
            isPressedButton3.toggle()
    }
    
   
    @IBAction func changeColor4() {
        
        if isPressedButton4 {
            if isClockwise {
                button1.backgroundColor = .systemGreen
            } else {
                button3.backgroundColor = .systemTeal
            }
               } else {
            if isClockwise {
                button1.backgroundColor = .systemIndigo
            } else {
                button3.backgroundColor = .systemPurple
            }
               }
               
            isPressedButton4.toggle()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        if isClockwise {
            infoLabel.text = "Go Clockwise"
        } else {
            infoLabel.text = "Go Anti-Clockwise"
        }
    }


}

