//
//  DollarCasaResponseModel.swift
//  MoneyConversion
//
//  Created by Ezequiel Biglia on 20/06/2023.
//

import Foundation

struct DollarCasaResponseModel: Codable {
        let compra: String?
        let venta: String?
        let agencia: String?
        let nombre: String?
        let variacion: String?
        let ventaCero: String?
        let decimales: String?
}
