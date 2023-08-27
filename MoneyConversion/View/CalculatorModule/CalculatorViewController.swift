//
//  CalculatorViewController.swift
//  MoneyConversion
//
//  Created by Ezequiel Biglia on 11/05/2023.
//

import UIKit

class CalculatorViewController: UIViewController, CalculatorViewProtocol {
    
    
    //@IBOutlet weak var txtLabelCalculator: UILabel!
    @IBOutlet weak var pickerOptions: UIPickerView!
    @IBOutlet weak var txtFieldCalculate: UITextField!
    @IBOutlet weak var btnCalculate: UIButton!
    var calculatorPresenter: CalculatorPresenter?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("calculatorView")

        calculatorPresenter = CalculatorPresenter(view: self)
        calculatorPresenter?.displaySharedData()
    
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
