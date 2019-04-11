//
//  ViewController.swift
//  UTSublets
//
//  Created by William X. on 4/11/19.
//  Copyright © 2019 Will Xu . All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var listingTable: UITableView!
    @IBOutlet weak var navbar: UINavigationBar!
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 15
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let identifer = "listingCellId"
        let cell = tableView.dequeueReusableCell(withIdentifier: identifer, for: indexPath)
        return cell
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.listingTable.dataSource = self
        self.listingTable.delegate = self
        self.listingTable.rowHeight = UITableView.automaticDimension
        self.listingTable.estimatedRowHeight = 120

        UIApplication.shared.statusBarView?.backgroundColor = UIColor(red: 191/255, green: 87/255, blue: 0, alpha: 1.00)
        navbar.barTintColor =  UIColor(red: 191/255, green: 87/255, blue: 0, alpha: 1.00)

    }
}


extension UIApplication {
    var statusBarView: UIView? {
        if responds(to: Selector(("statusBar"))) {
            return value(forKey: "statusBar") as? UIView
        }
        return nil
    }
}
