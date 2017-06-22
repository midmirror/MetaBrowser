//
//  RootNavigationController.swift
//  MetaBrowser
//
//  Created by midmirror on 17/6/22.
//  Copyright © 2017年 midmirror. All rights reserved.
//

import UIKit

class RootNavigationController: UINavigationController {
    
    var searchBar = UISearchBar.init()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        searchBar.frame = CGRect.init(x: 0, y: 0, width: ScreenWidth-40, height: 44)
        searchBar.placeholder = "搜索或输入网址"
        searchBar.delegate = self
        searchBar.showsCancelButton = true
        
        let searchView = UIView.init(frame: searchBar.frame)
        searchView.backgroundColor = .cyan
        searchView.addSubview(searchBar)
        
        navigationItem.titleView = searchView
    }
}

extension RootNavigationController: UISearchBarDelegate {
    
    func searchBarCancelButtonClicked(_ searchBar: UISearchBar) {
        
    }
    
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        
    }
}
