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
    
    func fetchData(){
         
        let url = baseURL + "api.php?type=valoresprincipales"
        //let url = "https://jsonplaceholder.typicode.com/posts/"
        
        AF.request(url, method: .get, parameters: nil, encoding: URLEncoding.default, headers: nil, interceptor: nil).response { responce in
            let statusCode = responce.response?.statusCode
            switch responce.result {
            case .success(let data):
                do{
                    let jsondata = try JSONDecoder ().decode([CasaResponseModel].self, from: data!)
                    print(jsondata)
                    let jsonDataEncoded = try JSONEncoder().encode(jsondata)
                    let jsonString = String(data: jsonDataEncoded, encoding: .utf8)
                    print(jsonString)
                }catch{
                    print("Error decoding JSON: \(error)")
                }
            case .failure(let error):
                print(error)
                
            }
        }
    }
    
}

struct CasaResponseModel1: Codable {
    let casa: CasaModel
}

struct CasaModel: Codable {
        let compra: String?
        let venta: String?
        let agencia: String?
        let nombre: String?
        let variacion: String?
        let ventaCero: String?
        let decimales: String?
}

struct Model: Codable {
    let userId: Int
    let id:Int
    let title:String
    let body:String
}


