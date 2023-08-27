//
//  UserDefaultsManager.swift
//  MoneyConversion
//
//  Created by Ezequiel Biglia on 27/08/2023.
//

import Foundation

class UserDefaultsManagers{
    
    static let shared = UserDefaultsManagers()
    
    private let defaults = UserDefaults.standard
    
    func saveList(_ list: [CasaResponseModel]) {
        // Aquí simplemente guardamos la lista en UserDefaults
        do {
                let encodedData = try JSONEncoder().encode(list)
                defaults.set(encodedData, forKey: "casa_response_list")
                defaults.synchronize()
            } catch {
                print("Error encoding list: \(error)")
            }
    }
    
    func loadList() -> [CasaResponseModel]? {
        if let encodedData = defaults.data(forKey: "casa_response_list") {
            do {
                let decodedList = try JSONDecoder().decode([CasaResponseModel].self, from: encodedData)
                return decodedList
            } catch {
                print("Error decoding list: \(error)")
            }
        }
        return nil
    }
}
