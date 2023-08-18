//
//  CalculatorProtocol.swift
//  MoneyConversion
//
//  Created by Ezequiel Biglia on 08/08/2023.
//

import Foundation

// Protocolo para la vista (View)
protocol CalculatorViewProtocol {
    func displaySharedData(_ data: [CasaResponseModel])
}

// Protocolo para el presentador (Presenter)
protocol CalculatorPresenterProtocol {
    func displaySharedData(_ data: [CasaResponseModel])
}

// Protocolo para el modelo (Model)
protocol CalculatorModelProtocol {
    
}

