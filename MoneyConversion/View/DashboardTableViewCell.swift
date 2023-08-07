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
        
        sellValueLabel.text = casaResponse.casa.venta
        buyValueLabel.text = casaResponse.casa.compra
        variationValueLabel.text = casaResponse.casa.variacion
          
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
