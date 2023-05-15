//
//  ViewController.swift
//  MoneyConversion
//
//  Created by Ezequiel Biglia on 11/05/2023.
//

import UIKit
//test
class DashBoardViewController: UIViewController {

    @IBOutlet weak var txtLabel: UILabel!
    
    //let tabBar: UITabBar = UITabBar()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Cambiar el color de la UITabBar
           //let tabBarColor = UIColor.red
        //self.tabBarController?.tabBar.barTintColor = UIColor.red
           
           // Establecer el color de los íconos no seleccionados
           //let unselectedColor = UIColor.red.withAlphaComponent(0.6)
          // self.tabBarController?.tabBar.unselectedItemTintColor = UIColor.red
        
        print("viewDidLoad executed successfully")
        
        txtLabel.text = "TextDash"
        
    }


}

