//
//  ViewController.swift
//  MoneyConversion
//
//  Created by Ezequiel Biglia on 11/05/2023.
//

import UIKit

class DashBoardViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let tabBar = UITabBar.self
    var listCasaResponse = [CasaResponse]()
    
    @IBOutlet weak var table: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("init dashboard")
        ApiServices.sharedInstances.fetchData()
        
        tabBar.appearance().unselectedItemTintColor = UIColor.white //cambio de color del tabbar

        table.delegate = self
        table.dataSource = self
        table.bounces = false
        table.alwaysBounceVertical = false
        table.alwaysBounceHorizontal = false
        
        let list1 = CasaResponse(nombre:"jose1",email: "jose@mal")
        let list2 = CasaResponse(nombre:"jose2",email: "jose@mal")
        let list3 = CasaResponse(nombre:"jose3",email: "jose@mal")
        let list4 = CasaResponse(nombre:"jose4",email: "jose@mal")
    
        
        listCasaResponse.append(list1)
        listCasaResponse.append(list2)
        listCasaResponse.append(list3)
        listCasaResponse.append(list4)
        listCasaResponse.append(list4)
        listCasaResponse.append(list4)
        listCasaResponse.append(list4)
        listCasaResponse.append(list4)
        listCasaResponse.append(list4)
        listCasaResponse.append(list4)
        listCasaResponse.append(list4)
        listCasaResponse.append(list4)
        listCasaResponse.append(list4)
        listCasaResponse.append(list4)
        listCasaResponse.append(list4)
        listCasaResponse.append(list4)
        listCasaResponse.append(list4)
        listCasaResponse.append(list4)
        listCasaResponse.append(list4)
        listCasaResponse.append(list4)
        
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listCasaResponse.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = table.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        let list = listCasaResponse[indexPath.row]
        cell.textLabel?.text = list.nombre
        cell.detailTextLabel?.text = list.email
        cell.imageView?.image = UIImage(systemName: "person.crop.circle.fill")
        return cell
    }


}

