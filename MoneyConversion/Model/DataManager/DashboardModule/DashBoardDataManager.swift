//
//  DashBoardDataManager.swift
//  MoneyConversion
//
//  Created by Ezequiel Biglia on 27/07/2023.
//

import Foundation
import Alamofire

class DashBoardDataManager {
    
    static let sharedInstances = DashBoardDataManager()
    private var list = [CasaResponseModel]()
    func fetchData(handler: @escaping(_ apiData: [CasaResponseModel])->(Void) ){
         
        let url = Constants.baseURLdolarSi + Constants.endURLdolarSi
        //let url = "https://jsonplaceholder.typicode.com/posts/"
        
        AF.request(url, method: .get, parameters: nil, encoding: URLEncoding.default, headers: nil, interceptor: nil).response { responce in
            let statusCode = responce.response?.statusCode
            switch responce.result {
            case.success(let data):
                do{
                    let jsondata = try JSONDecoder ().decode([CasaResponseModel].self, from: data!)
                    self.list = jsondata
                    //for item in self.list {
                      //  if item.casa.nombre
                    //}
                    handler(self.list)
                    print(jsondata)
                }catch{
                    print("Error decoding JSON: \(error)")
                }
            case .failure(let error):
                print(error)
            }
        }
    }
    
}
