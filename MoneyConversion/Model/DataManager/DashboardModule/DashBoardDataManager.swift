//
//  DashBoardDataManager.swift
//  MoneyConversion
//
//  Created by Ezequiel Biglia on 27/07/2023.
//

import Foundation
import Alamofire

class DashBoardDataManager: DashBoardModelProtocol {
    
    static let sharedInstances = DashBoardDataManager()
    private var list = [CasaResponseModel]()
    var presenter: DashBoardPresenterProtocol?
    
    func fetchData(handler: @escaping(_ apiData: [CasaResponseModel])->(Void) ){
        
        //presenter?.showIndicatorView(show: true)
        
        let url = Constants.baseURLdolarSi + Constants.endURLdolarSi
        //let url = "https://jsonplaceholder.typicode.com/posts/"
        
        AF.request(url, method: .get, parameters: nil, encoding: URLEncoding.default, headers: nil, interceptor: nil).response { responce in
            let statusCode = responce.response?.statusCode
            switch responce.result {
            case.success(let data):
                do{
                    //self.presenter?.showIndicatorView(show: false)
                    let jsondata = try JSONDecoder ().decode([CasaResponseModel].self, from: data!)
                    self.list = jsondata
                    
                    let filteredList = self.list.filter { element in
                        return element.casa.nombre != "Argentina" && element.casa.nombre != "Bitcoin"
                    }
                    self.list = filteredList
                    
                    handler(self.list)
                    print(self.list)
                }catch{
                    print("Error decoding JSON: \(error)")
                }
            case .failure(let error):
                //self.presenter?.showIndicatorView(show: false)
                print(error)
            }
        }
    }
    
}
