//
//  SubscribeCell.swift
//  Bet Master Test
//
//  Created by Daniil on 5.08.22.
//

import UIKit

class SubscribeCell: UICollectionViewCell {
    
    static let reuseId = "SubscribeCell"
    
    let upgradeToPremiumLabel: UILabel = {
        let label = UILabel()
        
        label.font = UIFont.systemFont(ofSize: 18, weight: .heavy)
        label.text = "Upgrade to Premium"
        label.textColor = .systemRed
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    let descriptionLabel: UILabel = {
        let label = UILabel()
        
        label.font = UIFont.systemFont(ofSize: 15, weight: .medium)
        label.lineBreakMode = .byWordWrapping
        label.numberOfLines = 0
        label.text = """
        Go Premium and unlock more
        features now
        """
        label.textAlignment = .center
        label.textColor = .black
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    let subscribeButton: UIButton = {
        let button = UIButton()
        
        button.setTitle("Subscribe", for: .normal)
        button.setTitleColor(UIColor.niceWhite, for: .normal)
        button.backgroundColor = .systemRed
        button.layer.cornerRadius = 10
        button.translatesAutoresizingMaskIntoConstraints = false

        return button
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        addSubview(upgradeToPremiumLabel)
        addSubview(descriptionLabel)
        addSubview(subscribeButton)
        
        backgroundColor = .niceWhite
        
        upgradeToPremiumLabel.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        upgradeToPremiumLabel.topAnchor.constraint(equalTo: topAnchor, constant: 11).isActive = true
        
        descriptionLabel.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        descriptionLabel.topAnchor.constraint(equalTo: upgradeToPremiumLabel.topAnchor, constant: 30).isActive = true
        
        subscribeButton.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        subscribeButton.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -20).isActive = true
        subscribeButton.widthAnchor.constraint(equalToConstant: 150).isActive = true
        
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        self.layer.cornerRadius = 10
        
        self.clipsToBounds = true
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    
}
