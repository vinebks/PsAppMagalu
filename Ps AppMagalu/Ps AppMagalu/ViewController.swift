//
//  ViewController.swift
//  Ps AppMagalu
//
//  Created by Usuário Convidado on 09/06/21.
//  Copyright © 2021 Usuário Convidado. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var leading: NSLayoutConstraint!
    @IBOutlet weak var trailing: NSLayoutConstraint!
    
    var menuOut = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

   
    @IBAction func menuTapped(_ sender: Any) {
        if menuOut == false    {
            
            
            trailing.constant = -150
            leading.constant = 150
            menuOut = true
            
        }else {
            leading.constant = 0
            trailing.constant = 0
            menuOut = false
           
        }
        
        UIView.animate(withDuration: 	0.2, delay: 0.0, options: .curveEaseIn, animations: {
            self.view.layoutIfNeeded()
        }) { (animationComplete) in
            print("The Animation is Complete")
        }
    }
    
    
    
}

