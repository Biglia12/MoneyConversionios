//
//  CalculatorPresenter.swift
//  MoneyConversion
//
//  Created by Ezequiel Biglia on 08/08/2023.
//

import Foundation

class CalculatorPresenter: CalculatorPresenterProtocol {
    
    private var view: CalculatorViewController?
    private var calculatorDataManager: CalculatorDataManager = CalculatorDataManager()
    
    init(view: CalculatorViewController) {
        self.view = view
    }
    
    func displaySharedData() {
       // self.view?.displaySharedData(data) // Mostrar los datos en CalculatorViewController
        calculatorDataManager.displaySharedData()
    }
    
}
