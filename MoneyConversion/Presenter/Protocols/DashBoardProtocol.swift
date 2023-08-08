//
//  DashBoardProtocol.swift
//  MoneyConversion
//
//  Created by Ezequiel Biglia on 07/08/2023.
//

import Foundation

// Protocolo para la vista (View)
protocol DashBoardViewProtocol {
    // Declaraciones de métodos y propiedades para la vista
    func showData(_ data: [CasaResponseModel])
    func showError(_ message: String)
    func showIndicatorView(show: Bool)
}

// Protocolo para el presentador (Presenter)
protocol DashBoardPresenterProtocol {
    // Declaraciones de métodos y propiedades para el presentador
    func fetchData()
    func showIndicatorView(show: Bool)
}

// Protocolo para el modelo (Model)
protocol DashBoardModelProtocol {
    // Declaraciones de métodos y propiedades para el modelo
    func fetchData(handler: @escaping (_ apiData: [CasaResponseModel]) -> Void)
    
}
