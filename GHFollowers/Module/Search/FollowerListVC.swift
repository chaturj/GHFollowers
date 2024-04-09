//
//  FollowerListVC.swift
//  GHFollowers
//
//  Created by alphansotech100 on 06/04/24.
//

import UIKit

class FollowerListVC: UIViewController {
    var username: String!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .systemBackground
        navigationController?.navigationBar.prefersLargeTitles = true
        
        NetworkManager.shared.getFollowers(for: username, page: 1) { followerResponse in
            switch followerResponse {
            case .success(let followers): 
                print("Followers count:\(followers.count)")
                print("Followers:\(followers)")
            case .failure( let error):
                self.presentGFAlertOnMainThread(title: "Bad Stuff Happen", message: error.rawValue, buttonTitle: "Ok")
            }
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(false, animated: true)
    }
}
