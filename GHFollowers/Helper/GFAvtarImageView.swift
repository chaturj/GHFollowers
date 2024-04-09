//
//  GFAvtarImageView.swift
//  GHFollowers
//
//  Created by alphansotech100 on 09/04/24.
//

import UIKit

class GFAvtarImageView: UIImageView {
    
    let placeHolderImage = UIImage(named: "avatar-placeholder")!
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configure(){
        layer.cornerRadius = 10
        clipsToBounds = true
        image = placeHolderImage
        translatesAutoresizingMaskIntoConstraints = false
    }
}
