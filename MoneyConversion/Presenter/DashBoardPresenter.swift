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
    
    init(view: DashBoardViewController) {
           self.view = view
       }
    
    
    func fetchData() {
        dataManager.fetchData { apiData in DispatchQueue.main.async {
                if (apiData.isEmpty){
                    self.view?.showError("No hay datos disponibles.")
                } else{
                    self.view?.showData(apiData)
                }
            }
            
        }
        
       }
    
}
