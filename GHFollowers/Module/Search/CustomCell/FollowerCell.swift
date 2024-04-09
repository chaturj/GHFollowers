//
//  FollowerCell.swift
//  GHFollowers
//
//  Created by alphansotech100 on 09/04/24.
//

import UIKit

class FollowerCell: UICollectionViewCell {
    static let reuseID = "FollowerCell"
    
    let avtarIamgeView = GFAvtarImageView(frame: .zero)
    let usernameLabel = GFTitleLabel(textAlignment: .center, fontSize: 16)
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func set(follower: Follower) {
        usernameLabel.text = follower.login
    }
    
    private func configure(){
        addSubview(avtarIamgeView)
        addSubview(usernameLabel)
        
        let padding: CGFloat = 8
        
        NSLayoutConstraint.activate([
            avtarIamgeView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: padding),
            avtarIamgeView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: padding),
            avtarIamgeView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -padding),
            avtarIamgeView.heightAnchor.constraint(equalTo: avtarIamgeView.widthAnchor),
            
            usernameLabel.topAnchor.constraint(equalTo: avtarIamgeView.topAnchor, constant: 12),
            usernameLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: padding),
            usernameLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -padding),
            usernameLabel.heightAnchor.constraint(equalToConstant: 20)
            
            
        ])
    }
}
