//
//  DashBoardViewController.swift
//  MoneyConversion
//
//  Created by Ezequiel Biglia on 11/05/2023.
//

import UIKit

class HistoricViewController: UIViewController {

    @IBOutlet weak var txtLabelHisto: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        txtLabelHisto.text = "history text"
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
