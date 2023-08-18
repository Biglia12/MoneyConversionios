//
//  TableViewCellDashboardTableViewCell.swift
//  MoneyConversion
//
//  Created by Ezequiel Biglia on 07/08/2023.
//

import UIKit

class DashboardTableViewCell: UITableViewCell {


    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var sellTitleLabel: UILabel!
    @IBOutlet weak var buyTitleLabel: UILabel!
    @IBOutlet weak var variationTitleLabel: UILabel!
    @IBOutlet weak var imageDollar: UIImageView!
    
    @IBOutlet weak var sellValueLabel: UILabel!
    @IBOutlet weak var buyValueLabel: UILabel!
    @IBOutlet weak var variationValueLabel: UILabel!
    
    
    func configure(with casaResponse: CasaResponseModel) {
        titleLabel.text = casaResponse.casa.nombre
        sellTitleLabel.text = "Venta"
        buyTitleLabel.text = "Compra"
        variationTitleLabel.text = "Variación"
        
        //imageDollar.image = UIImage(systemName: "person.crop.circle.fill")
        
        if casaResponse.casa.nombre?.starts(with: "Bitcoin") == true {
            imageDollar.image = UIImage(named: "ic_bitcoin_small")
        }
        if casaResponse.casa.nombre?.starts(with: "Dolar") == true {
            imageDollar.image = UIImage(named: "ic_dollar_small")
        }
        
        
        if let ventaValue = casaResponse.casa.venta { //si, es hoirrible esto pero no tenemos manera ya que el servicio peude devolverno cualquier dato
            switch ventaValue {
            case .string(let ventaString):
                updateLabel(ventaString, label: sellValueLabel)
            case .empty: break
                // Manejar el caso de venta vacía si es necesario
            }
        }

        //updateLabel(casaResponse.casa.venta, label: sellValueLabel)
        updateLabel(casaResponse.casa.compra, label: buyValueLabel)
        updateLabel(casaResponse.casa.variacion, label: variationValueLabel)
    
      }
    
    func updateLabel(_ value: String?, label: UILabel) {
        if let value = value, !value.isEmpty {
            label.text = value
        } else {
            changeText(label: label)
        }
    }
    
    func changeText (label: UILabel) {
        label.text = "No hay datos"
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
