//
//  ViewController.swift
//  NotificationCenter
//
//  Created by mac on 17.02.2019.
//  Copyright © 2019 Oleg_Psiarovsky. All rights reserved.
//

import UIKit

class ChooseDestinationVC: UIViewController {

    @IBOutlet weak var cityChosenLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        NotificationCenter.default.addObserver(self, selector: #selector(setToOdessa(notification:)), name: .odessa, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(setToKharkiv(notfication:)), name: .kharkiv, object: nil)
    }

    @objc func setToOdessa(notification: NSNotification) {
        cityChosenLabel.text = "Odessa"
    }
    @objc func setToKharkiv(notfication: NSNotification) {
        cityChosenLabel.text = "Kharkiv"
    }

}

extension Notification.Name {
    static let odessa = Notification.Name("odessa")
    static let kharkiv = Notification.Name("kharkiv")
}

