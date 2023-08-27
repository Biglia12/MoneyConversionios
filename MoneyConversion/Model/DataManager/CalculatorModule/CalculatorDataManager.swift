//
//  CalculatorDataManager.swift
//  MoneyConversion
//
//  Created by Ezequiel Biglia on 27/08/2023.
//

import Foundation

class CalculatorDataManager {
    
     func displaySharedData() {
        // self.view?.displaySharedData(data) // Mostrar los datos en CalculatorViewController
         let loadedList = UserDefaultsManagers.shared.loadList()
         print(loadedList as Any)
     }
    
}
