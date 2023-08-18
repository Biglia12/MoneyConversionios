//
//  CalculatorPresenter.swift
//  MoneyConversion
//
//  Created by Ezequiel Biglia on 08/08/2023.
//

import Foundation

class CalculatorPresenter: CalculatorPresenterProtocol {
    
    private var view: CalculatorViewController?
    
    init(view: CalculatorViewController) {
        self.view = view
    }
    
    func displaySharedData(_ data: [CasaResponseModel]) {
        self.view?.displaySharedData(data) // Mostrar los datos en CalculatorViewController
    }
    
}
