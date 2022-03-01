//
//  ViewController.swift
//  SearchBarIssue
//
//  Created by Yan Cheng Cheok on 01/03/2022.
//

import UIKit

class ViewController: UIViewController {

    lazy var searchController = UISearchController(searchResultsController: ResultVC())
    
    func ResultVC() -> UIViewController {
        let resultVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "ResultVC") as UIViewController
        return resultVC
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        searchController.searchResultsUpdater = self
        searchController.obscuresBackgroundDuringPresentation = true
        searchController.searchBar.placeholder = "Search"
        searchController.searchBar.delegate = self
        navigationItem.searchController = searchController

    }
}


extension ViewController: UISearchBarDelegate {
}

extension ViewController: UISearchResultsUpdating {
    func updateSearchResults(for searchController: UISearchController) {

    }
}

