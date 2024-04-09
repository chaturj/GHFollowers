//
//  FavoriteListVC.swift
//  GHFollowers
//
//  Created by alphansotech100 on 05/04/24.
//

import UIKit

class FavoriteListVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(false, animated: true)
    }
}
