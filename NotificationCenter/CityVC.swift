//
//  CityVC.swift
//  NotificationCenter
//
//  Created by mac on 18.02.2019.
//  Copyright © 2019 Oleg_Psiarovsky. All rights reserved.
//

import UIKit

class CityVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func odessaButton(_ sender: Any) {
        NotificationCenter.default.post(name: .odessa, object: nil)
        
        let alertController = UIAlertController(title: "Odessa", message: "City's name has changed to Odessa", preferredStyle: .alert)
        let alertOkAction = UIAlertAction(title: "Ok", style: .default, handler: nil)
        alertController.addAction(alertOkAction)
        present(alertController, animated: true, completion: nil)
        
    }
    
    @IBAction func kharkivButton(_ sender: Any) {
        NotificationCenter.default.post(name: .kharkiv, object: nil)
        
        let alertController = UIAlertController(title: "Kharkiv", message: "City's name has changed to Kharkiv", preferredStyle: .alert)
        let alertOkAction = UIAlertAction(title: "Ok", style: .default, handler: nil)
        alertController.addAction(alertOkAction)
        present(alertController, animated: true, completion: nil)
    }
    
}
