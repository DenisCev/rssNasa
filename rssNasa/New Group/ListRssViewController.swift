//
//  ListRssViewController.swift
//  rssNasa
//
//  Created by Pablo Vélez  on 27/11/2018.
//  Copyright (c) 2018 Denis. All rights reserved.
//
//  This file was generated by the 🐍 VIPER generator
//

import UIKit

final class ListRssViewController: UIViewController {

    // MARK: - Public properties -

    var presenter: ListRssPresenterInterface!
    @IBOutlet weak var tableView: UITableView!
    
    // MARK: - Lifecycle -

    override func viewDidLoad() {
        super.viewDidLoad()
        presenter.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
    }
	
}

// MARK: - Extensions -

extension ListRssViewController: ListRssViewInterface {
    func reloadData() {
        self.tableView.reloadData()
    }
    
}

extension ListRssViewController: UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return presenter.numberOfSections()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return presenter.numberOfItems(in: section)
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return presenter.cell(tableView: tableView, cellForRowAt: indexPath)
    }
    
}

extension ListRssViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        presenter.didSelectItem(at: indexPath)
    }
}

