//
//  TableTableViewController.swift
//  TableViewWithCollectionView
//
//  Created by Rahul Sharma on 15/03/20.
//  Copyright © 2020 3Embed. All rights reserved.
//

import UIKit

class TableTableViewController: UITableViewController {
    

    @IBOutlet private weak var tableV: UITableView!
    
    let name = Notification.Name("didReceiveData")

    override func viewDidLoad() {
        super.viewDidLoad()
        tableV.estimatedRowHeight = 45
        self.tableV.rowHeight = UITableView.automaticDimension
        NotificationCenter.default.addObserver(self, selector: #selector(onDidReceiveData(_:)), name: NSNotification.Name(rawValue: "didReceiveData"), object: nil)
    }
    
    @objc func onDidReceiveData(_ notification:Notification) {
        // Do something now
        tableV.reloadData()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        tableV.reloadData()
    }

    // MARK: - Table view data source
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
        
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TableViewCell
        cell.frame = tableView.bounds
        self.tableV.setNeedsLayout()
        self.tableV.layoutIfNeeded()
        return cell
    }
}
