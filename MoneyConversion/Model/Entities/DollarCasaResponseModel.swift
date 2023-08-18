//
//  DollarCasaResponseModel.swift
//  MoneyConversion
//
//  Created by Ezequiel Biglia on 20/06/2023.
//

import Foundation

struct DollarCasaResponseModel: Codable {
        let compra: String?
        let venta: VentaValue?
        let agencia: String?
        let nombre: String?
        let variacion: String?
        let ventaCero: String?
        let decimales: String?
}

enum VentaValue: Codable {//si, es hoirrible esto pero no tenemos manera ya que el servicio peude devolverno cualquier dato
    case string(String)
    case empty

    init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        if let stringValue = try? container.decode(String.self) {
            self = .string(stringValue)
        } else {
            self = .empty
        }
    }

    func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        switch self {
        case .string(let value):
            try container.encode(value)
        case .empty:
            try container.encodeNil()
        }
    }
}
