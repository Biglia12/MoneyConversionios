//
//  ViewController.swift
//  MoneyConversion
//
//  Created by Ezequiel Biglia on 11/05/2023.
//

import UIKit

class DashBoardViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let tabBar = UITabBar.self
    var listCasaResponse = [CasaResponseModel]()
    var listCasaResponse1 = [CasaResponse]()
    
    @IBOutlet weak var table: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("init dashboard")
        tabBar.appearance().unselectedItemTintColor = UIColor.white //cambio de color del tabbar
        
        table.delegate = self
        table.dataSource = self
        table.bounces = false
        table.alwaysBounceVertical = false
        table.alwaysBounceHorizontal = false

        ApiServices.sharedInstances.fetchData { apiData in
            self.listCasaResponse = apiData
            
            DispatchQueue.main.async {
                self.table.reloadData()
            }
        }
    
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listCasaResponse.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = table.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        let list = listCasaResponse[indexPath.row]
        cell.textLabel?.text = list.casa.compra
        cell.detailTextLabel?.text = list.casa.nombre
        cell.imageView?.image = UIImage(systemName: "person.crop.circle.fill")
        return cell
    }


}

