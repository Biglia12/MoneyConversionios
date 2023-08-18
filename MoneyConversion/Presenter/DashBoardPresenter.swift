//
//  DashBoardPresenter.swift
//  MoneyConversion
//
//  Created by Ezequiel Biglia on 27/07/2023.
//

import Foundation

class DashBoardPresenter: DashBoardPresenterProtocol {
    
    private weak var view: DashBoardViewController?
    private let dataManager: DashBoardDataManager = DashBoardDataManager()
    
    var calculatorPresenter: CalculatorPresenter?
    
    init(view: DashBoardViewController) {
           self.view = view
       }
    
    
    func fetchData() {
        self.view?.showIndicatorView(show: true)
        dataManager.fetchData { apiData in DispatchQueue.main.async {
            if (apiData.isEmpty){
                self.view?.showError("No hay datos disponibles.")
                self.view?.showIndicatorView(show: false)
                } else{
                 self.view?.showData(apiData)
                 self.calculatorPresenter?.displaySharedData(apiData) // Compartir datos al      CalculatorPresenter
                 self.view?.showIndicatorView(show: false)
                }
            }
            
        }
        
       }
    
    func showIndicatorView(show: Bool) {
        self.view?.showIndicatorView(show: show)
    }
    
}
