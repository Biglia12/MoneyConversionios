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
    
    let tabBar = UITabBar()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    

        print("viewDidLoad executed successfully")
        
        txtLabel.text = "TextDash"
        
    }


}

