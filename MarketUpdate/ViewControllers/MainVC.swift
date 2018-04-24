//
//  ViewController.swift
//  MarketUpdate
//
//  Created by Henrique Manfroi da Silveira on 21/04/2018.
//  Copyright © 2018 Henrique Manfroi da Silveira. All rights reserved.
//

import UIKit

// MARK: - Class

class MainVC: UpdaterViewController {

    // MARK: Constants
    let cell = "InstrumentCell"
    
    // MARK: Variables
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var indicatorMain: UIActivityIndicatorView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Register
        tableView.register(UINib(nibName: cell, bundle: nil), forCellReuseIdentifier: cell)
        
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    @IBAction func randomizeAction(_ sender: UIBarButtonItem) {
        InstrumentService.shared.load()
    }
    
    override func updateVC() {
        self.indicatorMain.isHidden = false
        indicatorMain.startAnimating()
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.3) {
            self.tableView.reloadData()
            self.indicatorMain.stopAnimating()
            self.indicatorMain.isHidden = true
        }
    }
}

// MARK: - TableView Delegates

extension MainVC: UITableViewDataSource,UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return InstrumentService.shared.instruments?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard
            let cell = tableView.dequeueReusableCell(withIdentifier: cell, for: indexPath) as? InstrumentCell,
            let instruments = InstrumentService.shared.instruments
        else {
            return UITableViewCell()
        }
        cell.configure(instrument: instruments[indexPath.row])
        return cell
    }
}
