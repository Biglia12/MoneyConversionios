//
//  ApiServices.swift
//  MoneyConversion
//
//  Created by Ezequiel Biglia on 20/06/2023.
//

import Foundation
import Alamofire

//    @GET("/api/api.php?type=valoresprincipales"
//    .baseUrl("https://www.dolarsi.com/api/")
//https://www.dolarsi.com/api/api.php?type=valoresprincipales

class ApiServices {
    
    static let sharedInstances = ApiServices()
    
    private let baseURL = "https://www.dolarsi.com/api/"
    
    func fetchData(handler: @escaping(_ apiData: [CasaResponseModel])->(Void) ){
         
        let url = Constants.baseURLdolarSi + Constants.endURLdolarSi
        //let url = "https://jsonplaceholder.typicode.com/posts/"
        
        AF.request(url, method: .get, parameters: nil, encoding: URLEncoding.default, headers: nil, interceptor: nil).response { responce in
            let statusCode = responce.response?.statusCode
            switch responce.result {
            case.success(let data):
                do{
                    let jsondata = try JSONDecoder ().decode([CasaResponseModel].self, from: data!)
                    handler(jsondata)
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




